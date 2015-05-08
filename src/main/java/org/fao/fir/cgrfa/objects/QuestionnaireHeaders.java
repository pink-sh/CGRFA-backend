package org.fao.fir.cgrfa.objects;

import lombok.Data;

import org.fao.fir.cgrfa.dao.mapper.model.Countries;

public @Data class QuestionnaireHeaders {
	Countries country;
	String date;
	String preparedBy;
}
