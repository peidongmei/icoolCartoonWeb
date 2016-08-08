package bilibili.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bilibili.bean.Rawcomm;
import bilibili.bean.Replycomm;
import bilibili.bean.User;
import bilibili.bean.UserBox;
import bilibili.biz.ICommentsBiz;
import bilibili.persistence.ICommentsDao;
@Service
public class Comments implements ICommentsBiz {
	@Autowired
	private ICommentsDao Comments;


	@Override
	public List<Replycomm> getReplyComm(int rawid) {
		// TODO Auto-generated method stub
		return Comments.getReplyComm(rawid);
	}

	@Override
	public UserBox getBox(int userid) {
		// TODO Auto-generated method stub
		return Comments.getBox(userid);
	}

	@Override
	public Integer addRaw(String content, User user) {
		// TODO Auto-generated method stub
		return Comments.addRaw(content,user);
	}

	@Override
	public Integer addReply(String content, Integer replyid, User user) {
		// TODO Auto-generated method stub
		return Comments.addReply(content,replyid,user);
	}
	
	
	@Override
	public List<Rawcomm> getRawComm(int videoid, int page, String dividtpye) {
		// TODO Auto-generated method stub
		if (dividtpye.equals("按赞同数")) {
			return Comments.getRawCommByApprove(videoid,page);
		}else if (dividtpye.equals("按回复数")) {
			return Comments.getRawCommByReply(videoid,page);
		}else {
			return Comments.getRawComm(videoid,page);
		}
	}

	@Override
	public Integer checkraw(int rawid, User user) {
		// TODO Auto-generated method stub
		return Comments.checkraw(rawid,user);
	}

	@Override
	public Integer checkreply(int replyid, User user) {
		// TODO Auto-generated method stub
		return Comments.checkreply(replyid,user);
	}

	@Override
	public Integer deleteRawZan(int rawid, User user) {
		// TODO Auto-generated method stub
		return Comments.deleteRawZan(rawid,user);
	}

	@Override
	public Integer addRawZan(int rawid, User user) {
		// TODO Auto-generated method stub
		return Comments.addRawZan(rawid,user);
	}

	@Override
	public Integer addReplyZan(int replyid, User user) {
		// TODO Auto-generated method stub
		return Comments.addReplyZan(replyid,user);
	}

	@Override
	public Integer deleteReplyZan(int replyid, User user) {
		// TODO Auto-generated method stub
		return Comments.deleteReplyZan(replyid,user);
	}

	@Override
	public Integer countcomms(int videoid) {
		// TODO Auto-generated method stub
		return Comments.countcomms(videoid);
	}
}
