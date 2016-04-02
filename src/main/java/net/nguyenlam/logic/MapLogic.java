package net.nguyenlam.logic;

import java.util.ArrayList;
import java.util.List;

import net.nguyenlam.dao.impl.MapDaoImpl;
import net.nguyenlam.dao.impl.SearchDaoImpl;
import net.nguyenlam.entities.BuildingLabel;
import net.nguyenlam.entities.CommonCoords;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;

import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author NGUYEN LAM
 *
 */
public class MapLogic {
	
	/**
	 * init for map
	 * 
	 * @param viewName
	 * @return
	 */
	public ModelAndView initMap(String viewName, int idUniversity) {
		MapDaoImpl mapImpl = new MapDaoImpl();
		List<CommonCoords> lsBuildingCoord = new ArrayList<CommonCoords>();
		List<CommonCoords> lsLineCoord = new ArrayList<CommonCoords>();
		List<BuildingLabel> lsBuildingLabel = new ArrayList<BuildingLabel>();
		List<Coordinates> poly = new ArrayList<Coordinates>();
		//get data
		lsBuildingCoord = mapImpl.getBuildingCoords(idUniversity);
		lsLineCoord = mapImpl.getLineCoord(idUniversity);
		lsBuildingLabel = mapImpl.getBuildingLabel(idUniversity);
		poly = mapImpl.getArea(idUniversity);
		Coordinates c = new Coordinates();
		
		//get info for searching
		SearchLogic searchLogic = new SearchLogic();
		List<String> lsLabel = new ArrayList<String>();
		lsLabel = searchLogic.getInfo(idUniversity);
		
		//get map center
		c = mapImpl.getMapCenter(idUniversity);
		
		ModelAndView mapView = new ModelAndView(viewName);
		mapView.addObject("lsBuilding", lsBuildingCoord);
		mapView.addObject("lsLine", lsLineCoord);
		mapView.addObject("lsBuildingLabel", lsBuildingLabel);
		mapView.addObject("lsLabel", lsLabel);
		mapView.addObject("center", c);
		mapView.addObject("polygon", poly);
		return mapView;
		
	}
	
	public List<Line> getLineObj(int idUniversity) {
		MapDaoImpl mapImpl = new MapDaoImpl();
		List<Line> lsLineOb =  mapImpl.getLineObj(idUniversity);
		formatRelationStr(lsLineOb);
		return lsLineOb;
	}
	
	/**
	 * format string of relation again
	 * 
	 * @param lsLineOb: list line object
	 */
	private void formatRelationStr(List<Line> lsLineOb) {
		for (Line line : lsLineOb) {
			String temp = removeChar(line.getRelation());
			temp = removeSpace(temp);
			line.setRelation(temp); 
		}
	}
	/**
	 * remove chars difference space char and digit char
	 * 
	 * @param str: string
	 * @return String 
	 */
	private String removeChar(String str) {
		int length = str.length();
		char[] temp = new char[length + 1];
		int it = 0;
		for(int i = 0; i < length; i++) {
			if(str.charAt(i) == ' ' || (str.charAt(i) >= '0' && str.charAt(i) <= '9')) {
				temp[it++] = str.charAt(i);
			}
		}
		return String.valueOf(temp);
	}
	/**
	 * remove extra space characters
	 * 
	 * @param str
	 * @return
	 */
	private String removeSpace(String str) {
		str = str.trim();
		int length = str.length();
		char[] temp = new char[length + 1];
		int it = 1;
		temp[0] = str.charAt(0);
		for(int i = 1; i < length; i++) {
			if(str.charAt(i) == ' ') {
				if(temp[it - 1] != ' ') {
					temp[it++] = str.charAt(i);
				}
			} else {
				temp[it++] = str.charAt(i);
			}
		}
		return String.valueOf(temp).trim();
	}
}
