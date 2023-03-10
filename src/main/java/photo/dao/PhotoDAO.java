package photo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import photo.dto.PhotoVO;
import util.DBManager;

public class PhotoDAO {
	private PhotoDAO() { }

	private static PhotoDAO instance = new PhotoDAO();

	public static PhotoDAO getInstance() {
		return instance;
	}
	
	public List<PhotoVO> selectPhoto(){
		System.out.println("실행1");
		String sql = "select*from photo order by bno desc";
		List<PhotoVO> list = new ArrayList<PhotoVO>();
		System.out.println("실행2");
		try (Connection conn = DBManager.getConnection();){//데이터베이스와 통신
			System.out.println("실행3");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);//변수에 담아놓은 쿼리문을 데이터베이스에 넣어줌.
			while(rs.next()) {//다음이 있으면 실행
				System.out.println("실행4");
				PhotoVO pVo = new PhotoVO();//photo객체 생성
				System.out.println("실행5");
				pVo.setBno(rs.getInt("bno"));//생성된 객체안에 가져온 사진번호를 넣어줌
				System.out.println("실행6");
				pVo.setTitle(rs.getString("title"));//생성된 객체안에 가져온 사진제목을 넣어줌
				System.out.println("실행7");
				pVo.setContent(rs.getString("content"));//생성된 객체안에 가져온 사진내용을 넣어줌
				System.out.println("실행8");
				pVo.setUpdatedate(rs.getString("updatedate"));//생성된 객체안에 가져온 사진을 등록한 날짜를 넣어줌
				System.out.println("실행9");
				pVo.setPhotoUrl(rs.getString("photourl"));//생성된 객체안에 가져온 사진의 url을 넣어줌
				System.out.println("실행10");
				list.add(pVo);//vo객체안에 담긴 데이터를 list객체안에 넣어줌
				System.out.println("실행2");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public void insertPhoto(PhotoVO pVo) {
		System.out.println("실행3");
		String sql = "insert into photo (title, content, photourl) values (?,?,?)";//사진을 등록하는 쿼리문
		try (Connection conn = DBManager.getConnection();//데이터베이스와 통신
				PreparedStatement pstmt = conn.prepareStatement(sql); ) {//변수에 담아놓은 쿼리문을 데이터베이스에 넣어줌.
			pstmt.setString(1, pVo.getTitle());//1번째로 받는 데이터는 사진첩제목.
			pstmt.setString(2, pVo.getContent());//1번째로 받는 데이터는 사진첩내용.
			pstmt.setString(3, pVo.getPhotoUrl());//1번째로 받는 데이터는 사진url.
			pstmt.executeUpdate();
			System.out.println("실행4");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void deletePhoto(Integer bno) {
		System.out.println("실행5");
		String sql = "delete from photo where bno = ?";//사진첩에 작성한  게시물을 삭제하는 쿼리문
		try (Connection conn = DBManager.getConnection();//데이터베이스와 통신
				PreparedStatement pstmt = conn.prepareStatement(sql); ) {//변수에 담아놓은 쿼리문을 데이터베이스에 넣어줌.
			pstmt.setInt(1, bno);//1번째로 받는 데이터는 사진첩번호.
			pstmt.executeUpdate();
			System.out.println("실행6");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public PhotoVO selectProductBno(Integer bno) {
		System.out.println("실행7");
		String sql = "select* from photo where bno=?";//사진첩번호와 같은 사진첩의 데이터를 가져오는 쿼리문
		PhotoVO pVo = null;
		ResultSet rs = null;
		try (Connection conn = DBManager.getConnection();//데이터베이스와 통신
				PreparedStatement pstmt = conn.prepareStatement(sql); ) {//변수에 담아놓은 쿼리문을 데이터베이스에 넣어줌.
				pstmt.setInt(1, bno);//1번째로 받는 데이터는 사진첩번호.
				rs = pstmt.executeQuery();
				if (rs.next()) {//다음이 있으면 실행
					pVo = new PhotoVO();//photoVO객체 생성
					pVo.setBno(rs.getInt("bno"));//생성한 객체 안에 가져온 사진첩 번호를 넣음
					pVo.setTitle(rs.getString("title"));//생성한 객체 안에 가져온 사진첩 제목을 넣음
					pVo.setContent(rs.getString("content"));//생성한 객체 안에 가져온 사진첩 내용을 넣음
					pVo.setUpdatedate(rs.getString("updatedate"));//생성한 객체 안에 가져온 사진첩에 등록한 날짜를 넣음
					pVo.setPhotoUrl(rs.getString("photourl"));//생성한 객체 안에 가져온 사진의 url을 넣음
					System.out.println("실행8");
				}
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(rs);//데이터베이스를 닫음
		}
		return pVo;
	}
	public void updatePhoto(PhotoVO pVo) {
		System.out.println("실행9");
		String sql = "update photo set title=?, content=?, photoUrl=? where bno=?";//사진첩의 내용을 수정하는 쿼리문
		try (Connection conn = DBManager.getConnection();//데이터베이스와 통신
				PreparedStatement pstmt = conn.prepareStatement(sql); ) {//변수에 담아놓은 쿼리문을 데이터베이스에 넣어줌.
				pstmt.setString(1, pVo.getTitle());//1번째로 받는 데이터는 사진첩제목.
				pstmt.setString(2, pVo.getContent());//2번째로 받는 데이터는 사진첩내용.
				pstmt.setString(3, pVo.getPhotoUrl());//3번째로 받는 데이터는 사진url.
				pstmt.setInt(4, pVo.getBno());//4번째로 받는 데이터는 사진첩번호.
				System.out.println("실행10");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
