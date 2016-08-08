package bilibili.persistence;

import java.util.List;

import bilibili.bean.Video;
import bilibili.bean.VideoBox;

public interface IVideoDao {

	List<String> searchvideo(String sval);

	List<Video> querydh(Video video);

	List<Video> queryfj(Video video);

	List<Video> queryyy(Video video);

	List<Video> querygc(Video video);

	List<Video> querywd(Video video);

	List<Video> queryyx(Video video);

	List<Video> querykj(Video video);

	List<Video> querysh(Video video);

	List<Video> queryss(Video video);

	List<Video> querydy(Video video);

	List<Video> queryzb(Video video);

	List<Video> querydhpx(Video video);

	List<Video> queryfjpx(Video video);

	List<Video> queryyypx(Video video);

	List<Video> querygcpx(Video video);

	List<Video> queryzbpx(Video video);

	List<Video> querywdpx(Video video);

	List<Video> querykjpx(Video video);

	List<Video> queryshpx(Video video);

	List<Video> querysspx(Video video);

	List<Video> querydypx(Video video);

	List<Video> queryyxpx(Video video);

	List<Video> querytv(Video video);

	List<Video> querytvpx(Video video);

	List<Video> queryyl(Video video);

	List<Video> queryylpx(Video video);

	VideoBox getInfo(int videoid);

}
