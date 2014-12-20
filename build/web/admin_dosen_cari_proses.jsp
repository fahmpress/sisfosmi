<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String nip=request.getParameter("nip");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st=myConn.createStatement();
ResultSet rs1 = st.executeQuery("SELECT * FROM tb_dosen where nip like '"+nip+"'");
if (rs1.next()) {
response.sendRedirect("admin_home.jsp?link=dosen_cari_tampil&&nip="+nip);
}
%>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Data Dosen</h3>
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
                                        <th><center>NIP</center></th>
                                        <th><center>NAMA</center></th>
                                        <th><center>GENDER</center></th>
                                        <th><center>EMAIL</center></th>
                                        <th><center></center></th>
                                        <th><center></center></th>
                                        <th><center></center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * from tb_dosen where nip='"+nip+"'");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("nip") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_dosen") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jk") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("email") + "</center></td>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=dosen_detail&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='detail'><i class='fa fa-share'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=dosen_edit&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip'  data-placement='top' title='edit'><i class='fa fa-edit'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=dosen_hapus&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='hapus'><i class='fa fa-trash-o'></i></button></div></form>");
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
