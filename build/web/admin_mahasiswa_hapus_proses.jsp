<html>
    <body>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st=myConn.createStatement();
String kueri="DELETE from tb_mahasiswa where nim="+nim;
int edittabel=st.executeUpdate(kueri);
response.sendRedirect("admin_home.jsp?link=mahasiswa");
%>

<div class="row">
                <div class="col-lg-8">
                    <div class="panel-body">
                            <div class="alert alert-success">
                                Data berhasil di hapus! <a href="admin_home.jsp?link=mahasiswa" class="alert-link">Kembali <i class="fa fa-reply fa-lg"></i></a>
                            </div>
                    </div>
                </div>
        </div>
    </body>
</html>
