package org.fao.fir.cgrfa.objects;

import lombok.Data;

@Data
public class Field {
	
	private int controlledList;
	private int type;
	private String type_name;
	private String name;
	private String text_e;
	private String text_f;
	private String text_s;
	private String text_c;
	private String text_a;
	private String text_r;
	private String value;
	private String value_opt;
	private String htmlId;
	private String default_value;
	public int getControlledList() {
		return controlledList;
	}
	public void setControlledList(int controlledList) {
		this.controlledList = controlledList;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText_e() {
		return text_e;
	}
	public void setText_e(String text_e) {
		this.text_e = text_e;
	}
	public String getText_f() {
		return text_f;
	}
	public void setText_f(String text_f) {
		this.text_f = text_f;
	}
	public String getText_s() {
		return text_s;
	}
	public void setText_s(String text_s) {
		this.text_s = text_s;
	}
	public String getText_c() {
		return text_c;
	}
	public void setText_c(String text_c) {
		this.text_c = text_c;
	}
	public String getText_a() {
		return text_a;
	}
	public void setText_a(String text_a) {
		this.text_a = text_a;
	}
	public String getText_r() {
		return text_r;
	}
	public void setText_r(String text_r) {
		this.text_r = text_r;
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
	public String getHtmlId() {
		return htmlId;
	}
	public void setHtmlId(String htmlId) {
		this.htmlId = htmlId;
	}
	public String getDefault_value() {
		return default_value;
	}
	public void setDefault_value(String default_value) {
		this.default_value = default_value;
	}
}
