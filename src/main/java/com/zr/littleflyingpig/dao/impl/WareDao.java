package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IWareDao;
import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 商品dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class WareDao implements IWareDao {

	@Override
	public boolean addWare(Ware ware) {

		String sql = "insert into tb_ware values(null,?,?,?,?,?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, ware.getT_id(), ware.getW_name(), ware.getW_brand(), ware.getW_price(),
					ware.getW_repertory(), ware.getW_url(), ware.getW_material(), ware.getW_describe(),
					ware.getW_sale(), ware.getW_state());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateWare(Ware ware) {

		String sql = "update tb_ware set t_id=?,w_name=?,w_brand=?,w_price=?,w_repertory=?,w_url=?,w_material=?,w_describe=?,w_sale=?,w_state=? where w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, ware.getT_id(), ware.getW_name(), ware.getW_brand(), ware.getW_price(),
					ware.getW_repertory(), ware.getW_url(), ware.getW_material(), ware.getW_describe(),
					ware.getW_sale(), ware.getW_state(), ware.getW_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteWare(int w_id) {

		String sql = "delete from tb_ware where w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, w_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Ware findWareById(int w_id) {

		Ware ware = null;
		String sql = "select * from tb_ware where w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			ware = runner.query(sql, new BeanHandler<Ware>(Ware.class), w_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ware;
	}

	@Override
	public List<Ware> findAllWareBySales(boolean flag) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认销量升序
		String sql = "select * from tb_ware order by w_sale asc";
		if (!flag) {
			// 为false,销量降序
			sql = "select * from tb_ware order by w_sale desc";
		}

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findAllWareByPrice(boolean flag) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认单价升序
		String sql = "select * from tb_ware order by w_price asc";
		if (!flag) {
			// 为false,单价降序
			sql = "select * from tb_ware order by w_price desc";
		}

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findWaresByString(String str) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认销量降序
		String sql = "select * from tb_ware where w_name like ? order by w_sale desc";

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class), "%" + str + "%");

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findWaresByType(int t_id) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认销量升序
		String sql = "select * from tb_ware where t_id=?";

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class), t_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findWaresByPrice(double low, double high) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		String sql = "select * from tb_ware where w_price>? and w_price<?";

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class), low, high);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findWaresByTypeAndPrice(int t_id, double low, double high) {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认销量升序
		String sql = "select * from tb_ware where t_id=? and w_price>? and w_price<?";

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class), t_id, low, high);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Ware> findAllWares() {

		List<Ware> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		String sql = "select * from tb_ware";

		try {

			list = runner.query(sql, new BeanListHandler<Ware>(Ware.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public boolean updateWareStateById(Ware ware) {
		String sql="update tb_ware set w_state=? where w_id=?";
		QueryRunner runner=new QueryRunner(TxDBUtils.getSource());
		int line;
		try {
			line=runner.update(sql,ware.getW_state(),ware.getW_id());
			if (line==1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
