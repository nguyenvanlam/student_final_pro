package net.nguyenlam.entities;

public class Line {
	private Coordinates coord;
	private int id;
	private String relation;
	public Line() {
		super();
		// TODO Auto-generated constructor stub
		this.coord = null;
		this.id = 0;
		this.relation = "";
	}
	public Line(Coordinates coord, int id, String relation) {
		super();
		this.coord = coord;
		this.id = id;
		this.relation = relation;
	}
	public Coordinates getCoord() {
		return coord;
	}
	public void setCoord(Coordinates coord) {
		this.coord = coord;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	
	
	
	
}
