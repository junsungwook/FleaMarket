package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Security_SHA256 {
	public String encriptSHA256(String str) {
		String sha = null;
		
		MessageDigest sh;
		try {
			sh = MessageDigest.getInstance("SHA-256");
			sh.update(str.getBytes());
			byte byteData[] = sh.digest();
			StringBuffer sb = new StringBuffer();
			for(int i=0;i<byteData.length;i++) {
				sb.append(Integer.toString((byteData[i]&0xff) + 0x100,16).substring(1)); 
			}
			sha = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("암호화 오류 -  algorithm Exception");
			sha = null;
		}
		return sha;
		
	}
}
