package keiziban.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CommentPassword extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			    throws IOException, ServletException{

		RequestDispatcher rd = request.getRequestDispatcher("view/commentpassword.jsp");
		rd.forward(request, response);
	}
}