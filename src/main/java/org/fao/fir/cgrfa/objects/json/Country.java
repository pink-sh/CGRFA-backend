package org.fao.fir.cgrfa.objects.json;

import lombok.Data;

@Data
public class Country {
	private int id;
	private String iso2;
	private String iso3;
	private String nameEn;
	private String nameFr;
	private String nameEs;
	private String nameZh;
	private String nameRu;
	private String nameAr;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIso2() {
		return iso2;
	}
	public void setIso2(String iso2) {
		this.iso2 = iso2;
	}
	public String getIso3() {
		return iso3;
	}
	public void setIso3(String iso3) {
		this.iso3 = iso3;
	}
	public String getNameEn() {
		return nameEn;
	}
	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	public String getNameFr() {
		return nameFr;
	}
	public void setNameFr(String nameFr) {
		this.nameFr = nameFr;
	}
	public String getNameEs() {
		return nameEs;
	}
	public void setNameEs(String nameEs) {
		this.nameEs = nameEs;
	}
	public String getNameZh() {
		return nameZh;
	}
	public void setNameZh(String nameZh) {
		this.nameZh = nameZh;
	}
	public String getNameRu() {
		return nameRu;
	}
	public void setNameRu(String nameRu) {
		this.nameRu = nameRu;
	}
	public String getNameAr() {
		return nameAr;
	}
	public void setNameAr(String nameAr) {
		this.nameAr = nameAr;
	}
}
