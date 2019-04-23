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

@WebServlet("/CarBooking")
public class CarBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CarBooking() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name,startdestination,enddestination,cartype,date,time,email;
	

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
	
		cartype = request.getParameter("cartype");
		name = request.getParameter("name");
		email = request.getParameter("email");
		startdestination = request.getParameter("startdestination");
		enddestination = request.getParameter("enddestination");
		date = request.getParameter("date");
		time = request.getParameter("time");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`bookcar` (`cartype`,`name`,`email`,`startdestination`,`enddestination`,`date`, `time`) VALUES ( '"
					+ cartype
					+ "','"+name+"','"
					+ email
					+ "','"
					+ startdestination
					+"','"
					+ enddestination
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
