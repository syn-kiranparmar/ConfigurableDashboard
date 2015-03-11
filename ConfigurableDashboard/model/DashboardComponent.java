package main.com.metlife.pol.web.model;

public class DashboardComponent {	
	private String id;
	private String title;
	private String name;
	private String active;	
	//private String type;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}
	
	public DashboardComponent(String id, String name, String title, String active) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.active = active;
	}
}
