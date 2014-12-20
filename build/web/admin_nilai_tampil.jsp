<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
String jur=request.getParameter("jurusan");
String akt=request.getParameter("angkatan");
String nim=request.getParameter("nim");
String jur2="";
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();
ResultSet rs2 = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_jurusan.kd_jurusan='"+jur+"' and thn_masuk='"+akt+"'");
while (rs2.next()) {
jur2=rs2.getString("nm_jurusan");
}
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Edit nilai Mahasiswa <b><%=jur2%> <%=akt%></b></h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                        <th><center>NIM</center></th>
                                        <th><center>NAMA</center></th>
                                        <th><center>JURUSAN</center></th>
                                        <th><center>ANGKATAN</center></th>
                                        <th><center></center></th>
                                        <th><center></center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_jurusan.kd_jurusan='"+jur+"' and thn_masuk='"+akt+"'");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nim") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_mhs") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_jurusan") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("thn_masuk") + "</center></td>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=nilai_tampil_detail&&nim="+ rs.getString ("nim") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='edit nilai "+ rs.getString ("nm_mhs") +"'><i class='fa fa-edit'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=nilai_tambah&&nim="+ rs.getString ("nim") +"&&jur="+jur+"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip'  data-placement='top' title='tambah nilai "+ rs.getString ("nm_mhs") +"'><i class='fa fa-file'></i></button></div></form>");
                                        }
                                        rs.close();
                                        %>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>
		
</body>
</html>
