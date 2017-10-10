package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

@Data
public class TableCell {
	private LinkedList<Field> fields;

	public LinkedList<Field> getFields() {
		return fields;
	}

	public void setFields(LinkedList<Field> fields) {
		this.fields = fields;
	}
}
