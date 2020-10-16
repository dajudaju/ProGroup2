package com.zr.littleflyingpig.service;

import java.util.List;

import com.zr.littleflyingpig.pojo.WareCustomer;

/**
 * 用户商品关系服务接口，包含一系列处理用户商品关系的方法。<br>
 * WareCustomer：用户商品关系实体类，根据数据库中tb_warecustomer表建立。
 * 
 * @author 幻想
 *
 */

public interface IWareCustomerService {

	/**
	 * 添加商品购物车或收藏
	 * 
	 * @param wareCustomer ：一个WareCustomer对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addWareCustomer(WareCustomer wareCustomer);

	/**
	 * 商品-用户信息的修改
	 * 
	 * @param wareCustomer 一个WareCustomer对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateWareCustomer(WareCustomer wareCustomer);

	/**
	 * 根据用户id和商品id删除商品-用户信息
	 * 
	 * @param c_id int类型，用户id
	 * @param w_id int类型，商品id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteWareCustomer(int c_id, int w_id);

	/**
	 * 根据用户id和商品id查询商品-用户信息
	 * 
	 * @param c_id int类型，用户id
	 * @param w_id int类型，商品id
	 * @return 一个WareCustomer对象
	 */
	WareCustomer findWareCustomerByCidAndWid(int c_id, int w_id);

	/**
	 * 根据用户id查询商品-用户信息
	 * 
	 * @param c_id int类型，用户id
	 * @param flag boolean值，为true则查询购物车信息，为false则查询收藏信息
	 * @return 一个WareCustomer对象的集合
	 */
	List<WareCustomer> findWareCustomersByCid(int c_id, boolean flag);

}
