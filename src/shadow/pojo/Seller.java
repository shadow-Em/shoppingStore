package json.pojo;

public class Seller {
	private String uNo="";
	private String uId="";
	private String uName="";
	private String uPost="";
	private double uMoney=0;
	public String getuNo() {
		return uNo;
	}
	public void setuNo(String uNo) {
		this.uNo = uNo;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPost() {
		return uPost;
	}
	public void setuPost(String uPost) {
		this.uPost = uPost;
	}
	public double getuMoney() {
		return uMoney;
	}
	public void setuMoney(double uMoney) {
		this.uMoney = uMoney;
	}
	@Override
	public String toString() {
		return "Seller [uNo=" + uNo + ", uId=" + uId + ", uName=" + uName + ", uPost=" + uPost + ", uMoney=" + uMoney
				+ "]";
	}
	
}
