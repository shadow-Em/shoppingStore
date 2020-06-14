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
import json.pojo.LogInfo;

/**
 * Servlet implementation class LoadLogInfo
 */
@WebServlet(name = "load-log-info", urlPatterns = { "/load-log-info" })
public class LoadLogInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
      	resp.setContentType("text/html;charset=utf-8");
      	resp.setHeader("Access-Control-Allow-Origin", "*");
      	resp.setCharacterEncoding("utf-8");
      	List<LogInfo> l=new ArrayList<LogInfo>();
      	LogInfo i=new LogInfo();
      	HttpSession hs=req.getSession();
      	if(hs.getAttribute("user")!=null) {
      		MainDao md=new MainDaoImpl();
      		try {
				l=md.loadLogInfo();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
      		if(l.isEmpty()) {
      			l.add(i);
      		}
      	}
      	resp.getWriter().write(new Gson().toJson(l));
	}

}
