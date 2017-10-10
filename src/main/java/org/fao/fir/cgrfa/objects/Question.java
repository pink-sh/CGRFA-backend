package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.Data;
@Data
public class Question {
	
	private int id;
	
	private String title;
	
	private String text_e;
	private String text_f;
	private String text_s;
	private String text_a;
	private String text_r;
	private String text_c;
	
	private List<Field> fields;
	private List<Table> tables;
	
	private Integer status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public List<Field> getFields() {
		return fields;
	}

	public void setFields(List<Field> fields) {
		this.fields = fields;
	}

	public List<Table> getTables() {
		return tables;
	}

	public void setTables(List<Table> tables) {
		this.tables = tables;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
}
