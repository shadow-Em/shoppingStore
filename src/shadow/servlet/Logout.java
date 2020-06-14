package json.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import json.dao.MainDao;
import json.daoImpl.MainDaoImpl;
import json.pojo.User;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	resp.setCharacterEncoding("utf-8");   	
    	HttpSession hs= req.getSession();
    	User u=new User();
    	MainDao md = new MainDaoImpl();
		u = (User) hs.getAttribute("user");
		try {
			//System.out.println(u.getuNo());
			md.logout(u.getuId());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	hs.invalidate(); 
    }

}
