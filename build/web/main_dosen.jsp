<%
    String cek=request.getParameter("menu");
     if(cek.equals("")){
        %>
        <%@include file="dosen_profile.jsp" %> 
        <%
        }
     else if(cek.equals("home")){
            %>
            <%@include file="dosen_profile.jsp" %> 
            <%
           } 
    
    else if(cek.equals("transkrip")){
            %>
            <%@include file="mahasiswa_transkrip.jsp" %> 
            <%
           } 
    
    else if(cek.equals("matkul")){
            %>
            <%@include file="dosen_matkul.jsp" %> 
            <%
           } 
    
    else if(cek.equals("nilai")){
            %>
            <%@include file="dosen_nilai.jsp" %> 
            <%
           } 
    
    else if(cek.equals("nilai_tampil")){
            %>
            <%@include file="dosen_nilai_cari_proses.jsp" %> 
            <%
           }
    
    else if(cek.equals("akun")){
            %>
            <%@include file="dosen_akun_edit.jsp" %> 
            <%
           }
    
    else if(cek.equals("salah")){
            %>
            <%@include file="dosen_akun_edit_salah.jsp" %> 
            <%
           }
    
    else if(cek.equals("sukses")){
            %>
            <%@include file="dosen_akun_edit_sukses.jsp" %> 
            <%
           }
		   
	        
           else{
           out.println("");
           }

           %>
