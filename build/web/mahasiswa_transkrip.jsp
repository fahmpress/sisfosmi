<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMaximumFractionDigits(2);
    nf.setMinimumFractionDigits(2);
    
String nim ="";
String nm_mhs ="";
String jurusan ="";
String thn_masuk ="";
String semester ="";
int sub_sks1 =0;
int sub_sks2 =0;
int sub_sks3 =0;
int sub_sks4 =0;
int sub_sks5 =0;
int sub_sks6 =0;
double angka_mutu=0;
double sub_mutu1=0;
double sub_mutu2=0;
double sub_mutu3=0;
double sub_mutu4=0;
double sub_mutu5=0;
double sub_mutu6=0;
double sub_ipk1=0;
double sub_ipk2=0;
double sub_ipk3=0;
double sub_ipk4=0;
double sub_ipk5=0;
double sub_ipk6=0;
if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tb_mahasiswa, tb_jurusan where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and username='"+username+"' and password='"+password+"'");
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
                        <h3 class="page-header">Transkrip Akademik</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
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
                                </table>
                        </div>
				</div>
				<div class="col-lg-6">
						<div class="table-responsive">
                                <table class="table table-hover">
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
                        <div class="panel-heading">
                            <h4><b>Semester I</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs1 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+1+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs1.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs1.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs1.getString ("nm_matkul") + "</td>");
												int sks = rs1.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs1.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
                                                                                                    sub_mutu1 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs1.close();
												%>
											<tr>
												<% 
												ResultSet rsa1 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+1+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa1.next ())
												{
												sub_sks1 = rsa1.getInt("sub_sks");
												}
												if ((sub_mutu1) == 0) {}
													else {sub_ipk1=sub_mutu1/sub_sks1;}
												%>	
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks1%></center></th>
												<th><center><%=nf.format(sub_ipk1)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				<div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><b>Semester 2</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs2 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+2+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs2.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs2.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs2.getString ("nm_matkul") + "</td>");
												int sks = rs2.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs2.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
																									sub_mutu2 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs2.close();
												%>
											<tr>
												<% 
												ResultSet rsa2 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+2+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa2.next ())
												{
												sub_sks2 = rsa2.getInt("sub_sks");
												}
												if ((sub_mutu2) == 0) {}
													else {sub_ipk2=sub_mutu2/sub_sks2;}
												%>	
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks2%></center></th>
												<th><center><%=nf.format(sub_ipk2)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				
		</div>
		
		<div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><b>Semester 3</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs3 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+3+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs3.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs3.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs3.getString ("nm_matkul") + "</td>");
												int sks = rs3.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs3.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
                                                                                                    sub_mutu3 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs3.close();
												%>
											<tr>
												<% 
												ResultSet rsa3 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+3+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa3.next ())
												{
												sub_sks3 = rsa3.getInt("sub_sks");
												}
												if ((sub_mutu3) == 0) {}
													else {sub_ipk3=sub_mutu3/sub_sks3;}
												%>
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks3%></center></th>
												<th><center><%=nf.format(sub_ipk3)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				<div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><b>Semester 4</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs4 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+4+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs4.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs4.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs4.getString ("nm_matkul") + "</td>");
												int sks = rs4.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs4.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
																									sub_mutu4 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs4.close();
												%>
											<tr>
												<% 
												ResultSet rsa4 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+4+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa4.next ())
												{
												sub_sks3 = rsa4.getInt("sub_sks");
												}
													if ((sub_mutu4) == 0) {}
													else {sub_ipk3=sub_mutu4/sub_sks3;}
												%>	
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks3%></center></th>
												<th><center><%=nf.format(sub_ipk4)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				
		</div>
        
		<div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><b>Semester 5</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs5 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+5+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs5.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs5.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs5.getString ("nm_matkul") + "</td>");
												int sks = rs5.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs5.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
                                                                                                    sub_mutu5 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs5.close();
												%>
											<tr>
												<% 
												ResultSet rsa5 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+5+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa5.next ())
												{
												sub_sks5 = rsa5.getInt("sub_sks");
												}
												if ((sub_mutu5) == 0) {}
													else {sub_ipk5=sub_mutu5/sub_sks5;}
												%>
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks5%></center></th>
												<th><center><%=nf.format(sub_ipk5)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				<div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><b>Semester 6</b></h4>
                        </div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th><center>Kode</center></th>
												<th>Nama Mata Kuliah</th>
												<th><center>SKS</center></th>
												<th><center>Nilai</center></th>
											</tr>
										</thead>
										<tbody>
												<%
                                                                                                ResultSet rs6 = st.executeQuery("select * from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+6+"' and tb_mahasiswa.nim='"+nim+"'");
												while (rs6.next()) {
												out.println("<tr>");
												out.println("<td><center>" + rs6.getString ("kd_matkul") + "</center></td>");
												out.println("<td>" + rs6.getString ("nm_matkul") + "</td>");
												int sks = rs6.getInt(24);
                                                                                                out.println("<td><center>" +sks+ "</center></td>");
                                                                                                String nilai = rs6.getString(20);
                                                                                                out.println("<td><center>" +nilai+ "</center></td>");
                                                                                                    if (nilai.equals("A")){angka_mutu=sks*4;} 
                                                                                                        else if (nilai.equals("B")){angka_mutu=sks*3;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("C")){angka_mutu=sks*2;} 
                                                                                                        else if (nilai.equals("D")){angka_mutu=sks*1;} 
                                                                                                        else if (nilai.equals("E")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("0")){angka_mutu=sks*0;} 
                                                                                                        else if (nilai.equals("")){angka_mutu=sks*0;}
																									sub_mutu6 += angka_mutu;
                                                                                                out.println("</tr>");
												}
                                                                                                rs6.close();
												%>
											<tr>
												<% 
												ResultSet rsa6 = st.executeQuery("select sum(tb_matkul.sks) as sub_sks from tb_jurusan, tb_mahasiswa, tb_nilai, tb_matkul where tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_mahasiswa.nim=tb_nilai.nim and tb_nilai.kd_matkul=tb_matkul.kd_matkul and tb_matkul.semester='"+6+"' and tb_mahasiswa.nim='"+nim+"'");
												if (rsa6.next ())
												{
												sub_sks6 = rsa6.getInt("sub_sks");
												}
													if ((sub_mutu6) == 0) {}
													else {sub_ipk6=sub_mutu6/sub_sks6;}
												%>	
												<th></th>
												<th>TOTAL</th>
												<th><center><%=sub_sks6%></center></th>
												<th><center><%=nf.format(sub_ipk6)%></center></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                    </div>
				</div>
				
		</div>
		<%
		int total_sks=sub_sks1+sub_sks2+sub_sks3+sub_sks4+sub_sks5+sub_sks6;
		double total_mutu=sub_mutu1+sub_mutu2+sub_mutu3+sub_mutu4+sub_mutu5+sub_mutu6;
		double total_ipk=0;
		
			if ((total_mutu) == 0) {}
				else {total_ipk=total_mutu/total_sks;}
		%>
		<div class="col-lg-6">
						<div class="table-responsive">
                                <table class="table">
									<tr>
                                        <th>Total Kredit / SKS</th>
                                        <th><%=total_sks%></th>
                                    </tr>
                                    <tr>
                                        <th>Indeks Prestasi Kumulatif</th>
                                        <th><%=nf.format(total_ipk)%></th>
                                    </tr>
                                </table>
                        </div>
				</div>
</body>
</html>
