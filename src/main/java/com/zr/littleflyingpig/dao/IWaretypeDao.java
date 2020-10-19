package com.zr.littleflyingpig.dao;

import java.util.List;

import com.zr.littleflyingpig.pojo.Waretype;

/**
 * 商品分类dao接口，包含一系列商品分类处理的方法。
 * 
 * @author 幻想
 *
 */
public interface IWaretypeDao {

	/**
	 * 添加商品分类
	 * 
	 * @param waretype 一个Waretype对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addWaretype(Waretype waretype);

	/**
	 * 商品分类信息的修改
	 * 
	 * @param waretype ：一个Waretype对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateWaretype(Waretype waretype);

	/**
	 * 根据商品分类id删除用商品分类
	 * 
	 * @param t_id int类型，商品分类id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteWaretype(int t_id);

	/**
	 * 根据商品分类id查找商品分类
	 * 
	 * @param t_id int类型，商品分类id
	 * @return 一个Waretype对象
	 */
	Waretype findWaretypeById(int t_id);

	/**
	 * 查询所有商品分类信息
	 * 
	 * @return 一个Waretype对象的集合
	 */
	List<Waretype> findAllWaretype();

	/**
	 * 根据类别名查询商品
	 * @param tname
	 * @return
	 */
	boolean findWareTypeByName(String tname);

}
