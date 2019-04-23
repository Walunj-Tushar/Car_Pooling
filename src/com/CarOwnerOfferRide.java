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

@WebServlet("/CarOwnerOfferRide")
public class CarOwnerOfferRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CarOwnerOfferRide() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String startpoint,endpoint,date,time,email,name,mno,cartype,amount,amount1,etime;
	

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
		mno = request.getParameter("mno");
		email = request.getParameter("email");
		startpoint = request.getParameter("startpoint");
		endpoint = request.getParameter("endpoint");
		amount1 = request.getParameter("amount1");
		amount = request.getParameter("amount");
		date = request.getParameter("date");
		time = request.getParameter("time");
		etime = request.getParameter("etime");
				

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`offersride` (`cartype`,`name`,`mno`,`email`,`startpoint`,`endpoint`,`amount1`,`amount`,`date`, `time`,`etime`) VALUES ( '"
					+ cartype
					+ "','"
					+ name
					+ "','"
					+ mno
					+ "','"
					+ email
					+"','"
					+ startpoint
					+"','"
					+ endpoint
					+ "','"
					+ amount1
					+ "','"
					+ amount
					+ "','"
					+ date
					+ "','"
					+ time 
					+ "','"
					+ etime + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("UserBookCar.jsp?na="+email);
   				

   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
