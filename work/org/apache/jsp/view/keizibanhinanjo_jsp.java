/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.72
 * Generated at: 2016-10-31 05:18:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class keizibanhinanjo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n");
      out.write("<link href=\"view/css/keiziban.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<title>避難所掲示板</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".auto-style1 {\r\n");
      out.write("\tmargin-left: 48px;\r\n");
      out.write("\tmargin-right: 7px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"header\">\r\n");
      out.write("避難所掲示板\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"main\">\r\n");
      out.write("<div class=\"info\">\r\n");
      out.write("<table class=\"info\"  align=\"left\" style=\"width: 499px\" >\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\">\r\n");
      out.write("住所:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("代表者名:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("代表者TEL:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("避難所状況:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("必要な物資:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("備考:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"width: 121px\" >\r\n");
      out.write("更新日:\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 300px\">\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("<img alt=\"避難所\" height=\"307\" src=\"view/img/hinanjo_photo.jpg\" width=\"316\" class=\"auto-style1\"/>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"comment\">\r\n");
      out.write("<table class=\"chat\" align=\"center\">\r\n");
      out.write("\t<tbody>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</tbody>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"coment1\">\r\n");
      out.write("<form action=\"\" method=\"POST\">\r\n");
      out.write("<table class=\"touroku\">\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("名前\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 607px\">\r\n");
      out.write("<input type=\"textbox\" name=\"name\"></input>\r\n");
      out.write("</td>\r\n");
      out.write("<td rowspan=\"3\"><input id=\"button\" type=\"submit\" value=\"投稿\"></input>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td >\r\n");
      out.write("コメント\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 607px\">\r\n");
      out.write("<textarea name=\"comment\" rows=\"6\" wrap=\"soft\" style=\"width:99%\"></textarea>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td >\r\n");
      out.write("パスワード\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"width: 607px\" >\r\n");
      out.write("<input type=\"textbox\" name=\"password\"></input>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<div class=\"button\" >\r\n");
      out.write("<button>戻る</button>\r\n");
      out.write("<button>Twitter</button>\r\n");
      out.write("<button>Facebook</button>\r\n");
      out.write("<button>更新</button>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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