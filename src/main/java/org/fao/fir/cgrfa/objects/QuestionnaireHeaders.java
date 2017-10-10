package org.fao.fir.cgrfa.objects;

import lombok.Data;

import org.fao.fir.cgrfa.dao.mapper.model.Countries;

@Data
public class QuestionnaireHeaders {
	private Countries country;
	private String date;
	private String preparedBy;
	public Countries getCountry() {
		return country;
	}
	public void setCountry(Countries country) {
		this.country = country;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPreparedBy() {
		return preparedBy;
	}
	public void setPreparedBy(String preparedBy) {
		this.preparedBy = preparedBy;
	}
}
