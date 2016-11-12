package keiziban.action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


public class InsertComment extends HttpServlet {
	private static final String INSERT_COMMENT_HINANJO =
			"INSERT INTO hinan_cm(syukey,cm_num,name,pass,cm) VALUES(?,?,?,?,?)";


	/* (髱? Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

		String syukey = request.getParameter("syukey");
		String cm_num = request.getParameter("cm_num");
		String name = request.getParameter("name");
		String comment = request.getParameter("comment");
		String password = request.getParameter("password");




		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		InitialContext ctx;
		RequestDispatcher rd = null;

        try {
			ctx = new InitialContext();

        	DataSource ds =
        		(DataSource)ctx.lookup("java:comp/env/jdbc/myds");

			// MySQL縺ｫ謗･邯?
	        con = ds.getConnection();


			ps = con.prepareStatement(INSERT_COMMENT_HINANJO);

        	// 繝代Λ繝｡繝ｼ繧ｿ繧偵そ繝?繝?
        	ps.setString(1,syukey);
			ps.setString(2,cm_num);
			ps.setString(3, name);
			ps.setString(4,password);
			ps.setString(5, comment);


	        // SQL繧貞ｮ溯｡?
	        ps.executeUpdate();

        } catch (SQLException | NamingException e) {
			// TODO 閾ｪ蜍慕函謌舌＆繧後◆ catch 繝悶Ο繝?繧ｯ
			e.printStackTrace();
		}

       	finally{
        	try{
		        // 謗･邯壹ｒ髢峨§繧?
	        	if( rs != null ){
		        	rs.close();
	        	}
	        	if( ps != null ){
		        	ps.close();
	        	}
	        	if( con != null ){
		        	con.close();
	        	}
        	}catch( SQLException e ){
        		 ;//辟｡蜃ｦ逅??ｼ?close蜃ｦ逅?縺ｮ繧ｨ繝ｩ繝ｼ縺ｯ辟｡隕厄ｼ?
        	}
        }




	//螳御ｺ?逕ｻ髱｢縺ｸ驕ｷ遘ｻ縺吶ｋ
	rd = request.getRequestDispatcher("view/keizibanhinanjo.jsp");
	rd.forward(request, resp);



	}

}