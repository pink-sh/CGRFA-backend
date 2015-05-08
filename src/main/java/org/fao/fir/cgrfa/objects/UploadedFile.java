package org.fao.fir.cgrfa.objects;

import lombok.Data;

public @Data class UploadedFile {
	String name;
	String size;
	String url;
	String thumbnailUrl;
	String deleteUrl;
	String deleteType;
}
