package org.fao.fir.cgrfa.pdf.parser.objects;

import java.util.List;

import lombok.Data;

@Data
public class PDFSubform {
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getIndex() {
		return index;
	}
	public void setIndex(Integer index) {
		this.index = index;
	}
	public List<PDFSubform> getSubform() {
		return subform;
	}
	public void setSubform(List<PDFSubform> subform) {
		this.subform = subform;
	}
	public List<PDFField> getFields() {
		return fields;
	}
	public void setFields(List<PDFField> fields) {
		this.fields = fields;
	}
}
