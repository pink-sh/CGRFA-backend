package org.fao.fir.cgrfa.objects;

import java.util.List;

import lombok.Data;

public @Data class Question {
	
	int id;
	
	String title;
	
	String text_e;
	String text_f;
	String text_s;
	String text_a;
	String text_r;
	String text_c;
	
	List<Field> fields;
	List<Table> tables;
	
	Integer status;
}
