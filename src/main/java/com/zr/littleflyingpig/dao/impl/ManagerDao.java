package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zr.littleflyingpig.dao.IManagerDao;
import com.zr.littleflyingpig.pojo.Manager;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 管理员dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class ManagerDao implements IManagerDao {

	@Override
	public Manager login(String m_name, String m_password) {

		Manager manager = null;
		String sql = "select * from tb_manager where m_name=? and m_password=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			manager = runner.query(sql, new BeanHandler<Manager>(Manager.class), m_name, m_password);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return manager;
	}

	@Override
	public boolean updateManager(Manager manager) {

		String sql = "update tb_manager set m_name=?,m_password=? where m_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, manager.getM_name(), manager.getM_password(), manager.getM_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

}
