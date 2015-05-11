package org.fao.fir.cgrfa.pdf.parser.objects;

import java.util.List;

import lombok.Data;

public @Data class PDFSubform {
	private String name;
	private Integer index;
	private List<PDFSubform> subform;
	private List<PDFField> fields;
	
	public PDFSubform() {}
	public PDFSubform(PDFSubform sf){
		this.setFields(sf.getFields());
		this.setIndex(sf.getIndex());
		this.setName(sf.getName());
		this.setSubform(sf.getSubform());
	}
}
