package org.fao.fir.cgrfa.objects;

import lombok.Data;

public @Data class Field {
	
	int controlledList;
	int type;
	String type_name;
	String name;
	String text_e;
	String text_f;
	String text_s;
	String text_c;
	String text_a;
	String text_r;
	String value;
	String htmlId;
	String default_value;
}
