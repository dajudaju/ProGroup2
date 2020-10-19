package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IDiscussDao;
import com.zr.littleflyingpig.pojo.Discuss;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 用户评论dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class DiscussDao implements IDiscussDao {

	@Override
	public boolean addDiscuss(Discuss discuss) {

		String sql = "insert into tb_discuss values(null,?,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, discuss.getC_id(), discuss.getW_id(), discuss.getD_content(),
					discuss.getD_replay());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean updateDiscuss(String d_repaly, int d_id) {

		String sql = "update tb_discuss set d_replay=? where d_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, d_repaly, d_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteDiscuss(int[] d_ids) {

		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			for (int i = 0; i < d_ids.length; i++) {
				String sql = "delete from tb_discuss where d_id=?";
				int line = runner.update(sql, d_ids[i]);
				if (line != 1) {
					return false;
				}
			}
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Discuss findDiscussById(int d_id) {

		Discuss discuss = null;
		String sql = "select * from tb_discuss where d_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			discuss = runner.query(sql, new BeanHandler<Discuss>(Discuss.class), d_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return discuss;
	}

	@Override
	public List<Discuss> findAllDiscuss() {

		List<Discuss> list = null;
		String sql = "select * from tb_discuss";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Discuss>(Discuss.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Discuss> findDiscussesByReplay(boolean flag) {

		List<Discuss> list = null;
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());
		// 默认
		String sql = "select * from tb_discuss where d_replay is null;";
		if (flag) {
			// 为true,已回复的评论查找
			sql = "select * from tb_discuss where d_replay is not null;";
		}

		try {

			list = runner.query(sql, new BeanListHandler<Discuss>(Discuss.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Discuss> findDiscussesByWid(int w_id) {

		List<Discuss> list = null;
		String sql = "select * from tb_discuss where w_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Discuss>(Discuss.class), w_id);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
