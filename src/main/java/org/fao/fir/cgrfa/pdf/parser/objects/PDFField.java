package org.fao.fir.cgrfa.pdf.parser.objects;

import lombok.Data;

public @Data class PDFField {
	private String name;
	private String value;
	private String valueOpt;
}
