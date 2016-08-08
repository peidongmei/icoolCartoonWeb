package bilibili.biz;

import java.util.List;

import bilibili.bean.Rawcomm;
import bilibili.bean.Replycomm;
import bilibili.bean.User;
import bilibili.bean.UserBox;

public interface ICommentsBiz {

	List<Replycomm> getReplyComm(int rawid);

	UserBox getBox(int userid);

	Integer addRaw(String content, User user);

	Integer addReply(String content, Integer replyid, User user);

	List<Rawcomm> getRawComm(int videoid, int page, String dividtpye);

	Integer checkraw(int rawid, User user);

	Integer checkreply(int replyid, User user);

	Integer deleteRawZan(int rawid, User user);

	Integer addRawZan(int rawid, User user);

	Integer addReplyZan(int replyid, User user);

	Integer deleteReplyZan(int replyid, User user);

	Integer countcomms(int videoid);


}
