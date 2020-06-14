package json.dao;

import java.sql.SQLException;
import java.util.List;

import json.pojo.BroughtCard;
import json.pojo.BroughtGoods;
import json.pojo.BrowsedCard;
import json.pojo.CustomerInfo;
import json.pojo.Goods;
import json.pojo.LogInfo;
import json.pojo.Seller;
import json.pojo.SellerInfo;
import json.pojo.ShoppingCar;
import json.pojo.User;

public interface MainDao {

	void changeUserInfo(String uNo, String uPwd, String uPost, String uName, double uMoney, String uAddress)throws SQLException;

	List<Goods> loadGoods()throws SQLException;
	
	List<Goods> loadGoods2()throws SQLException;
	
	List<Goods> loadGoods3()throws SQLException;

	void addShoppingCar(String getuNo, String gNo, int rType)throws SQLException;

	List<ShoppingCar> loadShoppingCar(String uNo)throws SQLException;

	User getUserInfo(String getuNo)throws SQLException;
	
	List<Seller> getSellerInfo()throws SQLException;

	void addBrowsedRecord(String getuNo, String gNo)throws SQLException;

	int buyOne(String getuNo, String gNo)throws SQLException;

	void deleteOne(String getuNo, int gNum,String gNo)throws SQLException;

	List<String> buyAll(String getuNo)throws SQLException;

	List<BrowsedCard> loadBrowsed(String getuNo)throws SQLException;

	List<BroughtCard> loadBrought(String getuNo)throws SQLException;

	List<BroughtGoods> loadBroughtGoods()throws SQLException;
	
	List<BroughtGoods> loadBroughtGoods2()throws SQLException;
	
	List<BroughtGoods> loadAllBrought()throws SQLException;

	List<CustomerInfo> loadCustomerInfo()throws SQLException;
	
	List<CustomerInfo> loadCustomerInfo2()throws SQLException;
	
	List<SellerInfo> loadSellerInfo()throws SQLException;
	
	List<SellerInfo> loadSellerInfo2()throws SQLException;

	void deleteGoods(String gNo,String uNo)throws SQLException;

	void addNewGoods(Goods g,String uNo)throws SQLException;
	
	void addNewGoods2(Goods g,String uNo)throws SQLException;
	
	List<LogInfo> loadLogInfo()throws SQLException;
	
	void logout(String uId)throws SQLException;


}
