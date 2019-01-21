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

public class goodsDAO {
	private static goodsDAO instance = new goodsDAO();
	public static goodsDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/board");
		return ds.getConnection();
	}
	//insert(goods)
	public void goodsInsert(goodsDTO g) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = getConnection();
			String sql = "insert into goods values(goods_seq.nextval,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, "sungwook");
			ps.setString(2, g.getTitle());
			ps.setString(3, g.getCategory());
			ps.setString(4, g.getSummernote());
			ps.setString(5, g.getMainpic());
			ps.setInt(6, g.getPrice());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//goodsList(fashion)
	public ArrayList<goodsDTO> goodsList(){
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		String sql="";
		 try {
		     con = getConnection();
	    	 sql = "select * from goods";
	    	 st = con.createStatement();
	    	 rs = st.executeQuery(sql);
	    	 while(rs.next()) {
				 goodsDTO g = new goodsDTO();
				 g.setNum(rs.getInt("num"));
				 g.setUserid(rs.getString("userid"));
				 g.setTitle(rs.getString("title"));
				 g.setCategory(rs.getString("category"));
				 g.setSummernote(rs.getString("summernote"));
				 g.setMainpic(rs.getString("mainpic"));
				 g.setPrice(rs.getInt("price"));
				 arr.add(g);
		     }
		  } catch (Exception e) {
		    e.printStackTrace();
		  }finally {
		     closeCon(con,st,rs);
		  }
		  return arr;
	}
	//이미지 불러오는 놈
	
	
	
	
	
	//객체 닫는 놈들
	private void closeCon(Connection con, PreparedStatement ps) {
		try {
			if(ps!=null) ps.close();
			if(con!=null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}
	private void closeCon(Connection con, Statement st,ResultSet rs) {
		try {
			if(st!=null) st.close();
			if(con!=null) con.close();
			if(rs!=null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}
	private void closeCon(Connection con, Statement st) {
		try {
			if(st!=null) st.close();
			if(con!=null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
