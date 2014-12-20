<%@ page import="java.sql.*" %>
<%
String nim=request.getParameter("nim");
String connectionURL = "jdbc:mysql://localhost:3306/db_tugas_akhir" ;
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-file"></i> Tambah Data Bayaran</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
        <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" method="post" action="admin_bayaran_tambah_proses.jsp?nim=<%=nim%>">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                            <input class="form-control" type="text" name="nip" value="<%=nim%>" disabled="true"><br>
<div class="form-group">
<label>Semester</label>
<select class="form-control" name="semester">
<option selected>Pilih Semester</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
</select>
                                            </div>        
                                            <label><b>JUMLAH BAYAR :</b></label>
                                                <input class="form-control" type="text" name="bayar">
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
