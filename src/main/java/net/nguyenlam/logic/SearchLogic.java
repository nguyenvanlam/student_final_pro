package net.nguyenlam.logic;

import java.util.ArrayList;
import java.util.List;
import org.springframework.web.servlet.ModelAndView;
import net.nguyenlam.dao.impl.MapDaoImpl;
import net.nguyenlam.dao.impl.SearchDaoImpl;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;
import net.nguyenlam.entities.SearchInfo;
import net.nguyenlam.utils.Algorithm;
import net.nguyenlam.utils.Common;

/**
 * 
 * @author NGUYEN LAM
 *
 */
public class SearchLogic {
	/**
	 * get info for searching
	 * 
	 * @param idUniversity
	 * @return
	 */
	public List<String> getInfo(int idUniversity) {
		SearchDaoImpl searchImpl = new SearchDaoImpl();
		return searchImpl.getData(idUniversity);
	}
	
	/**
	 * find way from s to f
	 * 
	 * @param s: coords of position 1
	 * @param f: coords of position 2
	 * @param idUniversity
	 * @param lsLineOb: search in lines
	 * @return List coords
	 */
	public List<Coordinates> findWay(Coordinates s, Coordinates f, int idUniversity, 
			List<Line> lsLineOb) {
		MapDaoImpl mapImpl = new MapDaoImpl();
		List<Coordinates> lsCoord = new ArrayList<Coordinates>();
		//get id of line in DB closest to s and f
		int sId = mapImpl.getClosest(lsLineOb, s);
		int fId = mapImpl.getClosest(lsLineOb, f);
		System.out.println("Sid: " + sId + ", fId: " + fId);
		if(sId == 0 || fId == 0) {
			return lsCoord;
		}
		Algorithm alg = new Algorithm();
		alg.convertToposArr(lsLineOb);
		alg.initMaxtrix(lsLineOb);
		alg.findWay();
		int[] posIdToArr;
		int[] result;
		int rSize;
		//posArrToId = alg.getPosArrToId();
		posIdToArr = alg.getPosIdToArr();
		alg.getWay(posIdToArr[sId], posIdToArr[fId]);
		result = alg.getResult();
		rSize = alg.getrSize();
		for(int i = 0; i <= rSize; i++) {
			Coordinates c = new Coordinates(lsLineOb.get(posIdToArr[result[i]]).getCoord().getX(),
					lsLineOb.get(posIdToArr[result[i]]).getCoord().getY());
			lsCoord.add(c);
		}
		return lsCoord;
	}
	
	/**
	 * search result of way from pos1 to pos2 and add to map view 
	 * 
	 * @param pos1
	 * @param pos2
	 * @param map
	 * @param idUniversity
	 * @return list coord
	 */
	public List<Coordinates> searchWay(String pos1, String pos2, ModelAndView map, int idUniversity) {
		MapLogic mapLogic = new MapLogic();
		SearchDaoImpl searchImpl = new SearchDaoImpl();
		List<Line> lsLineOb = mapLogic.getLineObj(idUniversity);
		List<Coordinates> lsPos = new ArrayList<Coordinates>();
		map.addObject("lsLineOb", lsLineOb);
		// get coord, if is coord
		
		lsPos.add(handlePosition(pos1, idUniversity));
		lsPos.add(handlePosition(pos2, idUniversity));
		
		//find way
		if(lsPos.get(0).getX() != 0 && lsPos.get(1).getX() != 0) {
			List<Coordinates> lsWay = new ArrayList<Coordinates>();
			lsWay = findWay(lsPos.get(0), lsPos.get(1) , idUniversity, lsLineOb);
			map.addObject("lsway", lsWay);
		}
		return lsPos;
	}
	
	public void searchInfo(List<String> label, ModelAndView map, int idUniversity) {
		SearchDaoImpl searchImpl = new SearchDaoImpl();
		List<SearchInfo> lsInfo = new ArrayList<SearchInfo>();
		lsInfo = searchImpl.getInfo(label, idUniversity);
		map.addObject("lsInfo", lsInfo);
	}
	
	/**
	 * remove space in string
	 * 
	 * @param string of content
	 * @return String 
	 */
	private String removeSpace(String str) {
		return str.replace(" ", "");
	}
	/**
	 * handle position to return coordinate
	 * 
	 * @param pos
	 * @return coordinate
	 */
	private Coordinates handlePosition(String pos, int idUniversity) {
		String[] arrCoord = removeSpace(pos).split(",");
		Coordinates c = new Coordinates();
		if(arrCoord.length == 2 && Common.isNumberic(arrCoord[0]) 
				&& Common.isNumberic(arrCoord[1])) {
			c.setX(Double.parseDouble(arrCoord[0]));
			c.setY(Double.parseDouble(arrCoord[1]));
		} else {
			SearchDaoImpl searchImpl = new SearchDaoImpl();
			c = searchImpl.getCoordByLabel(pos, idUniversity);
		}
		return c;
	}
}
