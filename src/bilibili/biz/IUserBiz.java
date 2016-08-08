package bilibili.biz;

import java.util.List;

import bilibili.bean.Pictures;
import bilibili.bean.User;

public interface IUserBiz {

	User login(User user);

	Integer getConcern(int up_id, User user);

	Integer addConcern(int up_id, User user);

	Integer regist(User user);

	List<Pictures> getUserPic(String type);

	Integer updatePic(User user);

	Integer updateInfo(User user);


}
