package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.text.SimpleDateFormat;
import java.sql.*;

public final class dosen_005fmatkul_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

if ((String)session.getAttribute("sessionusername")==null && (String)session.getAttribute("sessionpassword")==null){
response.sendRedirect("index.jsp");
}
String username = (String)session.getAttribute("sessionusername");
String password = (String)session.getAttribute("sessionpassword");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st = con.createStatement();

      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <h3 class=\"page-header\">Mata Kuliah</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("        \t\n");
      out.write("        <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("\t\t\t\t<table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                    <thead>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("                                            <th><center>KODE</center></th>\n");
      out.write("                                            <th><center>MATA KULIAH</center></th>\n");
      out.write("                                            <th><center>SEMESTER</center></th>\n");
      out.write("                                            <th><center>SKS</center></th>\n");
      out.write("                                            <th><center>JURUSAN</center></th>\n");
      out.write("                                            <th><center>ANGKATAN</center></th>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("\t\t\t\t\t");

                                        ResultSet rs = st.executeQuery("select * from tb_dosen, tb_matkul, tb_nilai, tb_mahasiswa, tb_jurusan where tb_dosen.nip=tb_matkul.nip and tb_matkul.kd_matkul=tb_nilai.kd_matkul and tb_nilai.nim=tb_mahasiswa.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_dosen.nip='"+username+"'");
                                        while (rs.next()) {
					out.println("<tr>");
					out.println("<td><center>" + rs.getString ("kd_matkul") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nm_matkul") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("semester") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("sks") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jurusan") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("thn_masuk") + "</center></td>");
                                        out.println("</tr>");
					}
                                        rs.close();
					
      out.write("\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("                                    </tbody>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("                            </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
