package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

import org.fao.fir.cgrfa.pdf.parser.objects.PDFField;

@AllArgsConstructor
public @Data class PDFQuestion {
	PDFField singleQuestion;
	List<PDFField> multipleQuestion;
	PDFTable table;
	int id;
}
