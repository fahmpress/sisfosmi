<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nim=request.getParameter("nim");
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
String tmpt_l="";
String tgl_l="";
String bln_l="";
String thn_l="";
String nama="";
String jurusan="";
String angkatan="";
String alamat="";
String jk="";                                        
String nope="";                                        
String email="";                                        
String kdjur="";                                        
ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim='"+nim+"'");
if (rs.next()) {
kdjur=rs.getString ("kd_jurusan");
tmpt_l=rs.getString ("tmpt_lahir");
tgl_l=rs.getString ("tgl_lahir");
bln_l=rs.getString ("bln_lahir");
thn_l=rs.getString ("thn_lahir");
nama=rs.getString ("nm_mhs");
jurusan=rs.getString ("nm_jurusan");
angkatan=rs.getString ("thn_masuk");
alamat=rs.getString ("alamat");
jk=rs.getString ("jk");
nope=rs.getString ("no_hp");
email=rs.getString ("email");
}                                        
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Detail data <%=nama%></h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-7">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td>
                                                    <b>NIM  </b><br /><br />
                                                    <b>NAMA  </b><br /><br />
                                                    <b>JURUSAN  </b><br /><br />
                                                    <b>ANGKATAN  </b><br /><br />
                                                    <b>TTL  </b><br /><br />
                                                    <b>GENDER  </b><br /><br />
                                                    <b>ALAMAT  </b><br /><br />
                                                    <b>NO HP  </b><br /><br />
                                                    <b>EMAIL  </b><br /><br />
                                                    <b></b><br /><br />
                                            </td>
                                            <td>
                                                    : <%=nim%> <br /><br />
                                                    : <%=nama%> <br /><br />
                                                    : <%=jurusan%> <br /><br />
                                                    : <%=angkatan%> <br /><br />
                                                    : <%=tmpt_l%>, <%=tgl_l%>-<%=bln_l%>-<%=thn_l%> <br /><br />
                                                    : <%=jk%> <br /><br />
                                                    : <%=alamat%> <br /><br />
                                                    : <%=nope%> <br /><br />
                                                    : <%=email%> <br /><br />
                                                    <a href="admin_home.jsp?link=mahasiswa"><i class="fa fa-reply"></i> Kembali</a> <br /><br />
                                            </td>
                                        </tr>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>
		
</body>
</html>
