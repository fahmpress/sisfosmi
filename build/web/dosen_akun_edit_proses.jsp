<html>
<%@ page language="java" import="java.sql.*" %>
<%
String password = (String)session.getAttribute("sessionpassword");
session.putValue("txtpass",password);
ResultSet myResultSet=null;
String nip=request.getParameter("nip");
String passlama=request.getParameter("passlama");
String passbaru=request.getParameter("passbaru");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement stmt = con.createStatement();

if (passlama.equals(password))
    {
      String kueri="UPDATE tb_dosen SET password='"+passbaru+"' where nip="+nip;
        int edittabel=stmt.executeUpdate(kueri);
        session.setAttribute("sessionpassword",(passbaru));
        response.sendRedirect("dosen_home.jsp?link=sukses");  
    }else
        {
        response.sendRedirect("dosen_home.jsp?link=salah");
        }
%>
</html>
