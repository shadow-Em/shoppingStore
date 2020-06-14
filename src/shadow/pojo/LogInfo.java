package json.pojo;

public class LogInfo {
	private String uId="";
	private String lTime="";
	private int lType=0;
	private String uDo="";
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getlTime() {
		return lTime;
	}
	public void setlTime(String lTime) {
		this.lTime = lTime;
	}
	public int getlType() {
		return lType;
	}
	public void setlType(int lType) {
		this.lType = lType;
	}
	
	public String getuDo() {
		return uDo;
	}
	public void setuDo(String uDo) {
		this.uDo = uDo;
	}
	@Override
	public String toString() {
		return "LogInfo [uId=" + uId + ", lTime=" + lTime + ", lType=" + lType + ", lStatus=" + uDo + "]";
	}
	
}
