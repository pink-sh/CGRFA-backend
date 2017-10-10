package org.fao.fir.cgrfa.objects.json;

import java.util.Date;

import lombok.Data;

@Data
public class SurveyList {
	private Integer id;
	private String originalPDF;
	private String logFile;
	private Country country;
	private String preparedBy;
	private Date date;
	private Integer overallStatus;
	private Integer rejected;
	private Integer underRevision;
	private Integer accepted;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOriginalPDF() {
		return originalPDF;
	}
	public void setOriginalPDF(String originalPDF) {
		this.originalPDF = originalPDF;
	}
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	public String getPreparedBy() {
		return preparedBy;
	}
	public void setPreparedBy(String preparedBy) {
		this.preparedBy = preparedBy;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getOverallStatus() {
		return overallStatus;
	}
	public void setOverallStatus(Integer overallStatus) {
		this.overallStatus = overallStatus;
	}
	public Integer getRejected() {
		return rejected;
	}
	public void setRejected(Integer rejected) {
		this.rejected = rejected;
	}
	public Integer getUnderRevision() {
		return underRevision;
	}
	public void setUnderRevision(Integer underRevision) {
		this.underRevision = underRevision;
	}
	public Integer getAccepted() {
		return accepted;
	}
	public void setAccepted(Integer accepted) {
		this.accepted = accepted;
	}
	public String getLogFile() {
		return logFile;
	}
	public void setLogFile(String logFile) {
		this.logFile = logFile;
	}
}
