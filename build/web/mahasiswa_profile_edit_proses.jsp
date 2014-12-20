<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String alamat=request.getParameter("alamat");
String no_hp=request.getParameter("no_hp");
String email=request.getParameter("email");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="UPDATE tb_mahasiswa SET alamat='"+alamat+"',no_hp='"+no_hp+"',email='"+email+"' where nim="+nim;
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("mahasiswa_home.jsp?link=home");
%>
</html>
