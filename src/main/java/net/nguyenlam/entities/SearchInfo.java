package net.nguyenlam.entities;

public class SearchInfo extends Coordinates{
	private int idInfo;
	private String label;
	private String name;
	private String func;
	private String other;
	
	public SearchInfo() {
		// TODO Auto-generated constructor stub
		super();
		this.idInfo = 0;
		this.label = this.name = this.func = this.other = "";
	}

	public SearchInfo(int idInfo, String label, String name, String func,
			String other, double x, double y) {
		super(x, y);
		this.idInfo = idInfo;
		this.label = label;
		this.name = name;
		this.func = func;
		this.other = other;
	}

	public int getIdInfo() {
		return idInfo;
	}

	public void setIdInfo(int idInfo) {
		this.idInfo = idInfo;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFunc() {
		return func;
	}

	public void setFunc(String func) {
		this.func = func;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
	
	
	
}
