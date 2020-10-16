package com.zr.xiaofeizhu.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import com.zr.xiaofeizhu.util.TxDBUtils;


/**
 * 测试是否连入数据库
 * 
 */
public class TestConnection {
	@Test
	public void testConnection() {
		
		try {
			Connection connection = TxDBUtils.getSource().getConnection();
			System.out.println(connection);
			TxDBUtils.release();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		}
}
