package org.fao.fir.cgrfa.pdf.parser.objects;

import lombok.Data;

public @Data class PDFField {
	private String name;
	private String value;
	private String valueOpt;
	public String getValueOpt() {
		return valueOpt;
	}
	public void setValueOpt(String valueOpt) {
		this.valueOpt = valueOpt;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
