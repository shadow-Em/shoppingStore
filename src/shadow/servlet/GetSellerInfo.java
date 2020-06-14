package json.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import json.daoImpl.MainDaoImpl;
import json.pojo.Seller;
import shadow.dao.MainDao;

/**
 * Servlet implementation class GetSellerInfo
 */
@WebServlet(name = "get-seller-info", urlPatterns = { "/get-seller-info" })
public class GetSellerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	resp.setCharacterEncoding("utf-8");   	
    	HttpSession hs= req.getSession();
    	List<Seller> s=new ArrayList<Seller>();
    	//User u=new User();
    	if(hs.getAttribute("user")!=null) {
    		MainDao md = new MainDaoImpl();
    		//u = (User) hs.getAttribute("user");
        	try {
				s = md.getSellerInfo();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    	resp.getWriter().write(new Gson().toJson(s));
	}

}
