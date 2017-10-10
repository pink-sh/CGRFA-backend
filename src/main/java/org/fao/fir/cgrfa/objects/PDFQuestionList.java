package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

@Data
public class PDFQuestionList {
	private LinkedList<PDFQuestion> list;
	private String country;
	private String preparedBy;
	private String date;
	private String fileName;
	private String newFileName;
	public LinkedList<PDFQuestion> getList() {
		return list;
	}
	public void setList(LinkedList<PDFQuestion> list) {
		this.list = list;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPreparedBy() {
		return preparedBy;
	}
	public void setPreparedBy(String preparedBy) {
		this.preparedBy = preparedBy;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getNewFileName() {
		return newFileName;
	}
	public void setNewFileName(String newFileName) {
		this.newFileName = newFileName;
	}
}
