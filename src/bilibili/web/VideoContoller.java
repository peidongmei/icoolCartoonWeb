package bilibili.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bilibili.bean.Video;
import bilibili.bean.VideoBox;
import bilibili.biz.IVideoBiz;

@Controller
@RequestMapping("/video")
public class VideoContoller {
	@Autowired
	private IVideoBiz  videobiz;
	//搜索框，通过关键字查询
	@RequestMapping(value="/search")
	public @ResponseBody List<String> searchvideo(String Sval){
		List<String> searchtips=null;
		searchtips =videobiz.searchvideo(Sval);
		return searchtips;
	}
	//直播的首页显示
	@RequestMapping(value="/queryzb")
	public @ResponseBody List<Video> queryzb(Video video){
		List<Video> videos=null;
		videos =videobiz.queryzb(video);
		
		return videos;
}
	@RequestMapping(value="/queryzbpx")
	public @ResponseBody List<Video> queryzbpx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryzbpx(video);
		
		return videos;
	}
	
	//动画的首页显示
	@RequestMapping(value="/querydh")
	public @ResponseBody List<Video> querydh(Video video){
		List<Video> videos=null;
		videos =videobiz.querydh(video);
		
		return videos;
}
	@RequestMapping(value="/querydhpx")
	public @ResponseBody List<Video> querydhpx(Video video){
		List<Video> videos=null;
		videos =videobiz.querydhpx(video);
		
		return videos;
}
	//番剧的首页显示
	@RequestMapping(value="/queryfj")
	public @ResponseBody List<Video> queryfj(Video video){
		List<Video> videos=null;
		videos =videobiz.queryfj(video);
		
		return videos;
}
	@RequestMapping(value="/queryfjpx")
	public @ResponseBody List<Video> queryfjpx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryfjpx(video);
		
		return videos;
	}
	
	//鬼畜的首页显示
		@RequestMapping(value="/querygc")
		public @ResponseBody List<Video> querygc(Video video){
			List<Video> videos=null;
			videos =videobiz.querygc(video);
			return videos;
		}
		@RequestMapping(value="/querygcpx")
		public @ResponseBody List<Video> querygcpx(Video video){
			List<Video> videos=null;
			videos =videobiz.querygcpx(video);
			return videos;
		}
	//音乐的首页显示
	@RequestMapping(value="/queryyy")
	public @ResponseBody List<Video> queryyy(Video video){
		List<Video> videos=null;
		videos =videobiz.queryyy(video);
		
		return videos;
}
	@RequestMapping(value="/queryyypx")
	public @ResponseBody List<Video> queryyypx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryyypx(video);
		
		return videos;
	}

	//舞蹈的首页显示
	@RequestMapping(value="/querywd")
	public @ResponseBody List<Video> querywd(Video video){
		List<Video> videos=null;
		videos =videobiz.querywd(video);
		
		return videos;
	}
	@RequestMapping(value="/querywdpx")
	public @ResponseBody List<Video> querywdpx(Video video){
		List<Video> videos=null;
		videos =videobiz.querywdpx(video);
		
		return videos;
	}
	
	//游戏的首页显示
	@RequestMapping(value="/queryyx")
	public @ResponseBody List<Video> queryyx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryyx(video);
		
		return videos;
	}
	@RequestMapping(value="/queryyxpx")
	public @ResponseBody List<Video> queryyxpx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryyxpx(video);
		
		return videos;
	}
	
	//科技的首页显示
	@RequestMapping(value="/querykj")
	public @ResponseBody List<Video> querykj(Video video){
		List<Video> videos=null;
		videos =videobiz.querykj(video);
		
		return videos;
	}
	@RequestMapping(value="/querykjpx")
	public @ResponseBody List<Video> querykjpx(Video video){
		List<Video> videos=null;
		videos =videobiz.querykjpx(video);
		
		return videos;
	}
	
	//生活的首页显示
	@RequestMapping(value="/querysh")
	public @ResponseBody List<Video> querysh(Video video){
		List<Video> videos=null;
		videos =videobiz.querysh(video);
		
		return videos;
	}
	@RequestMapping(value="/queryshpx")
	public @ResponseBody List<Video> queryshpx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryshpx(video);
		
		return videos;
	}
	//时尚的首页显示
	@RequestMapping(value="/queryss")
	public @ResponseBody List<Video> queryss(Video video){
		List<Video> videos=null;
		videos =videobiz.queryss(video);
		
		return videos;
	}
	@RequestMapping(value="/querysspx")
	public @ResponseBody List<Video> querysspx(Video video){
		List<Video> videos=null;
		videos =videobiz.querysspx(video);
		
		return videos;
	}
	//电影的首页显示
	@RequestMapping(value="/querydy")
	public @ResponseBody List<Video> querydy(Video video){
		List<Video> videos=null;
		videos =videobiz.querydy(video);
		
		return videos;
	}
	@RequestMapping(value="/querydypx")
	public @ResponseBody List<Video> querydypx(Video video){
		List<Video> videos=null;
		videos =videobiz.querydypx(video);
		
		return videos;
	}
	//TV的首页显示
	@RequestMapping(value="/querytv")
	public @ResponseBody List<Video> querytv(Video video){
		List<Video> videos=null;
		videos =videobiz.querytv(video);
		
		return videos;
	}
	@RequestMapping(value="/querytvpx")
	public @ResponseBody List<Video> querytvpx(Video video){
		List<Video> videos=null;
		videos =videobiz.querytvpx(video);
		
		return videos;
	}
	//娱乐的首页显示
	@RequestMapping(value="/queryyl")
	public @ResponseBody List<Video> queryyl(Video video){
		List<Video> videos=null;
		videos =videobiz.queryyl(video);
		
		return videos;
	}
	@RequestMapping(value="/queryylpx")
	public @ResponseBody List<Video> queryylpx(Video video){
		List<Video> videos=null;
		videos =videobiz.queryylpx(video);
		
		return videos;
	}
	
	/*获取视频信息用于弹窗显示*/
	@RequestMapping(value="/getInfo")
	public @ResponseBody VideoBox getInfo(int videoid) {
		VideoBox videobox = null;
		videobox = videobiz.getInfo(videoid);
		return videobox;
	}
	
	
}
