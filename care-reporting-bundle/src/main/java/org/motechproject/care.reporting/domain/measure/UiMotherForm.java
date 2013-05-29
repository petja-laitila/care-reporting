package org.motechproject.care.reporting.domain.measure;

// Generated May 16, 2013 2:49:27 PM by Hibernate Tools 3.4.0.CR1

import org.motechproject.care.reporting.domain.dimension.Flw;
import org.motechproject.care.reporting.domain.dimension.MotherCase;

import javax.persistence.*;
import java.util.Date;

/**
 * UiMotherForm generated by hbm2java
 */
@Entity
@Table(name = "ui_mother_form", uniqueConstraints = @UniqueConstraint(columnNames = "form_id"))
public class UiMotherForm implements java.io.Serializable {

	private int id;
	private MotherCase motherCase;
	private Flw flw;
	private String formId;
	private Date timeend;
	private Date timestart;
	private Date dateModified;
	private Integer children;
	private Boolean detailsAvailable;
	private Date tt1Date;
	private Date tt2Date;
	private Date ttBoosterDate;
	private Boolean receivedTt1;
	private Boolean receivedTt2;
	private String upToDate;
	private Short numChildren;
	private Boolean updateMother;

	public UiMotherForm() {
	}

	public UiMotherForm(int id) {
		this.id = id;
	}

	public UiMotherForm(int id, MotherCase motherCase, Flw flw, String formId,
			Date timeend, Date timestart, Date dateModified, Integer children,
			Boolean detailsAvailable, Date tt1Date, Date tt2Date,
			Date ttBoosterDate, Boolean receivedTt1, Boolean receivedTt2,
			String upToDate, Short numChildren, Boolean updateMother) {
		this.id = id;
		this.motherCase = motherCase;
		this.flw = flw;
		this.formId = formId;
		this.timeend = timeend;
		this.timestart = timestart;
		this.dateModified = dateModified;
		this.children = children;
		this.detailsAvailable = detailsAvailable;
		this.tt1Date = tt1Date;
		this.tt2Date = tt2Date;
		this.ttBoosterDate = ttBoosterDate;
		this.receivedTt1 = receivedTt1;
		this.receivedTt2 = receivedTt2;
		this.upToDate = upToDate;
		this.numChildren = numChildren;
		this.updateMother = updateMother;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "case_id")
	public MotherCase getMotherCase() {
		return this.motherCase;
	}

	public void setMotherCase(MotherCase motherCase) {
		this.motherCase = motherCase;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userid")
	public Flw getFlw() {
		return this.flw;
	}

	public void setFlw(Flw flw) {
		this.flw = flw;
	}

	@Column(name = "form_id", unique = true, length = 36)
	public String getFormId() {
		return this.formId;
	}

	public void setFormId(String formId) {
		this.formId = formId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "timeend", length = 35)
	public Date getTimeend() {
		return this.timeend;
	}

	public void setTimeend(Date timeend) {
		this.timeend = timeend;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "timestart", length = 35)
	public Date getTimestart() {
		return this.timestart;
	}

	public void setTimestart(Date timestart) {
		this.timestart = timestart;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date_modified", length = 35)
	public Date getDateModified() {
		return this.dateModified;
	}

	public void setDateModified(Date dateModified) {
		this.dateModified = dateModified;
	}

	@Column(name = "children")
	public Integer getChildren() {
		return this.children;
	}

	public void setChildren(Integer children) {
		this.children = children;
	}

	@Column(name = "details_available")
	public Boolean getDetailsAvailable() {
		return this.detailsAvailable;
	}

	public void setDetailsAvailable(Boolean detailsAvailable) {
		this.detailsAvailable = detailsAvailable;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "tt_1_date", length = 13)
	public Date getTt1Date() {
		return this.tt1Date;
	}

	public void setTt1Date(Date tt1Date) {
		this.tt1Date = tt1Date;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "tt_2_date", length = 13)
	public Date getTt2Date() {
		return this.tt2Date;
	}

	public void setTt2Date(Date tt2Date) {
		this.tt2Date = tt2Date;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "tt_booster_date", length = 13)
	public Date getTtBoosterDate() {
		return this.ttBoosterDate;
	}

	public void setTtBoosterDate(Date ttBoosterDate) {
		this.ttBoosterDate = ttBoosterDate;
	}

	@Column(name = "received_tt1")
	public Boolean getReceivedTt1() {
		return this.receivedTt1;
	}

	public void setReceivedTt1(Boolean receivedTt1) {
		this.receivedTt1 = receivedTt1;
	}

	@Column(name = "received_tt2")
	public Boolean getReceivedTt2() {
		return this.receivedTt2;
	}

	public void setReceivedTt2(Boolean receivedTt2) {
		this.receivedTt2 = receivedTt2;
	}

	@Column(name = "up_to_date", length = 15)
	public String getUpToDate() {
		return this.upToDate;
	}

	public void setUpToDate(String upToDate) {
		this.upToDate = upToDate;
	}

	@Column(name = "num_children")
	public Short getNumChildren() {
		return this.numChildren;
	}

	public void setNumChildren(Short numChildren) {
		this.numChildren = numChildren;
	}

	@Column(name = "update_mother")
	public Boolean getUpdateMother() {
		return this.updateMother;
	}

	public void setUpdateMother(Boolean updateMother) {
		this.updateMother = updateMother;
	}

}