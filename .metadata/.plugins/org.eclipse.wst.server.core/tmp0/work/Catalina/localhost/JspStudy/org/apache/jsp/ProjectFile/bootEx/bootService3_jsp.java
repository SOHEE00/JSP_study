/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.100
 * Generated at: 2024-06-07 07:37:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ProjectFile.bootEx;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import joblistDb.joblistDao;
import joblistDb.joblistDo;
import StudentDb.StudentDo;
import java.util.ArrayList;

public final class bootService3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(4);
    _jspx_imports_classes.add("joblistDb.joblistDo");
    _jspx_imports_classes.add("StudentDb.StudentDo");
    _jspx_imports_classes.add("joblistDb.joblistDao");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      joblistDb.joblistDao jDao = null;
      synchronized (application) {
        jDao = (joblistDb.joblistDao) _jspx_page_context.getAttribute("jDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (jDao == null){
          jDao = new joblistDb.joblistDao();
          _jspx_page_context.setAttribute("jDao", jDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');

		//Dao에 접근하여, 전체 데이터를 가져오기
		ArrayList<joblistDo> v = jDao.getAllJoblist();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("	<div class=\"text-center mb-5\">\r\n");
      out.write("		<h1> 채용 정보 </h1>\r\n");
      out.write("		<p>국제사회에서의 경쟁력과 산업체에서 요구하는 실무능력을 갖춘 글로벌 응용 소프트웨어 프로그래머 양성을 교육목표로 하고 있습니다</p>\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<div class=\"row\">\r\n");
      out.write("	\r\n");
      out.write("	");


	
		for(int i =0; i < v.size(); i ++){
			
			//i번째 배열리스트 데이터를 가져와서 joblist 변수에 저장.
			joblistDo joblist = v.get(i);
	
      out.write("		\r\n");
      out.write("			 <div class=\"col\">\r\n");
      out.write("		      <div class=\"card\" style=\"width: 20rem; margin:auto;\">\r\n");
      out.write("		      <!-- 카드의 사진 -->\r\n");
      out.write("				  <img src=\"./images/");
      out.print(joblist.getImage() );
      out.write("\" class=\"card-img-top\" alt=\"...\" \r\n");
      out.write("				  style=\"height:5rem; width : 5rem; margin-left:10px;\">\r\n");
      out.write("				  <!-- 카드의 내용 -->\r\n");
      out.write("				  <div class=\"card-body\">\r\n");
      out.write("				    <h5 class=\"card-title\">이름 : ");
      out.print(joblist.getUsername() );
      out.write("</h5>\r\n");
      out.write("				    <h5 class=\"card-title\">전화번호 : ");
      out.print(joblist.getDate());
      out.write("</h5>\r\n");
      out.write("				    <h5 class=\"card-title\">이메일 : ");
      out.print(joblist.getPeople() );
      out.write("</h5>\r\n");
      out.write("				    <h5 class=\"card-title\">취미 : ");
      out.print(joblist.getEmployee());
      out.write("</h5>\r\n");
      out.write("				    <a href=\"#\" class=\"btn btn-primary\">수정</a>\r\n");
      out.write("				    <a href=\"#\" class=\"btn btn-primary\">삭제</a>\r\n");
      out.write("				  </div>\r\n");
      out.write("				</div>\r\n");
      out.write("		   	 </div>\r\n");
      out.write("			\r\n");
      out.write("	");
		
		}	
	
      out.write("\r\n");
      out.write("\r\n");
      out.write(" ");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("     ");

	     String search_username = request.getParameter("search_username");
	     joblistDao dao = new joblistDao();
	     ArrayList<joblistDo> searchResults = dao.JoblistSelect(search_username);
		
     if (searchResults != null && !searchResults.isEmpty()) {
         for (joblistDo joblist : searchResults) {

      out.write("\r\n");
      out.write("            <div class=\"col\">\r\n");
      out.write("                <div class=\"card\" style=\"width: 20rem; margin:auto;\">\r\n");
      out.write("                    <!-- 카드의 사진 -->\r\n");
      out.write("                    <img src=\"./images/");
      out.print( joblist.getImage() );
      out.write("\" class=\"card-img-top\" alt=\"...\" style=\"height:5rem; width:5rem; margin-left:10px;\">\r\n");
      out.write("                    <!-- 카드의 내용 -->\r\n");
      out.write("                    <div class=\"card-body\">\r\n");
      out.write("                        <h5 class=\"card-title\">이름 : ");
      out.print( joblist.getUsername() );
      out.write("</h5>\r\n");
      out.write("                        <h5 class=\"card-title\">전화번호 : ");
      out.print( joblist.getDate() );
      out.write("</h5>\r\n");
      out.write("                        <h5 class=\"card-title\">이메일 : ");
      out.print( joblist.getPeople() );
      out.write("</h5>\r\n");
      out.write("                        <h5 class=\"card-title\">취미 : ");
      out.print( joblist.getEmployee() );
      out.write("</h5>\r\n");
      out.write("                        <a href=\"#\" class=\"btn btn-primary\">수정</a>\r\n");
      out.write("                        <a href=\"#\" class=\"btn btn-primary\">삭제</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");

        }
    } else {
        out.println("<p>No results found.</p>");
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
