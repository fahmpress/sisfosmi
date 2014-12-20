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
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=detail&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='detail'><i class='fa fa-share'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=edit&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip'  data-placement='top' title='edit'><i class='fa fa-edit'></i></button></div></form>");
                                        out.println("<td><center><form role='form' method='post' action='admin_home.jsp?link=hapus&&nip="+ rs.getString ("nip") +"'><div class='tooltip-demo'><button type='submit' class='btn btn-default' data-toggle='tooltip' data-placement='top' title='hapus'><i class='fa fa-trash-o'></i></button></div></form>");
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
