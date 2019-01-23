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
				String sql = "Insert into fmmsg values (fmmsg_seq.nextval,?,?,?,0)";
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
	
	public ArrayList<String> msgcheck(String sendid){
		ArrayList<String> arr = new ArrayList<>();
		Connection con= null;
		   Statement  st = null;
		   ResultSet rs = null; 
		   String sql="";
		   try {
			   con = getConnection();
			   st = con.createStatement();
			   sql="select userid from fmmsg where sendid='"+sendid+"' group by userid";
			   rs = st.executeQuery(sql);
			 while(rs.next()) {
				 System.out.println(rs.getString("userid"));
				 String name = rs.getString("userid");
				 arr.add(name);
		     }
			 
		   	} catch (Exception e) {
		    e.printStackTrace();
		  }finally {
			  closeCon(con,st,rs);
		  }
		   System.out.println(arr.get(0));
		  return arr;
	}
	public ArrayList<MSGVO> msgList(String userid , String sendid) {
		 Connection con= null;
		   PreparedStatement  ps = null;
		   ResultSet rs = null; 
		   ArrayList<MSGVO> arr = new ArrayList<>();
		   String sql="";
		   try {
		     con = getConnection();
		     sql = "select * from (select * from fmmsg where userid=? and sendid=? union select * from fmmsg where userid=? and sendid=? )order by num asc";
			 ps = con.prepareStatement(sql);
			 ps.setString(1,userid);
			 ps.setString(2,sendid);
			 ps.setString(3,sendid);
			 ps.setString(4,userid);
			 rs=ps.executeQuery();
			 while(rs.next()) {
				 MSGVO b = new MSGVO();
				 b.setUserid(rs.getString("userid"));
				 b.setSendid(rs.getString("sendid"));
				 b.setContent(rs.getString("content"));
				 b.setRead(rs.getInt("read"));
				 arr.add(b);
				 }
		  } catch (Exception e) {
		    e.printStackTrace();
		  }finally {
			  closeCon(con,ps,rs);
		  }
		  return arr;
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
private void closeCon(Connection con,Statement st, ResultSet rs){
	
	try {
		if(con!=null)con.close();
		if(st!=null)st.close();
		if(rs!=null)rs.close();
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
