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

import json.dao.MainDao;
import json.daoImpl.MainDaoImpl;
import json.pojo.CustomerInfo;

/**
 * Servlet implementation class LoadCustomerInfo2
 */
@WebServlet(name = "load-customer-info2", urlPatterns = { "/load-customer-info2" })
public class LoadCustomerInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
      	resp.setContentType("text/html;charset=utf-8");
      	resp.setHeader("Access-Control-Allow-Origin", "*");
      	resp.setCharacterEncoding("utf-8");
      	List<CustomerInfo> l = new ArrayList<CustomerInfo>();
      	CustomerInfo g = new CustomerInfo();
      	
      	HttpSession hs= req.getSession();
      	if(hs.getAttribute("user")==null) {
      		l.add(g);	
      	}
      	else {
      		MainDao md = new MainDaoImpl();
      		try {
  				l=md.loadCustomerInfo2();
  			} catch (SQLException e) {
  				// TODO Auto-generated catch block
  				e.printStackTrace();
  			}
      		if(l.isEmpty()) {
      			l.add(g);
      		}
      	}
      	resp.getWriter().write(new Gson().toJson(l));
	}

}
