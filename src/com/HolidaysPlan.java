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

@WebServlet("/HolidaysPlan")
public class HolidaysPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public HolidaysPlan() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String pname,sdate,edate,price,aboutplan ;
	

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
	
		pname = request.getParameter("pname");
		sdate = request.getParameter("sdate");
		edate = request.getParameter("edate");
		price = request.getParameter("price");
		aboutplan = request.getParameter("aboutplan");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`holidayplan` (`pname`, `sdate`, `edate`,`price`, `aboutplan`) VALUES ( '"
					+ pname
					+ "','"
					+ sdate
					+ "','"
					+ edate + "', '" + price + "','" + aboutplan + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("CarOwnerHome.jsp?na=tusharwalunj1505@gmail.com");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
