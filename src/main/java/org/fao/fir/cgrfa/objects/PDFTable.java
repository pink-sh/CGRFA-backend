package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
public @Data class PDFTable {
	LinkedList<PDFTableRow> table;
	String name;
}
