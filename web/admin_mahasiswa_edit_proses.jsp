<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
String nama=request.getParameter("nama");
String jur=request.getParameter("jurusan");
String angkatan=request.getParameter("angkatan");
String tgl_lahir=request.getParameter("tgl_lahir");
String bln_lahir=request.getParameter("bln_lahir");
String thn_lahir=request.getParameter("thn_lahir");
String jk=request.getParameter("jk");
String alamat=request.getParameter("alamat");
String no_hp=request.getParameter("no_hp");
String email=request.getParameter("email");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt=myConn.createStatement();
String kueri="UPDATE tb_mahasiswa SET nm_mhs='"+nama+"', kd_jurusan='"+jur+"', thn_masuk='"+angkatan+"', tgl_lahir='"+tgl_lahir+"', bln_lahir='"+bln_lahir+"', thn_lahir='"+thn_lahir+"', jk='"+jk+"', alamat='"+alamat+"',no_hp='"+no_hp+"',email='"+email+"' where nim="+nim;
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=detail&&nim="+nim);
%>
</html>
