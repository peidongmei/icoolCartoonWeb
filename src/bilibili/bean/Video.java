package bilibili.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Video implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer upload_id;
	private int clicknum;
	private String father;
	private String type;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date upload_time;
	private int coin;
	private int left_coins;
	private String picture;	//视频宣传图片地址
	private String path;		//视频路径
	private String information;
	private Date view_time;
	private String name;
	private int danmus;			//弹幕数量
	private String videolen;  //视频时长
	private String pingfen;  //视频评分
	public Video() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPingfen() {
		return pingfen;
	}

	public void setPingfen(String pingfen) {
		this.pingfen = pingfen;
	}

	public Integer getUpload_id() {
		return upload_id;
	}

	public void setUpload_id(Integer upload_id) {
		this.upload_id = upload_id;
	}

	public int getClicknum() {
		return clicknum;
	}

	public void setClicknum(int clicknum) {
		this.clicknum = clicknum;
	}

	public String getFather() {
		return father;
	}

	public void setFather(String father) {
		this.father = father;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getUpload_time() {
		return upload_time;
	}

	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}

	public int getCoin() {
		return coin;
	}

	public void setCoin(int coin) {
		this.coin = coin;
	}

	public int getLeft_coins() {
		return left_coins;
	}

	public void setLeft_coins(int left_coins) {
		this.left_coins = left_coins;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public Date getView_time() {
		return view_time;
	}

	public void setView_time(Date view_time) {
		this.view_time = view_time;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDanmus() {
		return danmus;
	}

	public void setDanmus(int danmus) {
		this.danmus = danmus;
	}

	public String getVideolen() {
		return videolen;
	}

	public void setVideolen(String videolen) {
		this.videolen = videolen;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
