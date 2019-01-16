package vo;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
	//ªÛ«∞ insert
	public void goodsInsert(goodsDTO g) {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "insert into goods values(goods_seq.nextval,?,?,?,?)";
			ps = con.prepareStatement(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
