package visit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.command.CommandHandler;
import reply_vs.dao.Reply_vsDAO;
import reply_vs.dto.Reply_vsVO;
import visit.dao.VisitDAO;
import visit.dto.VisitVO;

public class VisitHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		if(request.getMethod().equalsIgnoreCase("GET")) {//get방식으로 오면 실행
			return processForm(request, response);
		}
		else if(request.getMethod().equalsIgnoreCase("POST")) {//post방식으로 오면 실행
			return processSubmit(request, response);
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		String url = "../view/visit.jsp";//이동해야할 url을 변수에 저장
		VisitDAO vDao = VisitDAO.getInstance();//DAO객체를 생성
		List<VisitVO> visit = vDao.selectAllVisit();//모든 방명록을 리스트타입의 변수에 저장
		req.setAttribute("vlist", visit);//변수에 담긴 리스트를 setAttribute저장
		
		//추가
		Reply_vsDAO rDao = Reply_vsDAO.getInstance();//DAO객체를 생성
		List<Reply_vsVO> reply_vs = rDao.selectAllReplyy();//selectAllReplyy메소드를 호출하여 리스트타입의 변수에 저장
		req.setAttribute("reply_vs", reply_vs);//변수에 담긴 리스트를 setAttribute저장
		//추가
		return url;//변수에 저장된 url로 이동
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		return null;
	}
}
