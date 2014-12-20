<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
    DecimalFormat df = new DecimalFormat("###,###,###");
    
String nim =request.getParameter("nim");
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

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and nim='"+nim+"'");
if (rs.next ())
{
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
                        <h3 class="page-header">Bayaran Semester</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="col-lg-4">
                <div class="panel panel-default">
                        <div class="panel-body">
                            <center>
                            <a href="admin_home.jsp?link=bayaran_tambah&&nim=<%=nim%>"><i class="fa fa-shopping-cart"></i> Bayar Semester</a>
                            </center>
                         </div>
                    </div>
                    </div>
        </div>
        
            
        
                <div class="col-lg-6">
		<div class="table-responsive">
                                <table class="table">
					<tr>
                                        <th>Nama</th>
                                        <td><%=nm_mhs%></td>
                                    </tr>
                                    <tr>
                                        <th>NIM</th>
                                        <td><%=nim%></td>
                                    </tr>
                                    <tr>
                                        <th>Program Studi</th>
                                        <td><%=jurusan%></td>
                                    </tr>
                                    <tr>
                                        <th>Tahun Masuk</th>
                                        <td><%=thn_masuk%></td>
                                    </tr>
                                </table>
                        </div>
				</div>
		
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Semester</center></th>
												<th><center>Bayaran</center></th>
												<th><center>Lunas</center></th>
											</tr>
										</thead>
										<tbody>
												<% int bayar=0;
                                                ResultSet rs1 = st.executeQuery("SELECT tb_mahasiswa.nm_mhs, tb_bayaran.semester, tb_bayaran.bayar FROM tb_mahasiswa, tb_bayaran where tb_mahasiswa.nim=tb_bayaran.nim and tb_mahasiswa.nim='"+nim+"'");
												while (rs1.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs1.getString ("semester") + "</center></td>");
                                                                                                bayar = rs1.getInt("bayar");
												out.println("<td><center>Rp. " + df.format(bayar) + "</center></td>");
												String ket="";
												int lunas=rs1.getInt("bayar");
												if (lunas==(0)){ket=("BELUM");}
                                                                                                else {ket=("YA");}
												
                                                out.println("<td><center>" +ket+ "</center></td>");
                                                out.println("</tr>");
												}
                                                rs1.close();
												%>
											<tr>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				
				
		</div>
		
</body>
</html>
