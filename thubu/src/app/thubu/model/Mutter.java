package app.thubu.model;

import java.io.Serializable;

public class Mutter implements Serializable {
	
	private String usr;
	private String text;
	
	public Mutter() {}
	
	public Mutter(String usr, String text)
	{
		this.usr = usr;
		this.text = text;
	}
	
	public String getUsr() { return this.usr; }
	public String getText() { return this.text; }
}
