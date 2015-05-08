package org.fao.fir.cgrfa.objects.json;

import java.util.Date;

import lombok.Data;

public @Data class Headers {
	Country country;
	Date date;
	String preparedBy;
}
