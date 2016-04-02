package net.nguyenlam.entities;

/**
 * get coord of common set on map
 * 
 * @author NGUYEN LAM
 *
 */
public class CommonCoords extends Coordinates{
	protected String name;
	
	public CommonCoords() {
		// TODO Auto-generated constructor stub
		super();
		this.name = "";
	}
	
	public CommonCoords(String name, double x, double y) {
		super(x,y);
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
}
