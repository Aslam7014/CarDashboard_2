package com.jsp.cars;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatecar")
public class UpdateCar extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int carId = Integer.parseInt(req.getParameter("carId"));
		
//		JDBC LOGICS 
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_project_cars?user=root&password=root");
			
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM cars WHERE carId=?");
			pst.setInt(1, carId);
			
			ResultSet rs = pst.executeQuery();
			
			
			req.setAttribute("resultSet", rs);
			RequestDispatcher rd = req.getRequestDispatcher("UpdateCar.jsp");
			rd.forward(req, resp);
					
			
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


