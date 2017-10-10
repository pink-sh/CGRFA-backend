package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

@Data
public class Table {
	
	private String name;
	private LinkedList<TableRow> matrix;
	private LinkedList<String> header_e;
	private LinkedList<String> header_f;
	private LinkedList<String> header_s;
	private LinkedList<String> header_a;
	private LinkedList<String> header_r;
	private LinkedList<String> header_z;
	private String ratio;
	private String width;
	
	private int multiCount;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LinkedList<TableRow> getMatrix() {
		return matrix;
	}

	public void setMatrix(LinkedList<TableRow> matrix) {
		this.matrix = matrix;
	}

	public LinkedList<String> getHeader_e() {
		return header_e;
	}

	public void setHeader_e(LinkedList<String> header_e) {
		this.header_e = header_e;
	}

	public LinkedList<String> getHeader_f() {
		return header_f;
	}

	public void setHeader_f(LinkedList<String> header_f) {
		this.header_f = header_f;
	}

	public LinkedList<String> getHeader_s() {
		return header_s;
	}

	public void setHeader_s(LinkedList<String> header_s) {
		this.header_s = header_s;
	}

	public LinkedList<String> getHeader_a() {
		return header_a;
	}

	public void setHeader_a(LinkedList<String> header_a) {
		this.header_a = header_a;
	}

	public LinkedList<String> getHeader_r() {
		return header_r;
	}

	public void setHeader_r(LinkedList<String> header_r) {
		this.header_r = header_r;
	}

	public LinkedList<String> getHeader_z() {
		return header_z;
	}

	public void setHeader_z(LinkedList<String> header_z) {
		this.header_z = header_z;
	}

	public String getRatio() {
		return ratio;
	}

	public void setRatio(String ratio) {
		this.ratio = ratio;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public int getMultiCount() {
		return multiCount;
	}

	public void setMultiCount(int multiCount) {
		this.multiCount = multiCount;
	}
}

