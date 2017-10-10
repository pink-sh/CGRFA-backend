package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

public class PDFTable {
	public PDFTable(LinkedList<PDFTableRow> table, String name) {
		this.table = table;
		this.name = name;
	}
	
	private LinkedList<PDFTableRow> table;
	private String name;
	public LinkedList<PDFTableRow> getTable() {
		return table;
	}
	public void setTable(LinkedList<PDFTableRow> table) {
		this.table = table;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
