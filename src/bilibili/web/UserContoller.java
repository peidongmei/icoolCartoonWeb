package bilibili.web;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import bilibili.bean.Pictures;
import bilibili.bean.User;
import bilibili.biz.IUserBiz;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserContoller {
	@Autowired
	private IUserBiz userbiz;
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,Model model){
		String path = null;
		
		user = userbiz.login(user);
		
		if (user!=null) {
			model.addAttribute("user", user);
			path = "redirect:/HomePage.jsp";
		} else {
			path = "redirect:/userRegist.html";
		}
		return path;
	}
	/*用户退出*/
	@RequestMapping(value="/exit")
	public String exit(HttpSession session){
		String path = null;
		session.setAttribute("user", null);
		session.invalidate();
		path = "redirect:/reuse/bilHeader.jsp";
		return path;
	}
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String regist(User user,Model model) {
		String path = null;
		
		Integer result = 0;
		if (user.getNickname()==null||user.getAccount()==null||user.getPassword()==null) {
			path = "redirect:/userRegist.html";
		}else {
			result = userbiz.regist(user);
			if (result == 1) {
				user = userbiz.login(user);
				model.addAttribute("user", user);
				path = "redirect:/HomePage.jsp";
			}else {
				path = "redirect:/userRegist.html";
			}
		}
		
		return path;
	}
	
	@RequestMapping(value="/addConcern",method=RequestMethod.GET)
	public @ResponseBody Integer addConcern(int up_id,HttpSession session) {
		Integer result = 0;
		/*��ȥ���ݿ��ѯ�Ƿ��Ѿ���ע*/
		User user = (User)session.getAttribute("user");
		result = userbiz.getConcern(up_id,user);
		/*������������򲻲��룬û�еĻ�����*/
		if (result!=1) {
			result = userbiz.addConcern(up_id,user);
			result++;
		}
		return result;
	}
	
	@RequestMapping(value="/getpic")
	public @ResponseBody List<Pictures> getUserPic(String type) {
		List<Pictures> pics = null;
		
		pics = userbiz.getUserPic(type);
		
		return pics;
	}
	
	/*�û��������ͼƬ*/
	@RequestMapping(value="/updatepic")
	public @ResponseBody Integer updatePic(String userface,String userbg,int userlevel,HttpSession session) {
		Integer result = 0;
		User user = (User)session.getAttribute("user");
		/*����ͷ��·��*/
		if (!userface.equals("")) {
			user.setFacepath(userface);
		}
		/*���ñ���·��*/
		if (!userbg.equals("")) {
			user.setUserbg(userbg);
		}
		/*���õȼ�*/
		if (userlevel!=0) {
			user.setUserlevel(userlevel);
		}
		result = userbiz.updatePic(user);
		return result;
	}
	
	@RequestMapping(value="/updateinfo")
	public @ResponseBody Integer updateInfo(String nickname,String sign,int sex,HttpSession session) {
		Integer result = 0;
		User user = (User)session.getAttribute("user");
		user.setNickname(nickname);
		user.setSign(sign);
		user.setSex(sex);
		
		result = userbiz.updateInfo(user);
		
		return result;
	}
}
