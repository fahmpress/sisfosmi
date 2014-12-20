<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String kd_matkul=request.getParameter("kd_matkul");
String nilai=request.getParameter("nilai");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tb_nilai SET nim='"+nim+"', kd_matkul='"+kd_matkul+"', nilai='"+nilai+"'";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=nilai_tampil_detail&&nim="+nim);
%>
</html>
