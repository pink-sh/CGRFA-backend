package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

public @Data class TableRow {
	
	int multi;
	String name;
	LinkedList<TableCell> cells;
}
