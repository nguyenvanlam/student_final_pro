package net.nguyenlam.dao.impl;

import java.util.ArrayList;
import java.util.List;

import net.nguyenlam.dao.MapDao;
import net.nguyenlam.entities.BuildingLabel;
import net.nguyenlam.entities.CommonCoords;
import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;
import net.nguyenlam.utils.Common;
import net.nguyenlam.utils.Constants;
/**
 * 
 * @author NGUYEN LAM
 *
 */
public class MapDaoImpl extends ConnectionDaoImpl implements MapDao {
	public List<CommonCoords> getBuildingCoords(int idUniversity) {
		// TODO Auto-generated method stub
		List<CommonCoords> lsCoord = new ArrayList<CommonCoords>();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.COMMON_NAME + ", " + Constants.COORD_X + ", " 
				+ Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_COMMON_COORDS;
				sql += " WHERE " + Constants.COMMON_TYPE + " = " + Constants.COMMON_TYPE_BUILDING;
				sql += " AND " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				sql += " ORDER BY " + Constants.COMMON_NAME + ", " + Constants.ID;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					while(resultSet.next()) {
						if(resultSet.getDouble(Constants.COORD_X) != 0) {
							CommonCoords c = new CommonCoords(resultSet.getString(Constants.COMMON_NAME), 
									resultSet.getDouble(Constants.COORD_X), resultSet.getDouble(Constants.COORD_Y));
							lsCoord.add(c);
						}
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getCoords: ");
			e.printStackTrace();
		}
		return lsCoord;
	}
	
	public List<CommonCoords> getLineCoord(int idUniversity) {
		// TODO Auto-generated method stub
		List<CommonCoords> lsCoord = new ArrayList<CommonCoords>();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.ID + ", " + Constants.LINE_NAME + ", " + Constants.COORD_X + ", " +
				Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_LINE_COORDS;
				sql += " WHERE " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				sql += " ORDER BY " + Constants.LINE_NAME+ ", " + Constants.ID;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					while(resultSet.next()) {
						if(resultSet.getDouble(Constants.COORD_X) != 0) {
							CommonCoords c = new CommonCoords(resultSet.getString(Constants.LINE_NAME), 
									resultSet.getDouble(Constants.COORD_X), resultSet.getDouble(Constants.COORD_Y));
							lsCoord.add(c);
						}
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getLineCoords: ");
			e.printStackTrace();
		}
		return lsCoord;
	}
	
	//a2, a3, a4 get label for building
	public List<BuildingLabel> getBuildingLabel(int idUniversity) {
		// TODO Auto-generated method stub
		List<BuildingLabel> lsCoord = new ArrayList<BuildingLabel>();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.COMMON_NAME + ", " + Constants.COORD_X + ", " + Constants.COORD_Y
						+ ", " + Constants.COMMON_OTHER;
				sql += " FROM " + Constants.TBL_COMMON_COORDS;
				sql += " WHERE " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				sql += " AND " + Constants.COMMON_TYPE + " = " + Constants.COMMON_TYPE_BUILDING_LABEL;
				sql += " ORDER BY " + Constants.COMMON_NAME + ", " + Constants.ID;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					while(resultSet.next()) {
						BuildingLabel c = new BuildingLabel(resultSet.getString(Constants.COMMON_OTHER), 
								resultSet.getString(Constants.COMMON_NAME), 
								resultSet.getDouble(Constants.COORD_X), 
								resultSet.getDouble(Constants.COORD_Y)
								);
						lsCoord.add(c);
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getTextCoords: ");
			e.printStackTrace();
		}
		return lsCoord;
	}
	
	public CommonCoords getMapCenter(int idUniversity) {
		// TODO Auto-generated method stub
		CommonCoords c = new CommonCoords();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.COMMON_NAME + ", " + Constants.COORD_X + ", " + Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_COMMON_COORDS;
				sql += " WHERE " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				sql += " AND " + Constants.COMMON_TYPE + " = " + Constants.COMMON_TYPE_CENTER;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					if(resultSet.next()) {
						c.setName(resultSet.getString(Constants.COMMON_NAME));
						c.setX(resultSet.getDouble(Constants.COORD_X));
						c.setY(resultSet.getDouble(Constants.COORD_Y));
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getMapCenter: ");
			e.printStackTrace();
		}
		return c;
	}
	
	public List<Line> getLineObj(int idUniversity) {
		// TODO Auto-generated method stub
		List<Line> lsLine = new ArrayList<Line>();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT "+ Constants.ID + ", " + Constants.LINE_NAME + ", " + Constants.COORD_X + ", " 
				+ Constants.COORD_Y + ", " + Constants.RELATION;
				sql += " FROM " + Constants.TBL_LINE_COORDS;
				sql += " WHERE " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				sql += " ORDER BY " + Constants.LINE_NAME+ ", " + Constants.ID;
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					while(resultSet.next()) {
						CommonCoords c = new CommonCoords(resultSet.getString(Constants.LINE_NAME), 
								resultSet.getDouble(Constants.COORD_X), resultSet.getDouble(Constants.COORD_Y));
						Line l = new Line(c, resultSet.getInt(Constants.ID), resultSet.getString(Constants.RELATION));
						lsLine.add(l);
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getLineObj ");
			e.printStackTrace();
		}
		return lsLine;
	}
	
	public int getClosest(List<Line> lsLine, Coordinates c) {
		// TODO Auto-generated method stub
		int temp = 0;
		int size = lsLine.size();
		int i = 0;
		double min = 1000;
		for(i = 0; i < size; i++) {
			double length = Common.distance(lsLine.get(i).getCoord(), c);
			if(min > length) {
				min = length;
				temp = lsLine.get(i).getId();
			}
		}
		return temp;
	}
	
	public List<Coordinates> getArea(int idUniversity) {
		// TODO Auto-generated method stub
		List<Coordinates> poly = new ArrayList<Coordinates>();
		try {
			if(connectToDB()) {
				String sql = "";
				sql += "SELECT " + Constants.COORD_X + ", " + Constants.COORD_Y;
				sql += " FROM " + Constants.TBL_COMMON_COORDS;
				sql += " WHERE " + Constants.COMMON_TYPE + " = " + Constants.COMMON_TYPE_AREA;
				sql += " AND " + Constants.ID_UNIVERSITY + " = " + idUniversity;
				System.out.println("sql in getArea: " + sql);
				preparedStatement = connection.prepareStatement(sql);
				resultSet = preparedStatement.executeQuery();
				if(resultSet != null) {
					while(resultSet.next()) {
						if(resultSet.getDouble(Constants.COORD_X) != 0) {
							Coordinates c = new Coordinates(resultSet.getDouble(Constants.COORD_X),
									resultSet.getDouble(Constants.COORD_Y));
							poly.add(c);
						}
					}
				}
				closeConnect();
			}
			
		} catch(Exception e) {
			System.out.println("An err occur in getArea: ");
			e.printStackTrace();
		}
		return poly;
	}
}
