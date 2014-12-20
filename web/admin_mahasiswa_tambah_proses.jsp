<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String nama=request.getParameter("nama");
String angkatan=request.getParameter("angkatan");
String jur=request.getParameter("jurusan");
String tmpt_lhr=request.getParameter("tmpt_lhr");
String tgl_lahir=request.getParameter("tgl");
String bln_lahir=request.getParameter("bln");
String thn_lahir=request.getParameter("thn");
String jk=request.getParameter("jk");
String alamat=request.getParameter("alamat");
String no_hp=request.getParameter("no_hp");
String email=request.getParameter("email");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tb_mahasiswa SET nim='"+nim+"', nm_mhs='"+nama+"', kd_jurusan='"+jur+"', thn_masuk='"+angkatan+"', tmpt_lahir='"+tmpt_lhr+"', tgl_lahir='"+tgl_lahir+"', bln_lahir='"+bln_lahir+"', thn_lahir='"+thn_lahir+"', jk='"+jk+"', alamat='"+alamat+"',no_hp='"+no_hp+"',email='"+email+"', username='"+nim+"', password='"+tgl_lahir+bln_lahir+thn_lahir+"', foto=''";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=mahasiswa");
%>
</html>
