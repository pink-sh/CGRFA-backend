package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

import org.fao.fir.cgrfa.pdf.parser.objects.PDFField;

@AllArgsConstructor
public @Data class PDFTableRow {
	List<PDFField> rows;
	String name;
}
