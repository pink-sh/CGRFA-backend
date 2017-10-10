package org.fao.fir.cgrfa.objects.json;

import lombok.Data;

@Data
public class Answer {
	private String id;
	private String value;
	private String value_opt;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getValue_opt() {
		return value_opt;
	}
	public void setValue_opt(String value_opt) {
		this.value_opt = value_opt;
	}
}
