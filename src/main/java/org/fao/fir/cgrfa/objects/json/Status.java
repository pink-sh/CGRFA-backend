package org.fao.fir.cgrfa.objects.json;

import lombok.Data;

@Data
public class Status {
	private int id;
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
