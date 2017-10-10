package org.fao.fir.cgrfa.objects;

import lombok.Data;

@Data
public class Selected {
	private String key;
	private String text;
	private boolean selected;
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public boolean isSelected() {
		return selected;
	}
	public void setSelected(boolean selected) {
		this.selected = selected;
	}

}
