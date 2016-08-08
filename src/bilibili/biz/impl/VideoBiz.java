package bilibili.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bilibili.bean.Video;
import bilibili.bean.VideoBox;
import bilibili.biz.IVideoBiz;
import bilibili.persistence.IVideoDao;
@Service
public class VideoBiz implements IVideoBiz {
@Autowired private IVideoDao videodao;
	@Override
	public List<String> searchvideo(String sval) {
		// TODO Auto-generated method stub
		return videodao.searchvideo(sval) ;
	}
	@Override
	public List<Video> querydh(Video video) {
		// TODO Auto-generated method stub
		return videodao.querydh(video);
	}
	@Override
	public List<Video> queryfj(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryfj(video);
	}
	@Override
	public List<Video> queryyy(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryyy(video);
	}
	@Override
	public List<Video> querygc(Video video) {
		// TODO Auto-generated method stub
		return videodao.querygc(video);
	}
	@Override
	public List<Video> querywd(Video video) {
		// TODO Auto-generated method stub
		return videodao.querywd(video);
	}
	@Override
	public List<Video> queryyx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryyx(video);
	}
	@Override
	public List<Video> querykj(Video video) {
		// TODO Auto-generated method stub
		return videodao.querykj(video);
	}
	@Override
	public List<Video> querysh(Video video) {
		// TODO Auto-generated method stub
		return videodao.querysh(video);
	}
	@Override
	public List<Video> queryss(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryss(video);
	}
	@Override
	public List<Video> querydy(Video video) {
		// TODO Auto-generated method stub
		return videodao.querydy(video);
	}
	@Override
	public List<Video> queryzb(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryzb(video);
	}
	@Override
	public List<Video> querydhpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querydhpx(video);
	}
	@Override
	public List<Video> queryfjpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryfjpx(video);
	}
	@Override
	public List<Video> queryyypx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryyypx(video);
	}
	@Override
	public List<Video> querygcpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querygcpx(video);
	}
	@Override
	public List<Video> queryzbpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryzbpx(video);
	}
	@Override
	public List<Video> querywdpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querywdpx(video);
	}
	@Override
	public List<Video> querykjpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querykjpx(video);
	}
	@Override
	public List<Video> queryshpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryshpx(video);
	}
	@Override
	public List<Video> querysspx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querysspx(video);
	}
	@Override
	public List<Video> querydypx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querydypx(video);
	}
	@Override
	public List<Video> queryyxpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryyxpx(video);
	}
	@Override
	public List<Video> querytv(Video video) {
		// TODO Auto-generated method stub
		return videodao.querytv(video);
	}
	@Override
	public List<Video> querytvpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.querytvpx(video);
	}
	@Override
	public List<Video> queryyl(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryyl(video);
	}
	@Override
	public List<Video> querytvyl(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryylpx(video);
	}
	@Override
	public List<Video> queryylpx(Video video) {
		// TODO Auto-generated method stub
		return videodao.queryylpx(video);
	}
	@Override
	public VideoBox getInfo(int videoid) {
		// TODO Auto-generated method stub
		return videodao.getInfo(videoid);
	}

}
