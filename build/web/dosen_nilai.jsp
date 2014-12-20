<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
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
                        <h3 class="page-header">Cek Nilai Mahasiswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
                
               <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter data per Kelas
                        </div>
                         <div class="panel-body">
                            <form role="form" method="post" action="dosen_home.jsp?link=nilai_tampil&&nip=<%=username%>">

<div class="form-group">
<select class="form-control" name="matkul">
<option selected>Pilih Mata Kuliah</option>
<option></option>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "");
statement = connection.createStatement();
rs = statement.executeQuery("SELECT * FROM tb_matkul, tb_dosen where tb_matkul.nip=tb_dosen.nip and tb_dosen.nip='"+username+"'");
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
                            <div class="form-group">
                                    <select class="form-control" name="jurusan">
                                        <option selected>Pilih Jurusan</option>
                                        <option></option>
                                        <option value="11">Admin</option>
                                        <option value="21">Mesin</option>
                                        <option value="31">Tekom</option>
                                        <option value="32">TKJ</option>
                                        <option value="41">Sipil</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="angkatan">
                                        <option selected>Pilih Angkatan</option>
                                        <option></option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        
                                </select>
                            </div>

                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
               </div>
           	
</body>
</html>
