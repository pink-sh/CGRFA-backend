package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
public @Data class PDFQuestion {
	org.fao.fir.cgrfa.pdf.parser.objects.Field singleQuestion;
	List<org.fao.fir.cgrfa.pdf.parser.objects.Field> multipleQuestion;
	PDFTable table;
	int id;
}
