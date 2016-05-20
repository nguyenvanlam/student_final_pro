package net.nguyenlam.dao;

import java.util.List;

import net.nguyenlam.entities.CommonCoords;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;
import net.nguyenlam.entities.SearchInfo;

public interface SearchDao {
	/**
	 * 
	 * @return list string: list of label for search in UTC
	 */
	public List<String> getSearchLabel(int id_university);
	/**
	 * get coord by label to find the way
	 * 
	 * @param label
	 * @param idUniversity
	 * @return coordinates
	 */
	public Coordinates getCoordByLabel(String label, int idUniversity);
	/**
	 * get info when user click on search info
	 * 
	 * @param label: search label from UI
	 * @param idUniversity: 
	 * @return list search info
	 */
	public List<SearchInfo> getInfo(List<String> label, int idUniversity); 
	
	/**
	 * find way in alg floyd
	 * 
	 * @param s: position 1
	 * @param f: position 2
	 * @param lineOb
	 * @return
	 */
	public List<Coordinates> findWay(int s, int f, List<Line> lineOb);
}
