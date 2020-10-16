package com.zr.littleflyingpig.dao;

import java.util.List;

import com.zr.littleflyingpig.pojo.Address;

/**
 * 收货地址Dao接口，包含一系列处理地址的方法。
 *Address：收货地址实体类，根据数据库中tb_address表建立。
 * @author 幻想
 *
 */
public interface IAddressDao  {
 
	/**
	 * 添加地址
	 * @param address 一个Address对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addAddress(Address address);
	
	/**
	 * 地址信息的修改
	 * @param address 一个Address对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	 boolean updateAddress(Address address);
	 
	 /**
	  * 根据地址id删除用地址信息
	  * @param a_id int类型，收货地址id
	  * @return 一个boolean值，true为成功，false为失败
	  */
	 boolean deleteAddress(int a_id);
	 
	 /**
	  * 根据地址id查看地址信息
	  * @param a_id int类型，收货地址id
	  * @return 一个Address对象
	  */
	 Address findAddressById(int a_id);
	 
	 /**
	  * 根据用户id查询地址信息
	  * @param c_id int类型，用户id
	  * @return 一个Address对象的集合
	  */
	 List<Address> findAddressesByCid(int c_id);
	 
	 
	
}
