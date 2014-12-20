<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nip=request.getParameter("nip");
String nama=request.getParameter("nama");
String jk=request.getParameter("jk");
String tgl=request.getParameter("tgl");
String bln=request.getParameter("bln");
String thn=request.getParameter("thn");
String alamat=request.getParameter("alamat");
String nope=request.getParameter("nope");
String email=request.getParameter("email");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="UPDATE tb_dosen SET nm_dosen='"+nama+"', jk='"+jk+"', tgl_lahir='"+tgl+"', bln_lahir='"+bln+"', thn_lahir='"+thn+"', alamat='"+alamat+"',no_hp='"+nope+"',email='"+email+"' where nip="+nip;
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=dosen_detail&&nip="+nip);
%>
</html>
