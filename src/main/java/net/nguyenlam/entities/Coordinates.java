package net.nguyenlam.entities;

public class Coordinates {
	protected double x;
	protected double y;
		
	public Coordinates() {
		super();
		// TODO Auto-generated constructor stub
		this.x = 0;
		this.y = 0;
	}
	
	public Coordinates(double x, double y) {
		super();
		this.x = x;
		this.y = y;
	}
	
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	
}
