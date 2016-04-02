package net.nguyenlam.utils;

import java.util.ArrayList;
import java.util.List;

import net.nguyenlam.entities.Coordinates;
import net.nguyenlam.entities.Line;

/**
 * class of algorithm to find shortest way
 * 
 * @author NGUYEN LAM
 *
 */
public class Algorithm {
	public static double[][] floyd;
	private  int size;
	private  int[] posIdToArr;
	private  int[] result;
	private  int rSize;
	private  int[] posArrToId;
	private  int[][] p; //track the way
	
	public Algorithm() {
		super();
		// TODO Auto-generated constructor stub
		floyd = new double[Constants.MAX_ARR][Constants.MAX_ARR];
		posIdToArr = new int[Constants.MAX_ARR];
		size = rSize = -1;
		p = new int[Constants.MAX_ARR][Constants.MAX_ARR];
		result = new int[Constants.MAX_ARR];
		posArrToId = new int[Constants.MAX_ARR];
	}
	
	
	
	public int[] getResult() {
		return result;
	}


	public void setResult(int[] result) {
		this.result = result;
	}


	public int getrSize() {
		return rSize;
	}


	public void setrSize(int rSize) {
		this.rSize = rSize;
	}
    

	public int[] getPosIdToArr() {
		return posIdToArr;
	}



	public void setPosIdToArr(int[] posIdToArr) {
		this.posIdToArr = posIdToArr;
	}
	
	public int[] getPosArrToId() {
		return posArrToId;
	}



	public void setPosArrToId(int[] posArrToId) {
		this.posArrToId = posArrToId;
	}



	public  void convertToposArr(List<Line> lsLine) {
		
		//stored posArrition base on id
		for(int i = 0; i < lsLine.size(); i++) {
			//vi tri thu i trong mang floyd, cung la vi tri thu i trong lsLine
			posIdToArr[lsLine.get(i).getId()] = i;
			
			//vi tri thu i trong arr va lsLine chua id cua line do
			posArrToId[i] = lsLine.get(i).getId();
		}
		size = lsLine.size() - 1;
	}
	
	public  void initMaxtrix(List<Line> lsLine) {
		//the first, assign -1 for matrix = unlimit
		int i,j;
		for(i = 0; i <= size; i++) {
			for(j = 0; j <= size; j++) {
				floyd[i][j] = -1;
				p[i][j] = i;
			}
		}
		
		//for each line ob
		for(i = 0; i < lsLine.size(); i++) {
			//get relation
			String rela = lsLine.get(i).getRelation();
			//split for each id 
			String[] arrRela = rela.split(" ");
			//get id for ele i th
			int key = lsLine.get(i).getId();
			for(j = 0; j < arrRela.length; j++) {
				
				//compute distance from line[i] to each rela[j]
				floyd[posIdToArr[key]][posIdToArr[Common.toInt(arrRela[j])]] = Common.distance(lsLine.get(i).getCoord(), 
						lsLine.get(posIdToArr[Common.toInt(arrRela[j])]).getCoord());
			}
			
		}
		
		//if missing 
		for(i = 0; i <= size; i++) {
			for(j = 0; j <= size; j++) {
				if(floyd[i][j] != -1) {
					floyd[j][i] = floyd[i][j];
					break;
				}
				if(floyd[j][i] != -1) {
					floyd[i][j] = floyd[j][i];
				}
			}
		}
		
	}
	
	public  void findWay() {
		int i,j, k;
		double t;
		for(k = 0; k <= size; k++) {
			for(i = 0; i <= size; i++) {
				for(j = 0; j <= size; j++) {
					if(floyd[i][k] > 0 && floyd[k][j] > 0) {
						t = floyd[i][k] + floyd[k][j];
						if(floyd[i][j] == -1 || t < floyd[i][j]) {
							floyd[i][j] = t;
							p[i][j] = k;
 						}
					}
				}
			}
		}
	}
	
	public  void tracking(int s, int f) {
		if(p[s][f] == s) {
			return;
		}
		tracking(s, p[s][f]);
		result[++rSize] = posArrToId[p[s][f]];
		tracking(p[s][f], f);
	}
	
	public  void getWay(int s, int f) {
		result[++rSize] = posArrToId[s];
		tracking(s, f);
		result[++rSize] = posArrToId[f];
	}
	
	
}
