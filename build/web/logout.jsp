<META HTTP-EQUIV=?Refresh?>
<%
session.removeAttribute("sessionusername");
session.removeAttribute("sessionpassword");
session.invalidate();
response.sendRedirect("index.jsp");
%>


