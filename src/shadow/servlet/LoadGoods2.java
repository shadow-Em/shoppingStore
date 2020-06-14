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
import json.pojo.Goods;

/**
 * Servlet implementation class LoadGoods2
 */
@WebServlet(name = "load-goods2", urlPatterns = { "/load-goods2" })
public class LoadGoods2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	resp.setCharacterEncoding("utf-8");
    	List<Goods> l = new ArrayList<Goods>();
    	Goods g = new Goods();
    	HttpSession hs= req.getSession();
    	if(hs.getAttribute("user")==null) {
    		g.setExist(0);
    		l.add(g);	
    	}
    	else {
    		MainDao md = new MainDaoImpl();
    		try {
				l=md.loadGoods2();
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
