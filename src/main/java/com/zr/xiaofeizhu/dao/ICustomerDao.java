package com.zr.xiaofeizhu.dao;


import java.util.List;

import com.zr.xiaofeizhu.pojo.Customer;

/**
 * 用户的Dao接口，包含一系列针对用户的方法。
 *Customer：用户的实体类，根据数据库中tb_customer表建立的。
 *
 * @author 幻想
 *
 */
public interface ICustomerDao {
	/**
	 * 用户根据用户名和密码登录
	 * 
	 * @param c_name     String类型，登录时输入的用户名
	 * @param c_password String类型，登录时输入的密码（采用了MD5加密）
	 * @return
	 */
	Customer login(String c_name,String c_password);
	
	 /**
		 * 用户注册
		 * 
		 * @param customer boolean类型，
		 * @return true为成功，false为失败
		 */
	boolean register(Customer customer);
	
	 /**
		 * 用户信息的修改
		 * 
		 * @param customer boolean类型
		 * @return true为成功，false为失败
		 */
	boolean updateCustomer(Customer customer);
	
	 /**
		 * 根据用户id查找用户
		 * 
		 * @param c_id int类型 ，用户的id
		 * @return Customer对象的集合
	
	 */
	Customer findCustomerById(int c_id);
	
	/**
		 * 查询所有用户信息
		 * 
		 * @return Customer对象的集合
		 */
	List<Customer> findAllCustomer();

	/**
	 * 根据一个用户名来实现模糊查询用户信息
	 * @param c_name String类型，用户名的一部分或者全部
	 * @return Customer对象的集合
	 */
	List<Customer> findCustomersByString(String c_name);
	
	
}
