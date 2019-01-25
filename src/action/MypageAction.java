package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.MemberDAO;
import vo.MemberDTO;
import vo.goodsDAO;
import vo.goodsDTO;

/**
 * Servlet implementation class MypageAction
 */
@WebServlet({ "/MypageAction", "/fm/myPage.do" })
public class MypageAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		
		goodsDAO gdao = goodsDAO.getInstance();
		MemberDAO mdao = MemberDAO.getInstance();
		
		MemberDTO mdto = new MemberDTO();
		mdto = mdao.memberView(id);
		
		ArrayList<goodsDTO> cartArr = new ArrayList<>();
		cartArr = gdao.cartlist();
		
		ArrayList<goodsDTO> prodArr = new ArrayList<>();
		prodArr = gdao.get_info(id);
		
		System.out.println(mdto.getPhone() + mdto.getAddr() + mdto.getName());
		
		
		request.setAttribute("cartArr", cartArr);
		request.setAttribute("mdto", mdto);
		request.setAttribute("prodArr", prodArr);
		
		RequestDispatcher rd = request.getRequestDispatcher("../fm/myPageTab.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
