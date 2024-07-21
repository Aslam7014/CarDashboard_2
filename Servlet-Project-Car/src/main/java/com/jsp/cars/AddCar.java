package com.jsp.cars;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCar")
public class AddCar extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		
		int carId = Integer.parseInt(req.getParameter("carId"));
		String carModel= req.getParameter("carModel");
		String carBrand= req.getParameter("carBrand");
		String carColor= req.getParameter("carColor");
		int carPrice = Integer.parseInt(req.getParameter("carPrice"));
		
//		JDBC LOGICS 
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_project_cars?user=root&password=root");
			
			PreparedStatement pst = conn.prepareStatement("INSERT INTO cars VALUES(?,?,?,?,?)");
			pst.setInt(1, carId);
			pst.setString(2, carModel);
			pst.setString(3, carBrand);
			pst.setString(4, carColor);
			pst.setInt(5, carPrice);
			
			pst.execute();
			
		resp.sendRedirect("Index.jsp");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		{
				if(conn!=null) {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
		
	}

}
