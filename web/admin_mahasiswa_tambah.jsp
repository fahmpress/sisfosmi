<html>
    
    <body>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-file"></i> Tambah Data Mahasiswa</h3>
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
                                    <form role="form" method="post" action="admin_mahasiswa_tambah_proses.jsp">
                                        <div class="form-group">
                                            <label><b>NIM :</b></label>
                                                <input class="form-control" type="text" name="nim"><br>
                                            <label><b>NAMA :</b></label>
                                                <input class="form-control" type="text" name="nama"><br>
                                            <label><b>ANGKATAN :</b></label>
                                                <input class="form-control" type="text" name="angkatan"><br>
                                                <div class="form-group">
                                            <label>JURUSAN</label>
                                                <select class="form-control" name="jurusan">
                                                    <option selected></option>
                                                    <option value="11">Admin</option>
                                                    <option value="21">Mesin</option>
                                                    <option value="31">Tekom</option>
                                                    <option value="32">TKJ</option>
                                                    <option value="41">Sipil</option>
                                                </select>
                                            </div>
                                            <label><b>TEMPAT LAHIR :</b></label>
                                                <input class="form-control" type="text" name="tmpt_lhr"><br>
                                            <label><b>TTL :</b></label>
                                                <input class="form-control" type="text" name="tgl">
                                                <input class="form-control" type="text" name="bln">
                                                <input class="form-control" type="text" name="thn"><br>
                                            <div class="form-group">
                                            <label>Jenis Kelamin</label>
                                            <label class="radio-inline">
                                                <input type="radio" name="jk" id="optionsRadiosInline2" value="Laki-laki">Laki-laki
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="jk" id="optionsRadiosInline3" value="Perempuan">Perempuan
                                            </label>
                                            </div>
                                            <label><b>ALAMAT :</b></label>
                                                <input class="form-control" type="text" name="alamat"><br>
                                            <label><b>NO HP :</b></label>
                                                <input class="form-control" type="text" name="no_hp"><br>
                                            <label><b>EMAIL :</b></label>
                                                <input class="form-control" type="text" name="email">
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
