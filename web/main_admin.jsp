<%
    String cek=request.getParameter("menu");
     if(cek.equals("")){
        %>
        <%@include file="admin_profile.jsp" %> 
        <%
        }
    
     else if(cek.equals("home")){
            %>
            <%@include file="admin_profile.jsp" %> 
            <%
           } 
    
     else if(cek.equals("mahasiswa")){
            %>
            <%@include file="admin_mahasiswa.jsp" %> 
            <%
           }
     
     else if(cek.equals("mhs_tampil")){
            %>
            <%@include file="admin_mahasiswa_tampil.jsp" %> 
            <%
           }
     
     else if(cek.equals("detail")){
            %>
            <%@include file="admin_mahasiswa_tampil_detail.jsp" %> 
            <%
           }
     
     else if(cek.equals("edit")){
            %>
            <%@include file="admin_mahasiswa_edit.jsp" %> 
            <%
           }
     
     else if(cek.equals("hapus")){
            %>
            <%@include file="admin_mahasiswa_hapus_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("tambah")){
            %>
            <%@include file="admin_mahasiswa_tambah.jsp" %> 
            <%
           }
     
     else if(cek.equals("cari_gagal")){
            %>
            <%@include file="admin_mahasiswa_cari_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen")){
            %>
            <%@include file="admin_dosen.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen_tambah")){
            %>
            <%@include file="admin_dosen_tambah.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen_cari")){
            %>
            <%@include file="admin_dosen_cari_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen_detail")){
            %>
            <%@include file="admin_dosen_tampil_detail.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen_edit")){
            %>
            <%@include file="admin_dosen_edit.jsp" %> 
            <%
           }
     
     else if(cek.equals("dosen_hapus")){
            %>
            <%@include file="admin_dosen_hapus_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai")){
            %>
            <%@include file="admin_nilai.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai_tampil")){
            %>
            <%@include file="admin_nilai_tampil.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai_tampil_detail")){
            %>
            <%@include file="admin_nilai_tampil_detail.jsp" %> 
            <%
           }
     
     else if(cek.equals("cari_input_nilai")){
            %>
            <%@include file="admin_nilai_cari_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai_edit")){
            %>
            <%@include file="admin_nilai_edit.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai_cari")){
            %>
            <%@include file="admin_nilai_cari_proses.jsp" %> 
            <%
           }
     
     else if(cek.equals("nilai_tambah")){
            %>
            <%@include file="admin_nilai_tambah.jsp" %> 
            <%
           }
     
     else if(cek.equals("bayaran")){
            %>
            <%@include file="admin_bayaran.jsp" %> 
            <%
           }
     
     else if(cek.equals("bayaran_tampil")){
            %>
            <%@include file="admin_bayaran_tampil.jsp" %> 
            <%
           }
     
     else if(cek.equals("bayaran_tambah")){
            %>
            <%@include file="admin_bayaran_tambah.jsp" %> 
            <%
           }
        
           else{
           out.println("");
           }

           %>
