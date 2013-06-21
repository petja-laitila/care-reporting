package org.motechproject.care.reporting.migration.util;

import org.apache.commons.httpclient.*;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.methods.GetMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Properties;

@Component
public class CommcareAPIHttpClient {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    private HttpClient httpClient;
    private final Properties commcareProperties;

    @Autowired
    public CommcareAPIHttpClient(@Qualifier("commcareHttpClient") HttpClient httpClient, @Qualifier("commcareProperties") Properties commcareProperties) {
        this.httpClient = httpClient;
        this.commcareProperties = commcareProperties;
        authenticate();
    }

    public String fetchForm(String formId) {
        String jsonResponse = getRequest(commcareFormUrl(formId), null);
        return CommcareDataConverter.toFormXml(jsonResponse);
    }

    public List<String> fetchCase(String caseId) {
        String jsonResponse = getRequest(commcareCaseUrl(caseId), null);
        return CommcareDataConverter.toCaseXml(jsonResponse);
    }

    private HttpMethod buildRequest(String url, NameValuePair[] queryParams) {
        HttpMethod requestMethod = new GetMethod(url);

        if (queryParams != null) {
            requestMethod.setQueryString(queryParams);
        }

        return requestMethod;
    }

    private String getRequest(String requestUrl, NameValuePair[] queryParams) {

        HttpMethod getMethod = buildRequest(requestUrl, queryParams);

        try {
            httpClient.executeMethod(getMethod);
            InputStream responseStream = getMethod.getResponseBodyAsStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(responseStream));
            StringBuffer sb = new StringBuffer();
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                sb.append(line);
            }
            return sb.toString();
        } catch (HttpException e) {
            logger.error("HttpException while sending request to CommCare: " + e.getMessage());
            throw new RuntimeException(e);
        } catch (IOException e) {
            logger.error("IOException while sending request to CommCare: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }

    private void authenticate() {
        httpClient.getParams().setAuthenticationPreemptive(true);

        httpClient.getState().setCredentials(
                new AuthScope(null, -1, null, null),
                new UsernamePasswordCredentials(getUsername(), getPassword()));
    }

    private String commcareFormUrl(String formId) {
        return String.format("%s/%s/api/v0.3/form/%s/?format=json", getCommcareBaseUrl(), getCommcareDomain(), formId);
    }

    private String commcareCaseUrl(String caseId) {
        return String.format("%s/%s/api/%s/case/%s/?format=json", getCommcareBaseUrl(), getCommcareDomain(), getVersion(), caseId);
    }

    private String getCommcareBaseUrl() {
        String commcareBaseUrl = getBaseUrl();

        if (commcareBaseUrl.endsWith("/")) {
            commcareBaseUrl = commcareBaseUrl.substring(0, commcareBaseUrl.length() - 1);
        }

        return commcareBaseUrl;
    }

    private String getBaseUrl() {
        return commcareProperties.getProperty("commcareBaseUrl");
    }

    private String getCommcareDomain() {
        return commcareProperties.getProperty("commcareDomain");
    }

    private String getUsername() {
        return commcareProperties.getProperty("username");
    }

    private String getPassword() {
        return commcareProperties.getProperty("password");
    }

    private String getVersion() {
        return commcareProperties.getProperty("apiVersion");
    }
}