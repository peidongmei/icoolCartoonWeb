package bilibili.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bilibili.bean.Pictures;
import bilibili.bean.User;
import bilibili.biz.IUserBiz;
import bilibili.persistence.IUserDao;

@Service
public class UserBiz implements IUserBiz{
	@Autowired
	private IUserDao userdao;
	

	@Override
	public User login(User user) {
		return userdao.login(user);
	}


	@Override
	public Integer getConcern(int up_id, User user) {
		// TODO Auto-generated method stub
		return userdao.getConcern(up_id,user);
	}


	@Override
	public Integer addConcern(int up_id, User user) {
		// TODO Auto-generated method stub
		return userdao.addConcern(up_id,user);
	}


	@Override
	public Integer regist(User user) {
		// TODO Auto-generated method stub
		return userdao.regist(user);
	}


	@Override
	public List<Pictures> getUserPic(String type) {
		// TODO Auto-generated method stub
		return userdao.getUserPic(type);
	}


	@Override
	public Integer updatePic(User user) {
		// TODO Auto-generated method stub
		return userdao.updatePic(user);
	}


	@Override
	public Integer updateInfo(User user) {
		// TODO Auto-generated method stub
		return userdao.updateInfo(user);
	}


	
}
