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

@WebServlet("/CarRegistration")
public class CarRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CarRegistration() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String lname,fname,photo,sign,email,licenceno,addr,rcbookpdf ,mno,carno,adharno;
	

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
		fname = request.getParameter("fname");
		lname = request.getParameter("lname");
		addr = request.getParameter("addr");
		adharno = request.getParameter("adharno");
		mno = request.getParameter("mno");
		email = request.getParameter("email");
		carno = request.getParameter("carno");
		licenceno = request.getParameter("licenceno");
		rcbookpdf = request.getParameter("rcbookpdf");
		photo = request.getParameter("photo");
		sign = request.getParameter("sign");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`registercar` (`fname`,`lname`,`addr`,`adharno`,`mno`,`email`,`carno`,`licenceno`,`rcbookpdf`,`photo`,`sign`) VALUES ( '"
					+ fname
					+ "','"
					+ lname
					+"','"
					+ addr
					+"','"
					+ adharno
					+"','"
					+ mno
					+ "','"
					+ email
					+ "','"
					+ carno
					+ "','"
					+ licenceno
					+ "','"
					+ rcbookpdf 
					+ "','"
					+ photo
					+ "','"
					+ sign
					+ "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("index.jsp");
   				

   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
