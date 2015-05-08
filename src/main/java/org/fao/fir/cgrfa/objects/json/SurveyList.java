package org.fao.fir.cgrfa.objects.json;

import java.util.Date;

import lombok.Data;

public @Data class SurveyList {
	Integer id;
	String originalPDF;
	Country country;
	String preparedBy;
	Date date;
	Integer overallStatus;
	Integer rejected;
	Integer underRevision;
	Integer accepted;
}
