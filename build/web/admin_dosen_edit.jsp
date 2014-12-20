<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String nip=request.getParameter("nip");
String nama="";
String jk="";
String tmpt="";
String tgl="";
String bln="";
String thn="";
String alamat="";
String nope="";
String email="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_dosen where nip='"+nip+"'");
if (rs.next ())
{
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
%><!DOCTYPE html>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-pencil"></i> Edit Data Dosen</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                              Perbaharui Data <%=nama%>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" method="post" action="admin_dosen_edit_proses.jsp?nip=<%=nip%>">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                                <input class="form-control" type="text" name="nip" value="<%=nip%>" disabled="true"><br>
                                            <label><b>NAMA :</b></label>
                                                <input class="form-control" type="text" name="nama" value="<%=nama%>"><br>
                                            <label><b>GENDER :</b></label>
                                                <input class="form-control" type="text" name="jk" value="<%=jk%>"><br>
                                            <label><b>TTL :</b></label>
                                                <input class="form-control" type="text" name="tgl" value="<%=tgl%>">
                                                <input class="form-control" type="text" name="bln" value="<%=bln%>">
                                                <input class="form-control" type="text" name="thn" value="<%=thn%>"><br>
                                            <label><b>ALAMAT :</b></label>
                                                <input class="form-control" type="text" name="alamat" value="<%=alamat%>"><br>
                                            <label><b>NO HP :</b></label>
                                                <input class="form-control" type="text" name="nope" value="<%=nope%>"><br>
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
