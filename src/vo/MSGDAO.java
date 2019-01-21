package vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MSGDAO {
	private static MSGDAO instance = new MSGDAO();
	ArrayList<MemberDTO> arr ;
	public static MSGDAO getInstance(){
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/board");
		return ds.getConnection();
	}
	//메세지 인서트
	public void msgInsert(MSGVO m) {
		Connection con= null;
		PreparedStatement ps =  null;
			try {
				con = getConnection();
				String sql = "Insert into fmmsg values (fmmsg_seq.nextval,?,?,?,?,0)";
				ps = con.prepareStatement(sql);
				ps.setString(1,m.getUserid());
				ps.setString(2, m.getSendid());
				ps.setString(3, m.getContent());
			
				ps.executeUpdate();
				System.out.println("userid : " + m.getUserid() );
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				closeCon(con,ps);
			}
			
	}
	
private void closeCon(Connection con, PreparedStatement ps){
	
	try {
		if(con!=null)con.close();
		if(ps!=null)ps.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
	private void closeCon(Connection con,PreparedStatement ps, ResultSet rs){
		
		try {
			if(con!=null)con.close();
			if(ps!=null)ps.close();
			if(rs!=null)rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
