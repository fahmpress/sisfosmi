<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nip=request.getParameter("nip");
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
String nama="";
String jk="";
String tmpt="";
String tgl="";
String bln="";
String thn="";
String alamat="";
String nope="";
String email="";                                       
ResultSet rs = st.executeQuery("SELECT * from tb_dosen where nip='"+nip+"'");
if (rs.next()) {
nama=rs.getString ("nm_dosen");
jk=rs.getString ("jk");
tmpt=rs.getString ("tmpt_lahir");
tgl=rs.getString ("tgl_lahir");
bln=rs.getString ("bln_lahir");
thn=rs.getString ("thn_lahir");
alamat=rs.getString ("alamat");
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
                                                    <b>NIP  </b><br /><br />
                                                    <b>NAMA  </b><br /><br />
                                                    <b>GENDER  </b><br /><br />
                                                    <b>TTL  </b><br /><br />
                                                    <b>ALAMAT  </b><br /><br />
                                                    <b>NO HP  </b><br /><br />
                                                    <b>EMAIL  </b><br /><br />
                                                    <b></b><br /><br />
                                            </td>
                                            <td>
                                                    : <%=nip%> <br /><br />
                                                    : <%=nama%> <br /><br />
                                                    : <%=jk%> <br /><br />
                                                    : <%=tmpt%>, <%=tgl%>-<%=bln%>-<%=thn%> <br /><br />
                                                    : <%=alamat%> <br /><br />
                                                    : <%=nope%> <br /><br />
                                                    : <%=email%> <br /><br />
                                                    <a href="admin_home.jsp?link=dosen"><i class="fa fa-reply"></i> Kembali</a> <br /><br />
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
