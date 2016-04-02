package net.nguyenlam.dao;

public interface ConnectionDao {
	public boolean connectToDB();
	public void closeConnect();
	public void initDataSource();
}
