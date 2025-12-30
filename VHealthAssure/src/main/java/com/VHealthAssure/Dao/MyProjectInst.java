package com.VHealthAssure.Dao;
import  java.sql.Connection;
import java.sql.DriverManager;

public class MyProjectInst {
private static MyProjectInst instance;
Connection abc;
private MyProjectInst() {
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	abc=DriverManager.getConnection("jdbc:mysql://localhost:3306/claimInformation","root","Root");
	}catch(Exception e) {  
		e.printStackTrace();
	}
}
	public static MyProjectInst getInstance() {
		try {
		if(instance ==null|| instance.getConnection().isClosed()) {
			instance =new MyProjectInst();
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return instance;
	}	
	public Connection getConnection() {
		return abc;
	}
}


