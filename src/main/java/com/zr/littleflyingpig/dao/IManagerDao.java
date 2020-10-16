package com.zr.littleflyingpig.dao;

import com.zr.littleflyingpig.pojo.Manager;
/**
 * 管理员Dao接口，包含一些管理员信息的处理方法。
 * Manager：管理员实体类，根据数据库中tb_manager表建立。
 * @author 幻想
 *
 */

public interface IManagerDao {
	/**
	 * 管理员根据用户名和密码登录
	 * @param m_name String类型，管理员输入的账号名
	 * @param m_password String类型，管理员输入的账号密码
	 * @return 返回一个Manager对象，非null表示登录成功，null为登录失败
	 */
	Manager login(String m_name,String m_password);
	
	/**
	 * 管理员信息的修改
	 * @param manager ：一个Manager对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	 boolean updateManager(Manager manager);
	 
	 
	 
}
