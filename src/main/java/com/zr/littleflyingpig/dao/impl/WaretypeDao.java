package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IWaretypeDao;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 商品分类Dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class WaretypeDao implements IWaretypeDao {

	@Override
	public boolean addWaretype(Waretype waretype) {

		String sql = "insert into tb_waretype values(null,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, waretype.getT_name());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateWaretype(Waretype waretype) {

		String sql = "update tb_waretype set t_name=? where t_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, waretype.getT_name(), waretype.getT_id());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteWaretype(int t_id) {

		String sql = "delete from tb_waretype where t_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, t_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Waretype findWaretypeById(int t_id) {

		Waretype waretype = null;
		String sql = "select * from tb_waretype where t_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			waretype = runner.query(sql, new BeanHandler<Waretype>(Waretype.class), t_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return waretype;
	}

	@Override
	public List<Waretype> findAllWaretype() {

		List<Waretype> list = null;
		String sql = "select * from tb_waretype";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Waretype>(Waretype.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
