package org.fao.fir.cgrfa.objects;

import java.util.List;

import org.fao.fir.cgrfa.pdf.parser.objects.PDFField;

public class PDFQuestion {
	
	public PDFQuestion(PDFField singleQuestion, List<PDFField> multipleQuestion, PDFTable table, int id) {
		this.id = id;
		this.table = table;
		this.multipleQuestion = multipleQuestion;
		this.singleQuestion = singleQuestion;
	}
	
	private PDFField singleQuestion;
	private List<PDFField> multipleQuestion;
	private PDFTable table;
	private int id;
	public PDFField getSingleQuestion() {
		return singleQuestion;
	}
	public void setSingleQuestion(PDFField singleQuestion) {
		this.singleQuestion = singleQuestion;
	}
	public List<PDFField> getMultipleQuestion() {
		return multipleQuestion;
	}
	public void setMultipleQuestion(List<PDFField> multipleQuestion) {
		this.multipleQuestion = multipleQuestion;
	}
	public PDFTable getTable() {
		return table;
	}
	public void setTable(PDFTable table) {
		this.table = table;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
