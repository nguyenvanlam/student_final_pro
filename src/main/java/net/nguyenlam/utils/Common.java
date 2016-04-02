package net.nguyenlam.utils;

import net.nguyenlam.entities.Coordinates;

public class Common {
	public static double distance(Coordinates x, Coordinates y) {
		double xx = y.getX() - x.getX();
		double yy = y.getY() - x.getY();
		
		double sq = Math.sqrt(xx * xx + yy * yy);
		double sq2 = (double) Math.round(sq * 100000) / 100000;
		return sq2;
	}
	
	//convert string to int
	public static  int toInt(String s) {
			int t = 0;
			try {
				t = Integer.parseInt(s);
			} catch(Exception e) {
				System.out.println("Err in toInt: " + e.getMessage());
			}
			return t;
	}
	
	/**
	 * check is numberic
	 */
	public static boolean isNumberic(String s) {
		return s.matches("[-+]?\\d*\\.?\\d+");
	}
}
