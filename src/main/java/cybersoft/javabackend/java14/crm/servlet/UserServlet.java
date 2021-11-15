package cybersoft.javabackend.java14.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.javabackend.java14.crm.util.JspConst;
import cybersoft.javabackend.java14.crm.util.UrlConst;

@WebServlet(name="userServlet", urlPatterns = {
		UrlConst.USERLIST,
		UrlConst.CREATE_USER
})
public class UserServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		switch (path) {
		case UrlConst.USERLIST:
			req.getRequestDispatcher(JspConst.USER_LIST).forward(req, resp);
			break;
		case UrlConst.CREATE_USER:
			req.getRequestDispatcher(JspConst.CREATE_USER).forward(req, resp);
			break;
		default:
			break;
		}
	}
}
