<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nim=request.getParameter("nim");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st=myConn.createStatement();
ResultSet rs1 = st.executeQuery("SELECT * FROM tb_mahasiswa where nim like '"+nim+"'");
if (rs1.next()) {
response.sendRedirect("admin_home.jsp?link=hasil_cari&&nim="+nim);
}
%>
<div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Data Mahasiswa</h3>
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
                                        ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim='"+nim+"'");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nim") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_mhs") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_jurusan") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("thn_masuk") + "</center></td>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=nilai_tampil_detail&&nim="+ rs.getString ("nim") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='edit nilai'><i class='fa fa-edit'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=nilai_tambah&&nim="+ rs.getString ("nim") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip'  data-placement='top' title='tambah nilai'><i class='fa fa-file'></i></button></div></form>");
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
</html>
