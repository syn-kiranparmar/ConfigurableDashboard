package main.com.metlife.pol.web.model;

import java.util.Date;

public class Template {

	private int id;
	private String name;
	private Date createdOn;
	private Date lastModified;

	public Template() {
	}
	
	public Template(int id, String name, Date createdOn, Date lastModified) {
		super();
		this.id = id;
		this.name = name;
		this.createdOn = createdOn;
		this.lastModified = lastModified;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}

	public Date getLastModified() {
		return lastModified;
	}

}
