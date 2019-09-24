<%@page import="java.sql.*"%>


<%
	String connectionURL = "jdbc:mysql://localhost:3306/test_126";	
	Connection con = null; 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	con = DriverManager.getConnection(connectionURL, "root","");
	
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st
			.executeUpdate("insert into user(username, password) values ('"
					+ userName
					+ "','" 
					+ password 
					+ "')");
	if (i < 0){
		response.sendRedirect("index.jsp");
	}
%>