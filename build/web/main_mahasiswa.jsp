<%
    String cek=request.getParameter("menu");
     if(cek.equals("")){
        %>
        <%@include file="mahasiswa_profile.jsp" %> 
        <%
        }
            else if(cek.equals("home")){
            %>
            <%@include file="mahasiswa_profile.jsp" %> 
            <%
           } 
    
    else if(cek.equals("transkrip")){
            %>
            <%@include file="mahasiswa_transkrip.jsp" %> 
            <%
           } 
		   
	else if(cek.equals("bayaran")){
            %>
            <%@include file="mahasiswa_bayaran.jsp" %> 
            <%
           } 
        
        else if(cek.equals("profile")){
            %>
            <%@include file="mahasiswa_profile_edit.jsp" %> 
            <%
           } 
        
        else if(cek.equals("akun")){
            %>
            <%@include file="mahasiswa_akun_edit.jsp" %> 
            <%
           } 
        
        else if(cek.equals("salah")){
            %>
            <%@include file="mahasiswa_akun_edit_salah.jsp" %> 
            <%
           } 
        
        else if(cek.equals("sukses")){
            %>
            <%@include file="mahasiswa_akun_edit_sukses.jsp" %> 
            <%
           } 
        
           else{
           out.println("");
           }

           %>
