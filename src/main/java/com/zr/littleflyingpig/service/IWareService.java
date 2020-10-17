package com.zr.littleflyingpig.service;

import java.util.List;

import com.zr.littleflyingpig.pojo.Ware;

/**
 * 商品服务接口，包含一系列商品的处理方法。<br>
 * Ware：商品的实体类，根据数据库中tb_ware表建立
 * 
 * @author 幻想
 *
 */
public interface IWareService {
	/**
	 * 添加商品
	 * 
	 * @param ware 一个Ware对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addWare(Ware ware);

	/**
	 * 商品信息的修改
	 * 
	 * @param ware 一个Ware对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateWare(Ware ware);

	/**
	 * 根据商品id删除商品信息
	 * 
	 * @param w_id int类型，商品id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteWare(int w_id);

	/**
	 * 查询所有商品信息
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findAllWares();
	
	/**
	 * 根据商品id查询商品信息
	 * 
	 * @param w_id int类型，商品id
	 * @return 一个Ware对象
	 */
	Ware findWareById(int w_id);

	/**
	 * 根据商品销量查询所有商品信息
	 * 
	 * @param flag boolean值，为true，则按销量升序查询，为false，则按销量降序查询
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findAllWareBySales(boolean flag);

	/**
	 * 根据单价查询所有商品信息
	 * 
	 * @param flag ：boolean值，为true，则按单价升序查询，为false，则按单价降序查询
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findAllWareByPrice(boolean flag);

	/**
	 * 根据一个字符串，实现商品name的模糊查询
	 * 
	 * @param str String类型，代表查询条件的字符串
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findWaresByString(String str);

	/**
	 * 根据商品分类id查找商品信息
	 * 
	 * @param t_id int类型，商品分类id
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findWaresByType(int t_id);

	/**
	 * 根据一个价格区间查找商品信息
	 * 
	 * @param low  double类型，表示价格区间中低的值
	 * @param high double类型，表示价格区间中高的值
	 * @return 一个Ware对象的集合
	 */
	List<Ware> findWaresByPrice(double low, double high);

	/**
	 * 根据商品分类和价格区间查找商品信息
	 * 
	 * @param t_id int类型，商品分类id
	 * @param low  double类型，表示价格区间中低的值
	 * @param high double类型，表示价格区间中高的值
	 * @return 个Ware对象的集合
	 */
	List<Ware> findWaresByTypeAndPrice(int t_id, double low, double high);

}
