package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

public @Data class Table {
	
	String name;
	LinkedList<TableRow> matrix;
	LinkedList<String> header_e;
	LinkedList<String> header_f;
	LinkedList<String> header_s;
	LinkedList<String> header_a;
	LinkedList<String> header_r;
	LinkedList<String> header_z;
	String ratio;
	String width;
	
	int multiCount;
}

