<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String semester=request.getParameter("semester");
String bayar=request.getParameter("bayar");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tb_bayaran SET nim='"+nim+"', semester='"+semester+"', bayar='"+bayar+"'";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=bayaran_tampil&&nim="+nim);
%>
</html>
