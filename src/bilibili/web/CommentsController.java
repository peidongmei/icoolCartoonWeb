package bilibili.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bilibili.bean.Rawcomm;
import bilibili.bean.Replycomm;
import bilibili.bean.User;
import bilibili.bean.UserBox;
import bilibili.biz.ICommentsBiz;

@Controller
@RequestMapping("/comments")
public class CommentsController {
	@Autowired
	private ICommentsBiz commentsbiz;
	
	@RequestMapping("/getRaw")
	public @ResponseBody List<Rawcomm> getRawComments(int videoid,int page,String dividtpye) {
		List<Rawcomm> rawcomms = null;
		
		rawcomms = commentsbiz.getRawComm(videoid,page,dividtpye);
		
		
		
		return rawcomms;
	}
	
	@RequestMapping("/getReply")
	public @ResponseBody List<Replycomm> getReplyComments(int rawid) {
		List<Replycomm> replycomments = null;
		
		replycomments = commentsbiz.getReplyComm(rawid);
		return replycomments;
	}
	
	@RequestMapping("/getBox")
	public @ResponseBody UserBox getBox(int userid) {
		UserBox userBox = null;
		
		userBox = commentsbiz.getBox(userid);
		
		return userBox;
	}
	
	@RequestMapping("/addRaw")
	public @ResponseBody Integer addRaw(String content,HttpSession session,HttpServletResponse response) throws IOException {
		Integer result = 0;
		User user = (User)session.getAttribute("user");
		if (user!=null) {
			result = commentsbiz.addRaw(content,user);
		}else {
			response.sendRedirect("/userLogin.html");
		}
		
		return result;
	}
	
	@RequestMapping("/addReply")
	public @ResponseBody Integer addReply(String content,Integer replyid,HttpSession session,HttpServletResponse response) throws IOException {
		Integer result = 0;
		User user = (User)session.getAttribute("user");
		if (user!=null) {
			result = commentsbiz.addReply(content,replyid,user);
		}else {
			response.sendRedirect("/userLogin.html");
		}
		return result;
	}
	
	@RequestMapping("/checkraw")
	public @ResponseBody Integer checkraw(int rawid,HttpSession session) {
		Integer result = 0;
		
		User user = (User)session.getAttribute("user");
		
		if (user!=null) {
			result = commentsbiz.checkraw(rawid,user);
		}
		return result;
	}
	
	@RequestMapping("/checkreply")
	public @ResponseBody Integer checkreply(int replyid,HttpSession session) {
		Integer result = 0;
		
		User user = (User)session.getAttribute("user");
		
		if (user!=null) {
			result = commentsbiz.checkreply(replyid,user);
		}
		return result;
	}
	
	@RequestMapping("/rawzan")
	public @ResponseBody Integer chanrgeRawZan(int rawid,String nowstate,HttpSession session) {
		Integer result = 0;
		
		User user = (User)session.getAttribute("user");
		if (nowstate.equals("赞")) {
			result = commentsbiz.addRawZan(rawid,user);
		}else if (nowstate.equals("已赞")) {
			result = commentsbiz.deleteRawZan(rawid,user);
			result++;
		}
		return result;
	}
	
	@RequestMapping("/replyzan")
	public @ResponseBody Integer changeReplyZan(int replyid,String nowstate,HttpSession session){
		Integer result = 0;
		User user = (User)session.getAttribute("user");
		if (nowstate.equals("赞")) {
			result = commentsbiz.addReplyZan(replyid,user);
		}else if (nowstate.equals("已赞")) {
			result = commentsbiz.deleteReplyZan(replyid,user);
			result++;
		}
		return result;
	}
	
	/*��������������*/
	@RequestMapping(value="/countcomms")
	public @ResponseBody Integer countcomms(int videoid) {
		Integer result = 0;
		
		result = commentsbiz.countcomms(videoid);
		
		return result;
	}
	
	

}
