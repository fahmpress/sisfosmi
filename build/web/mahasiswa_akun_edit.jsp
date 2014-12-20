<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa where username='"+username+"' and password='"+password+"'");
if (rs.next ())
{
nim=rs.getString("nim");
}
%><!DOCTYPE html>

    
    <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-lock"></i> Edit Data Akun</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
        </div>
        <div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-user"></i> Ganti password
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="mahasiswa_akun_edit_proses.jsp?nim=<%=nim%>">
                                        <div class="form-group">
                                            <input class="form-control" type="password" name="passlama" placeholder="Password lama"><br>
                                            <input class="form-control" type="password" name="passbaru" placeholder="Password baru">
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                    </div>
                </div>
        </div>
        
    

