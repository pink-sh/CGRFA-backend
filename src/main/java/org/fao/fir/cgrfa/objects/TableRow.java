package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

@Data
public class TableRow {
	
	private int multi;
	private String name;
	private LinkedList<TableCell> cells;
	public int getMulti() {
		return multi;
	}
	public void setMulti(int multi) {
		this.multi = multi;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LinkedList<TableCell> getCells() {
		return cells;
	}
	public void setCells(LinkedList<TableCell> cells) {
		this.cells = cells;
	}
}
