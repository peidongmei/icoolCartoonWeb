package bilibili.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String account;
	private String password;
	private String nickname;
	private Integer userlevel;
	/*用户头像图片*/
	private String facepath;
	/*用户背景图片*/
	private String userbg;
	private Integer coin;
	private Integer sex;
	private String sign;
	private Date regist_time;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date birth;
	private Integer b_coin;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date login_time;
	private String weibo;
	private String qq;
	private String phone;
	private String province;
	private String city;
	private Integer emotional;
	private Integer purpose;
	private Integer exp;
	private Integer foucs;
	private Integer fans;
	
	public User() {
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getUserlevel() {
		return userlevel;
	}

	public void setUserlevel(Integer userlevel) {
		this.userlevel = userlevel;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getEmotional() {
		return emotional;
	}

	public void setEmotional(Integer emotional) {
		this.emotional = emotional;
	}

	public Integer getPurpose() {
		return purpose;
	}

	public void setPurpose(Integer purpose) {
		this.purpose = purpose;
	}


	public Integer getExp() {
		return exp;
	}

	public void setExp(Integer exp) {
		this.exp = exp;
	}

	public String getUserbg() {
		return userbg;
	}
	public void setUserbg(String userbg) {
		this.userbg = userbg;
	}
	public Date getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}
	public Integer getB_coin() {
		return b_coin;
	}
	public void setB_coin(Integer b_coin) {
		this.b_coin = b_coin;
	}
	public Date getLogin_time() {
		return login_time;
	}
	public void setLogin_time(Date login_time) {
		this.login_time = login_time;
	}
	public String getWeibo() {
		return weibo;
	}
	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFacepath() {
		return facepath;
	}
	public void setFacepath(String facepath) {
		this.facepath = facepath;
	}
	public Integer getCoin() {
		return coin;
	}
	public void setCoin(Integer coin) {
		this.coin = coin;
	}
	public Integer getFoucs() {
		return foucs;
	}
	public void setFoucs(Integer foucs) {
		this.foucs = foucs;
	}
	public Integer getFans() {
		return fans;
	}
	public void setFans(Integer fans) {
		this.fans = fans;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}

	

}
