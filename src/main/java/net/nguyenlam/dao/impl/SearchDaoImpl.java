package net.nguyenlam.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.nguyenlam.dao.SearchDao;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;
import net.nguyenlam.entities.SearchInfo;
import net.nguyenlam.utils.Algorithm;
import net.nguyenlam.utils.Constants;

public class SearchDaoImpl extends ConnectionDaoImpl implements SearchDao{
	public List<String> getSearchLabel(int idUniversity) {
		// TODO Auto-generated method stub
		List<String> lsLabel = new ArrayList<String>();
		try {
			if (connectToDB()) {
				String sql = "";
				sql += "SELECT  " + Constants.LABEL;
				sql += " FROM " + Constants.TBL_SEARCH_LABEL;
				sql += " WHERE " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if (resultSet != null) {
					while (resultSet.next()) {
						String str = resultSet.getString(Constants.LABEL);
						lsLabel.add(str);
					}
				}
			}
		} catch (Exception e) {
			System.out.println("An err occur in getDataUtc: " + e.getMessage());
			closeConnect();
		}
		closeConnect();
		return lsLabel;
	}
	/**
	 * 
	 */
	public List<SearchInfo> getInfo(List<String> label, int idUniversity) {
		// TODO Auto-generated method stub
		List<SearchInfo> lsInfo = new ArrayList<SearchInfo>();
		try {
			if (connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.ID_SEARCH_INFO + ", " + Constants.TBL_SEARCH_LABEL + ".";
				sql += Constants.LABEL + ", " + Constants.NAME + ", " + Constants.FUNCTION + ", ";
				sql += Constants.COMMON_OTHER + ", " + Constants.COORD_X + ", " + Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_SEARCH_INFO;
				sql += " RIGHT JOIN " + Constants.TBL_SEARCH_LABEL;
				sql += " ON " + Constants.TBL_SEARCH_INFO + "." + Constants.LABEL;
				sql += "=" + Constants.TBL_SEARCH_LABEL + "." + Constants.LABEL;
				sql += " WHERE " + Constants.TBL_SEARCH_LABEL + "." + 
				Constants.LABEL + " like '%" + label.get(0) + "%'";
				for (int i = 1; i < label.size(); i++) {
					if(!"".equals(label.get(i))) {
						sql += " OR " + Constants.TBL_SEARCH_LABEL + "." + Constants.LABEL + " like '%" 
								+ label.get(i) + "%'";
					}
				}
				sql += " AND " + Constants.TBL_SEARCH_LABEL + "." + 
				Constants.ID_UNIVERSITY + " = " + idUniversity;
				System.out.println("get info sql: " + sql);
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if (resultSet != null) {
					while (resultSet.next()) {
						SearchInfo info = new SearchInfo(
								resultSet.getInt(Constants.ID_SEARCH_INFO),
								resultSet.getString(Constants.LABEL),
								resultSet.getString(Constants.NAME),
								resultSet.getString(Constants.FUNCTION),
								resultSet.getString(Constants.COMMON_OTHER),
								resultSet.getDouble(Constants.COORD_X),
								resultSet.getDouble(Constants.COORD_Y));
						lsInfo.add(info);
					}
				}
			}
		} catch(Exception e) {
			System.out.println("an error occur in getInfo: " + e.getMessage());
			return lsInfo;
		}
		return lsInfo;
	}
	/**
	 * 
	 */
	public List<Coordinates> findWay(int s, int f, List<Line> lsLineOb) {
		// TODO Auto-generated method stub
		List<Coordinates> lsWay = new ArrayList<Coordinates>();
		Algorithm alg = new Algorithm();
		alg.convertToposArr(lsLineOb);
		alg.initMaxtrix(lsLineOb);
		alg.findWay();
		alg.getWay(s, f);
		int[] result = alg.getResult();
		int size = alg.getrSize();
		for(int i = 0; i <= size; i++) {
			Coordinates c = new Coordinates(lsLineOb.get(result[i]).getCoord().getX(), 
					lsLineOb.get(result[i]).getCoord().getY());
			lsWay.add(c);
		}
		return lsWay;
	}
	/**
	 * 
	 */
	public Coordinates getCoordByLabel(String label, int idUniversity) {
		// TODO Auto-generated method stub
		Coordinates c = new Coordinates();
		try {
			if (connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.COORD_X + ", " + Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_SEARCH_LABEL;
				sql += " WHERE " + Constants.LABEL + " = '" + label + "'";
				sql += " AND " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if (resultSet != null) {
					while (resultSet.next()) {
						c = new Coordinates(
								resultSet.getDouble(Constants.COORD_X),
								resultSet.getDouble(Constants.COORD_Y));
					}
				}
			}
		} catch(Exception e) {
			System.out.println("an error occur in getCoordByLabel: " + e.getMessage());
			return c;
		}
		return c;
	}
	
	
}
