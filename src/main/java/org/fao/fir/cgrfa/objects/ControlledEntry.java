package org.fao.fir.cgrfa.objects;

import lombok.Data;

@Data
public class ControlledEntry {
	
	private String key;
	private String text_e;
	private String text_f;
	private String text_s;
	private String text_a;
	private String text_r;
	private String text_c;
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
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
	public String getText_c() {
		return text_c;
	}
	public void setText_c(String text_c) {
		this.text_c = text_c;
	}

}
