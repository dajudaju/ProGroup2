package com.zr.littleflyingpig.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zr.littleflyingpig.dao.IInformationDao;
import com.zr.littleflyingpig.pojo.Information;
import com.zr.littleflyingpig.util.TxDBUtils;

/**
 * 通知dao层接口实现类
 * 
 * @author Administrator
 *
 */
public class InformationDao implements IInformationDao {

	@Override
	public boolean addInformation(Information information) {

		String sql = "insert into tb_information values(null,?,?,?)";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, information.getC_id(), information.getI_content(), information.getI_date());
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean deleteInformation(int i_id) {

		String sql = "delete from tb_information wehre i_id=?";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			int line = runner.update(sql, i_id);
			if (line == 1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public List<Information> findInformationByCid(int c_id) {

		List<Information> list = null;
		String sql = "select * from tb_information";
		QueryRunner runner = new QueryRunner(TxDBUtils.getSource());

		try {

			list = runner.query(sql, new BeanListHandler<Information>(Information.class));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
