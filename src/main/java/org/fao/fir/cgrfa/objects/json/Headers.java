package org.fao.fir.cgrfa.objects.json;

import java.util.Date;

import lombok.Data;

@Data
public class Headers {
	private Country country;
	private Date date;
	private String preparedBy;
	public Country getCountry() {
		return country;
	}
	public void setCountry(Country country) {
		this.country = country;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPreparedBy() {
		return preparedBy;
	}
	public void setPreparedBy(String preparedBy) {
		this.preparedBy = preparedBy;
	}
}
