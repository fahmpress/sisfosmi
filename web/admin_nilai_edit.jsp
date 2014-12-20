<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String kd_matkul=request.getParameter("kd_matkul");
String nim=request.getParameter("nim");
String nama="";
String jurusan="";
String angkatan="";
String nm_matkul="";
String nilai="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select tb_mahasiswa.nim, tb_mahasiswa.nm_mhs, tb_jurusan.nm_jurusan, tb_mahasiswa.thn_masuk, tb_matkul.nm_matkul, tb_nilai.nilai from tb_mahasiswa, tb_jurusan, tb_matkul, tb_nilai where tb_mahasiswa.nim=tb_nilai.nim and tb_jurusan.kd_jurusan=tb_mahasiswa.kd_jurusan and tb_matkul.kd_matkul=tb_nilai.kd_matkul and tb_mahasiswa.nim='"+nim+"' and tb_matkul.kd_matkul='"+kd_matkul+"'");
if (rs.next ())
{
    nama=rs.getString("nm_mhs");
    jurusan=rs.getString("nm_jurusan");
    angkatan=rs.getString("thn_masuk");
    nm_matkul=rs.getString("nm_matkul");
    nilai=rs.getString("nilai");
}
%><!DOCTYPE html>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-pencil"></i> Edit Nilai</h3>
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
                                    <form role="form" method="post" action="admin_nilai_edit_proses.jsp?nim=<%=nim%>&&kd_matkul=<%=kd_matkul%>">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                                <input class="form-control" type="text" name="nim" value="<%=nim%>" disabled="true"><br>
                                            <label><b>NAMA :</b></label>
                                                <input class="form-control" type="text" name="nama" value="<%=nama%>" disabled="true"><br>
                                            <label><b>JURUSAN :</b></label>
                                                <input class="form-control" type="text" name="jurusan" value="<%=jurusan%>" disabled="true"><br>
                                            <label><b>ANGKATAN :</b></label>
                                                <input class="form-control" type="text" name="angkatan" value="<%=angkatan%>" disabled="true"><br>
                                            <label><b>MATA KULIAH :</b></label>
                                                <input class="form-control" type="text" name="no_hp" value="<%=nm_matkul%>" disabled="true"><br>
                                            <label><b>NILAI :</b></label>
                                                <input class="form-control" type="text" name="nilai" value="<%=nilai%>">
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
