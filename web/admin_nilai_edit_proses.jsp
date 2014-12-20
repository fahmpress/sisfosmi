<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String nilai=request.getParameter("nilai");
String kd_matkul=request.getParameter("kd_matkul");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="UPDATE tb_nilai SET nilai='"+nilai+"' WHERE tb_nilai.nim='"+nim+"' AND tb_nilai.kd_matkul='"+kd_matkul+"'";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=nilai_tampil_detail&&nim="+nim);
%>
</html>