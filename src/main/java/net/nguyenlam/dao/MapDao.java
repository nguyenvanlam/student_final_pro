package net.nguyenlam.dao;

import java.util.List;

import net.nguyenlam.entities.BuildingLabel;
import net.nguyenlam.entities.CommonCoords;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;
/**
 * 
 * @author NGUYEN LAM
 *
 */
public interface MapDao {
	/**
	 * get building coords of school
	 * 
	 * @param idUniversity
	 * @return list coords
	 */
	public List<CommonCoords> getBuildingCoords(int idUniversity);
	/**
	 * get line coords
	 * 
	 * @param idUniversity
	 * @return list coords
	 */
	public List<CommonCoords> getLineCoord(int idUniversity);
	/**
	 * get text coords
	 * 
	 * @param idUniversity
	 * @return
	 */
	public List<BuildingLabel> getBuildingLabel(int idUniversity);
	
	/**
	 * get center coord of the university
	 * 
	 * @param idUniversity
	 * @return coordinate
	 */
	public Coordinates getMapCenter(int idUniversity);
	/**
	 * 
	 * @param idUniversity
	 */
	public List<Line> getLineObj(int idUniversity);
	
	/**
	 * get point closest to param c from lsLine
	 * 
	 * @param lsLine
	 * @param c
	 * @return
	 */
	public int getClosest(List<Line> lsLine,Coordinates c);
	/**
	 * get area of university represented by array point
	 * 
	 * @param idUniversity
	 * @return list coords
	 */
	public List<Coordinates> getArea(int idUniversity);
}
