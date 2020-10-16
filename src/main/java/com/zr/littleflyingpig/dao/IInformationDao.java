package com.zr.littleflyingpig.dao;

import java.util.List;

import com.zr.littleflyingpig.pojo.Information;
/**
 * 通知Dao接口，包含一系列通知的处理方法。
 *Information：通知实体类，根据数据库中tb_information表建立。
 * @author 幻想
 *
 */
public interface IInformationDao {
	/**
	 * 添加通知信息
	 * @param information 一个Information对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addInformation(Information information);
	
	/**
	 * 根据通知id删除通知信息
	 * @param i_id int类型，通知id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteInformation(int i_id);
	
	/**
	 * 根据用户id查询通知信息
	 * @param c_id int类型，用户id
	 * @return 一个Information对象的集合
	 */
	List<Information> findInformationByCid(int c_id);
	
	
	
}
