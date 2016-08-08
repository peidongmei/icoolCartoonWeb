package bilibili.bean;

import java.io.Serializable;

public class VideoBox implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Video video;
	private User user;
	
	public VideoBox(){
		// TODO Auto-generated constructor stub
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

}
