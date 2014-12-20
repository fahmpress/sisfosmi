<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim ="";
String nm_mhs ="";
String jurusan ="";
String thn_masuk ="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan");
if (rs.next ())
{
nim = rs.getString("nim");
nm_mhs = rs.getString("nm_mhs");
jurusan = rs.getString("nm_jurusan");
thn_masuk = rs.getString("thn_masuk");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Input Nilai Mahasiswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
                
               <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter data berdasarkan angkatan dan jurusan
                        </div>
                         <div class="panel-body">
                            <form role="form" method="post" action="admin_home.jsp?link=nilai_tampil">
                            <div class="form-group">
                                <label>Angkatan</label>
                                    <select class="form-control" name="angkatan">
                                        <option selected></option>
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
                            <div class="form-group">
                                <label>Jurusan</label>
                                    <select class="form-control" name="jurusan">
                                        <option selected></option>
                                        <option value="11">Admin</option>
                                        <option value="21">Mesin</option>
                                        <option value="31">Tekom</option>
                                        <option value="32">TKJ</option>
                                        <option value="41">Sipil</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter data berdasarkan NIM
                        </div>
                         <div class="panel-body">
                            <form role="form" method="post" action="admin_home.jsp?link=nilai_cari">
                            <input class="form-control" type="text" name="nim" placeholder="Masukan NIM"><br>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
               </div>
		
</body>
</html>
