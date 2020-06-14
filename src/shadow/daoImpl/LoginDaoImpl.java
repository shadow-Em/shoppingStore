package json.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.dbutils.handlers.BeanHandler;

import json.dao.LoginDao;
import json.pojo.User;
import json.tools.DBCP;

import java.util.Date;
import java.util.UUID;
import java.text.SimpleDateFormat;

public class LoginDaoImpl implements LoginDao {

	@Override
	public User checkUser(String uId, String uPwd) throws SQLException {
		// TODO Auto-generated method stub
		User u = null;
		Connection conn=DBCP.ds.getConnection();
		PreparedStatement ps=null;	
		ResultSet rs=null;
		try {
			String time=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			String lNo = UUID.randomUUID().toString();
			String sql="call checkUser(?,?,?,?);";
			ps=conn.prepareStatement(sql);
			ps.setString(1, uId);
			ps.setString(2, uPwd);
			ps.setString(3, lNo);
			ps.setString(4, time);
			rs = ps.executeQuery();
			u = new BeanHandler<User>(User.class).handle(rs);
			if(u == null) {
				return new User();
			}
			if(u.getuAddress()==null) {
				u.setuAddress("");
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			rs.close();
			ps.close();
			conn.close();
		}
		return u;
	}

}
