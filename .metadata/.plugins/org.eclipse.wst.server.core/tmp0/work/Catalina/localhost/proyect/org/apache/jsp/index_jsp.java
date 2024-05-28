/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.23
 * Generated at: 2024-05-27 17:11:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>CarpiCool</title>\r\n");
      out.write("<link href=\"style.css\"  rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"imagen\">\r\n");
      out.write("        <div class=\"contenido\">\r\n");
      out.write("            <header class=\"cuadro\">\r\n");
      out.write("                <h1 class=\" titulo\"> CARPICOOl</h1>\r\n");
      out.write("            </header>\r\n");
      out.write("            <nav >   \r\n");
      out.write("                <ul class=\"do\">\r\n");
      out.write("                <li class=\"option\"> <a href=\"mercado.jsp\" class=\"lor\">Mercado</a></li>\r\n");
      out.write("                <li class=\"option\"> <a href=\"cat.jsp\" class=\"lor\">Categoria</a></li>\r\n");
      out.write("                 <li class=\"option\"> <a href=\"login.jsp\" class=\"lor\">Login</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("             <aside class=\"aside-float\"><h2>Linkedin</h2>\r\n");
      out.write("             <a href=\"https://www.linkedin.com/in/david-cabrera-8ab383310/?trk=public-profile-join-page\">\r\n");
      out.write("              Bryan Santillan\r\n");
      out.write("        </a></aside>\r\n");
      out.write("            <div class=\"text-content\">\r\n");
      out.write("            <p>Bienvenido a la página número uno de carpinteria:</p>\r\n");
      out.write("            <p>\"Artesanía en Madera, Calidad que Perdura\"</p>\r\n");
      out.write("<p>\"Transformando Madera en Obras de Arte\"</p>\r\n");
      out.write("<p>\"Tradición y Excelencia en Carpintería\"</p>\r\n");
      out.write("<p>\"Innovación y Maestría en Cada Corte\"</p>\r\n");
      out.write("<p>\"Creando Espacios con Madera y Pasión\"</p>\r\n");
      out.write("<p>\"Carpintería de Confianza, Resultados Extraordinarios\"</p>\r\n");
      out.write("<p>\"Dando Vida a la Madera, Dando Vida a Tu Hogar\"</p>\r\n");
      out.write("<p>\"Tu Visión, Nuestra Madera\"</p>\r\n");
      out.write("<p>\"Maestros de la Madera, Artesanos de Tu Hogar\"</p>\r\n");
      out.write("<p>\"La Belleza de la Madera, la Precisión de la Artesanía\"</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <footer class=\"footer\"> Para mas información llamar al numero: 023213123213</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
