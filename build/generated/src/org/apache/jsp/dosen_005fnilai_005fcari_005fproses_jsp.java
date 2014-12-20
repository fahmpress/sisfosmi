package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class dosen_005fnilai_005fcari_005fproses_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("\n");

ResultSet myResultSet=null;
String nip=request.getParameter("nip");
String angkatan=request.getParameter("angkatan");
String jurusan=request.getParameter("jurusan");
String matkul=request.getParameter("matkul");
String nm_matkul="";
String semester="";
String sks="";
String nm_jurusan="";
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_tugas_akhir", "root", "");
Statement st=myConn.createStatement();
ResultSet rs1 = st.executeQuery("select tb_dosen.nm_dosen, tb_matkul.nm_matkul, tb_matkul.semester, tb_matkul.sks, tb_jurusan.nm_jurusan, tb_mahasiswa.thn_masuk, tb_matkul.kd_matkul, tb_mahasiswa.nm_mhs, tb_nilai.nilai from tb_dosen, tb_matkul, tb_nilai, tb_mahasiswa, tb_jurusan where tb_dosen.nip=tb_matkul.nip and tb_matkul.kd_matkul=tb_nilai.kd_matkul and tb_nilai.nim=tb_mahasiswa.nim and tb_mahasiswa.kd_jurusan=tb_jurusan.kd_jurusan and tb_dosen.nip='"+nip+"' and tb_mahasiswa.thn_masuk='"+angkatan+"' and tb_jurusan.kd_jurusan='"+jurusan+"' and tb_matkul.kd_matkul='"+matkul+"'");
if (rs1.next()) {
    nm_matkul=rs1.getString("nm_matkul");
    semester=rs1.getString("semester");
    sks=rs1.getString("sks");
    nm_jurusan=rs1.getString("jurusan");
}

      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <h3 class=\"page-header\">Data Nilai kelas ");
      out.print(nip);
      out.write(' ');
      out.print(jurusan);
      out.write(' ');
      out.print(angkatan);
      out.write(' ');
      out.print(matkul);
      out.write("</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.col-lg-12 -->\n");
      out.write("                </div>\n");
      out.write("                <!-- /.row -->\n");
      out.write("            </div>\n");
      out.write("<div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("                                <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                        <th><center>NAMA MAHASISWA</center></th>\n");
      out.write("                                        <th><center>NILAI</center></th>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                        \n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </div>\n");
      out.write("\t\t</div>\n");
      out.write("        </div>\n");
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
