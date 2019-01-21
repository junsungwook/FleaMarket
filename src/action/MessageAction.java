package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.MSGDAO;
import vo.MSGVO;

/**
 * Servlet implementation class MessageAction
 */
@WebServlet("/fmMember/message.do")
public class MessageAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageAction() {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		MSGVO m = new MSGVO();
		m.setUserid(request.getParameter("userid"));
		m.setSendid(request.getParameter("sendid"));
		m.setContent(request.getParameter("content"));
		
		
		
		MSGDAO dao = MSGDAO.getInstance();
		dao.msgInsert(m);
		PrintWriter out=response.getWriter();
		out.println("<script>history.back();</script>");
		response.sendRedirect("boardList.bo");
		
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
