<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Edit Data Dosen</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
        
                
               <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <center>
                            <a href="admin_home.jsp?link=dosen_tambah"><i class="fa fa-file"></i> Tambah data Dosen</a>
                            </center>
                         </div>
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Filter data berdasarkan NIP
                        </div>
                         <div class="panel-body">
                            <form role="form" method="post" action="admin_home.jsp?link=dosen_cari">
                            <input class="form-control" type="text" name="nip" placeholder="Masukan NIP"><br>
                            <button type="submit" class="btn btn-default">Submit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                            </form>
                         </div>
                    </div>
                </div>
               </div>
		
</body>
</html>
