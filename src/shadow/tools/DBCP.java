package json.tools;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class DBCP {
	public static DataSource ds = null;
	static {
		//鑾峰彇DBCP鏁版嵁婧愬疄鐜扮被瀵硅薄
		BasicDataSource bds = new BasicDataSource() ;
		//璁剧疆杩炴帴鏁版嵁搴撻渶瑕佺殑閰嶇疆淇℃伅
		bds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		bds.setUrl("jdbc:mysql://localhost:3306/javawebexp?serverTimezone=UTC");
		bds.setUsername("root");
		bds.setPassword("root");
		// 璁剧疆杩炴帴姹犵殑鍙傛暟
		bds.setInitialSize(10);
		bds.setMaxTotal(100);      // 鏈�澶ц繛鎺ユ暟閲忥紝maxActive=50
		bds.setMaxIdle(50);
		bds.setMinIdle(5);
		bds.setMaxWaitMillis(60000);  // maxWait=60000
		bds.setDefaultAutoCommit(true);
		ds = bds;
	}
}
