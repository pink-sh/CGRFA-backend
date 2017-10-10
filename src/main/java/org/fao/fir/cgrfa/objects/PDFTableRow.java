package org.fao.fir.cgrfa.objects;

import java.util.List;

import org.fao.fir.cgrfa.pdf.parser.objects.PDFField;

public class PDFTableRow {
	
	public PDFTableRow(List<PDFField> rows, String name) {
		this.rows = rows;
		this.name = name;
	}
	
	private List<PDFField> rows;
	private String name;
	public List<PDFField> getRows() {
		return rows;
	}
	public void setRows(List<PDFField> rows) {
		this.rows = rows;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
