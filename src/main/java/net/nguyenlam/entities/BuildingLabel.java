package net.nguyenlam.entities;

public class BuildingLabel extends CommonCoords{
	private String other;
	
	public BuildingLabel() {
		// TODO Auto-generated constructor stub
		super();
		this.other = "";
	}
	
	public BuildingLabel(String other, String name, double x, double y) {
		super(name, x, y);
		this.other = other;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
	
}
