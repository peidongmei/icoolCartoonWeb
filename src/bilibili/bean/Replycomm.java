package bilibili.bean;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Replycomm implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer rawid;
	private Integer userid;
	private String content;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date writetime;
	private User user;
	private Integer approvenum;
	
	public Integer getApprovenum() {
		return approvenum;
	}


	public void setApprovenum(Integer approvenum) {
		this.approvenum = approvenum;
	}


	public Replycomm() {
	}

	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Integer getRawid() {
		return rawid;
	}

	public void setRawid(Integer rawid) {
		this.rawid = rawid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWritetime() {
		return writetime;
	}

	public void setWritetime(Date writetime) {
		this.writetime = writetime;
	}
	
	
	
}
