package org.fao.fir.cgrfa.objects.json;

import lombok.Data;

public @Data class Country {
	int id;
	String iso2;
	String iso3;
	String nameEn;
	String nameFr;
	String nameEs;
	String nameZh;
	String nameRu;
	String nameAr;
}
