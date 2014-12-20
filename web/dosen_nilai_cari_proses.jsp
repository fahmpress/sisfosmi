<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nip=request.getParameter("nip");
String angkatan=request.getParameter("angkatan");
String jurusan=request.getParameter("jurusan");
String matkul=request.getParameter("matkul");
String nm_matkul="";
String sks="";
String nm_jurusan="";
String semester="";
String nm_mhs="";
String nilai="";
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st=myConn.createStatement();
ResultSet rs = st.executeQuery("select * from tb_dosen, tb_matkul, tb_nilai, tb_mahasiswa, tb_jurusan where tb_dosen.nip=tb_matkul.nip and tb_matkul.kd_matkul=tb_nilai.kd_matkul and tb_nilai.nim=tb_mahasiswa.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_dosen.nip='"+nip+"' and tb_mahasiswa.thn_masuk='"+angkatan+"' and tb_jurusan.kd_jurusan='"+jurusan+"' and tb_matkul.kd_matkul='"+matkul+"'");
if (rs.next()) {
    nm_matkul=rs.getString("nm_matkul");
    sks=rs.getString("sks");
    nm_jurusan=rs.getString("nm_jurusan");
    semester=rs.getString("semester");
    nm_mhs=rs.getString("nm_mhs");
    nilai=rs.getString("nilai");
}
%>
<html>
    <body>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Data Nilai kelas</h3>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-5">
                <div class="table-responsive">
                    <table class="table">
                        <th>
                        MATA KULIAH<br><br>
                        SKS<br><br>
                        JURUSAN<br><br>
                        ANGKATAN<br><br>
                        SEMESTER
                        </th><br><br>
                                        
                        <td>
                        : <%=nm_matkul%><br><br>
                        : <%=sks%><br><br>
                        : <%=nm_jurusan%><br><br>
                        : <%=angkatan%><br><br>
                        : <%=semester%>
                        </td>
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
                                        <th>NAMA MAHASISWA</th>
                                        <th><center>NILAI</center></th>
                                        </tr>
                                    </thead>    
                                    <tbody>    
                                        <%
                                        ResultSet rs2 = st.executeQuery("select * from tb_dosen, tb_matkul, tb_nilai, tb_mahasiswa, tb_jurusan where tb_dosen.nip=tb_matkul.nip and tb_matkul.kd_matkul=tb_nilai.kd_matkul and tb_nilai.nim=tb_mahasiswa.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_dosen.nip='"+nip+"' and tb_mahasiswa.thn_masuk='"+angkatan+"' and tb_jurusan.kd_jurusan='"+jurusan+"' and tb_matkul.kd_matkul='"+matkul+"'");
                                        while (rs2.next()) {
					out.println("<tr>");
					out.println("<td>" + rs2.getString("nm_mhs") + "</td>");
                                        out.println("<td><center>" + rs2.getString("nilai") + "</center></td>");
                                        out.println("</tr>");
					}
					%>
                                    </tbody>
                                </table>
                            </div>
			</div>
                    </div>
                </div>
            </div>
    </body>
</html>
