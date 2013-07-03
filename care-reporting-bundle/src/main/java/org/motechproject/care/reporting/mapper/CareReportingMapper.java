package org.motechproject.care.reporting.mapper;


import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtilsBean;
import org.apache.commons.beanutils.converters.BigDecimalConverter;
import org.apache.commons.beanutils.converters.BooleanConverter;
import org.apache.commons.beanutils.converters.IntegerConverter;
import org.apache.commons.beanutils.converters.ShortConverter;
import org.motechproject.care.reporting.converter.ChildCaseConverter;
import org.motechproject.care.reporting.converter.FlwConverter;
import org.motechproject.care.reporting.converter.FlwGroupConverter;
import org.motechproject.care.reporting.converter.MotherCaseConverter;
import org.motechproject.care.reporting.domain.dimension.ChildCase;
import org.motechproject.care.reporting.domain.dimension.Flw;
import org.motechproject.care.reporting.domain.dimension.FlwGroup;
import org.motechproject.care.reporting.domain.dimension.MotherCase;
import org.motechproject.care.reporting.service.Service;
import org.motechproject.care.reporting.utils.CareDateConverter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

public class CareReportingMapper {
    private static final Logger logger = LoggerFactory.getLogger("commcare-reporting-mapper");
    private BeanUtilsBean beanUtilsBean;

    public CareReportingMapper(Service careService) {
        beanUtilsBean = BeanUtilsBean.getInstance();
        ConvertUtilsBean convertUtils = beanUtilsBean.getConvertUtils();

        convertUtils.register(new CareDateConverter(), Date.class);
        convertUtils.register(new IntegerConverter(null), Integer.class);
        convertUtils.register(new ShortConverter(null), Short.class);
        convertUtils.register(new BooleanConverter(null), Boolean.class);
        convertUtils.register(new BigDecimalConverter(null), BigDecimal.class);

        convertUtils.register(new FlwConverter(careService), Flw.class);
        convertUtils.register(new FlwGroupConverter(careService), FlwGroup.class);
        convertUtils.register(new MotherCaseConverter(careService), MotherCase.class);
        convertUtils.register(new ChildCaseConverter(careService), ChildCase.class);
    }

    public <T, U> T map(Class<T> type, Map<String, U> keyStore) {
        T newInstance;
        try {
            newInstance = type.newInstance();
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }

        return map(newInstance, keyStore);
    }

    public <T, U> T map(T typeInstance, Map<String, U> keyStore) {
        for (Map.Entry<String, U> field : keyStore.entrySet()) {
            String key = field.getKey();
            U value = field.getValue();

            set(typeInstance, key, value);
        }

        return typeInstance;
    }

    private void set(Object object, String fieldName, Object fieldValue) {
        try {
            beanUtilsBean.setProperty(object, fieldName, fieldValue);
        } catch (Exception ex) {
            logger.warn("Exception when setting " + fieldValue + " to " + fieldName + " Exception Details: " + ex);
        }
    }
}