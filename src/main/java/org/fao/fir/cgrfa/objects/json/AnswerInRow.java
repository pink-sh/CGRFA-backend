package org.fao.fir.cgrfa.objects.json;

import lombok.Data;

public @Data class AnswerInRow {
	String id;
	String value;
	String value_opt;
	int multiRowIndex;
}
