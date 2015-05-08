package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
public @Data class PDFTableRow {
	List<org.fao.fir.cgrfa.pdf.parser.objects.Field> rows;
	String name;
}
