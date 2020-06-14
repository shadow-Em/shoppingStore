package json.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import json.daoImpl.MainDaoImpl;
import json.pojo.User;
import shadow.dao.MainDao;

/**
 * Servlet implementation class AddShoppingCard
 */
@WebServlet("/add-shopping-car")
public class AddShoppingCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   	req.setCharacterEncoding("utf-8");
	   	resp.setContentType("text/html;charset=utf-8");
	   	resp.setHeader("Access-Control-Allow-Origin", "*");
	   	resp.setCharacterEncoding("utf-8");
	   	int exist = 1;
	   	int rType = 2;
	   	String gNo = "";
	   	HttpSession hs= req.getSession();
	   	if(hs.getAttribute("user")==null) 
	   		exist = 0;
	   	else {
	   		User u = (User) hs.getAttribute("user");
	   		gNo = req.getParameter("gNo");
	   		MainDao md = new MainDaoImpl();
//	   		System.out.println(u);
	   		try {
				md.addShoppingCar(u.getuNo(),gNo,rType);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	   	}
	   	resp.getWriter().write("{\"exist\":"+exist+"}");
	}

}
