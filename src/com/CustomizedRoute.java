package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;

@WebServlet("/CustomizedRoute")
public class CustomizedRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomizedRoute() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name,firstpoint,secondpoint,city,date,time,email,thirdpoint,fourthpoint;
	

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		name = request.getParameter("name");
		email = request.getParameter("email");
		city = request.getParameter("city");
		firstpoint = request.getParameter("firstpoint");
		secondpoint = request.getParameter("secondpoint");
		thirdpoint = request.getParameter("thirdpoint");
		fourthpoint = request.getParameter("fourthpoint");
		date = request.getParameter("date");
		time = request.getParameter("time");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`cutomizedroute` (`name`,`email`,`city`,`firstpoint`,`secondpoint`,`thirdpoint`,`fourthpoint`,`date`, `time`) VALUES ( '"
					+ name
					+ "','"
					+ email
					+ "','"
					+ city
					+ "','"
					+ firstpoint
					+"','"
					+ secondpoint
					+ "','"
					+ thirdpoint
					+ "','"
					+ fourthpoint
					+ "','"
					+ date
					+ "','"
					+ time + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("ConfirmBooking.jsp?na="+email);
   				

   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
