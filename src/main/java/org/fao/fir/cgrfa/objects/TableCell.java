package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

public @Data class TableCell {
	LinkedList<Field> fields;
}
