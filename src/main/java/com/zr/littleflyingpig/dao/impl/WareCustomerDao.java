package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IWareCustomerDao;
import com.zr.littleflyingpig.pojo.WareCustomer;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 用户-商品dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class WareCustomerDao implements IWareCustomerDao {

	@Override
	public boolean addWareCustomer(WareCustomer wareCustomer) {

		String sql = "insert into tb_warecustomer values(?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, wareCustomer.getC_id(), wareCustomer.getW_id(), wareCustomer.getCollect(),
					wareCustomer.getTrolley(), wareCustomer.getNumber());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateWareCustomer(WareCustomer wareCustomer) {

		String sql = "update tb_warecustomer set collect=?,trolley=?,number=? where c_id=? and w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, wareCustomer.getCollect(), wareCustomer.getTrolley(),
					wareCustomer.getNumber(), wareCustomer.getC_id(), wareCustomer.getW_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteWareCustomer(int c_id, int w_id) {

		String sql = "delete from tb_warecustomer where c_id=? and w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, c_id, w_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public WareCustomer findWareCustomerByCidAndWid(int c_id, int w_id) {

		WareCustomer wareCustomer = null;
		String sql = "select * from tb_warecustomer where c_id=? and w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			wareCustomer = runner.query(sql, new BeanHandler<WareCustomer>(WareCustomer.class), c_id, w_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return wareCustomer;
	}

	@Override
	public List<WareCustomer> findWareCustomersByCid(int c_id, boolean flag) {

		List<WareCustomer> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认查询购物车
		String sql = "select * from tb_warecustomer where trolley=1 and c_id=?";
		if (!flag) {
			// 为false,查询收藏
			sql = "select * from tb_warecustomer where collect=1 and c_id=?";
		}

		try {

			list = runner.query(sql, new BeanListHandler<WareCustomer>(WareCustomer.class), c_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
