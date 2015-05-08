package org.fao.fir.cgrfa.objects;

import java.util.LinkedList;

import lombok.Data;

public @Data class PDFQuestionList {
	LinkedList<PDFQuestion> list;
	String country;
	String preparedBy;
	String date;
	String fileName;
	String newFileName;
}
