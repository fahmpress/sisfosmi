<%@ page import="java.sql.*" %>
<%
String nim=request.getParameter("nim");
String jur=request.getParameter("jur");
String connectionURL = "jdbc:mysql://localhost:3306/db_tugas_akhir" ;
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-file"></i> Tambah Data Nilai</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" method="post" action="admin_nilai_tambah_proses.jsp?nim=<%=nim%>">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                            <input class="form-control" type="text" name="nip" value="<%=nim%>" disabled="true"><br>
<div class="form-group">
<label>MATA KULIAH</label>
<select class="form-control" name="kd_matkul">
<option selected>Pilih Mata Kuliah</option>
<option></option>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
statement = connection.createStatement();
rs = statement.executeQuery("SELECT * FROM tb_matkul");
while (rs.next()) {
String isi=rs.getString(1);
%>
<option value="<%=isi%>"><%=rs.getString(2)%> - Semester <%=rs.getString(3)%></option>
<%
}
rs.close();
statement.close();
connection.close();
%>
</select>
                                            </div>        
                                            <label><b>NILAI :</b></label>
                                                <input class="form-control" type="text" name="nilai">
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </body>
</html>
