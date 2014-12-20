<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim=request.getParameter("nim");
String nm_mhs ="";
String jurusan ="";
String thn_masuk ="";
String tmpt_lahir ="";
String tgl_lahir ="";
String bln_lahir ="";
String thn_lahir ="";  
String alamat ="";
String jk ="";
String no_hp ="";
String email ="";
String foto ="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim='"+nim+"'");
if (rs.next ())
{
nim = rs.getString("nim");
nm_mhs = rs.getString("nm_mhs");
jurusan = rs.getString("kd_jurusan");
thn_masuk = rs.getString("thn_masuk");
tmpt_lahir = rs.getString("tmpt_lahir");
tgl_lahir = rs.getString("tgl_lahir");
bln_lahir = rs.getString("bln_lahir");
thn_lahir = rs.getString("thn_lahir");
alamat = rs.getString("alamat");
jk = rs.getString("jk");
no_hp = rs.getString("no_hp");
email = rs.getString("email");
foto = rs.getString("foto");
}
%><!DOCTYPE html>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-pencil"></i> Edit Data Mahasiswa</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                              Perbaharui Data <%=nm_mhs%>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" method="post" action="admin_mahasiswa_edit_proses.jsp?nim=<%=nim%>">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                                <input class="form-control" type="text" name="nim" value="<%=nim%>" disabled="true"><br>
                                            <label><b>NAMA :</b></label>
                                                <input class="form-control" type="text" name="nama" value="<%=nm_mhs%>"><br>
                                            <label><b>JURUSAN :</b></label>
                                                <input class="form-control" type="text" name="jurusan" value="<%=jurusan%>"><br>
                                            <label><b>ANGKATAN :</b></label>
                                                <input class="form-control" type="text" name="angkatan" value="<%=thn_masuk%>"><br>
                                            <label><b>TTL :</b></label>
                                                <input class="form-control" type="text" name="tgl_lahir" value="<%=tgl_lahir%>">
                                                <input class="form-control" type="text" name="bln_lahir" value="<%=bln_lahir%>">
                                                <input class="form-control" type="text" name="thn_lahir" value="<%=thn_lahir%>"><br>
                                            <label><b>GENDER :</b></label>
                                                <input class="form-control" type="text" name="jk" value="<%=jk%>"><br>
                                            <label><b>ALAMAT :</b></label>
                                                <input class="form-control" type="text" name="alamat" value="<%=alamat%>"><br>
                                            <label><b>NO HP :</b></label>
                                                <input class="form-control" type="text" name="no_hp" value="<%=no_hp%>"><br>
                                            <label><b>EMAIL :</b></label>
                                                <input class="form-control" type="text" name="email" value="<%=email%>">
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
