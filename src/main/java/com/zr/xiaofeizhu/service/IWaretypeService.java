package com.zr.xiaofeizhu.service;

import java.util.List;

import com.zr.xiaofeizhu.pojo.Waretype;

/**
 * 商品分类服务接口，包含一系列商品分类处理的方法。
 *Waretype：商品分类实体类，根据数据库中tb_waretype表建立。
 * @author 幻想
 *
 */
public interface IWaretypeService {

	/**
	 * 添加商品分类
	 * @param waretype 一个Waretype对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addWaretype(Waretype waretype);
	
	/**
	 * 商品分类信息的修改
	 * @param waretype ：一个Waretype对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateWaretype(Waretype waretype);
	
	/**
	 * 根据商品分类id删除用商品分类
	 * @param t_id int类型，商品分类id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	 boolean deleteWaretype(int t_id);
	 
	 /**
	  * 根据商品分类id查找商品分类
	  * @param t_id int类型，商品分类id
	  * @return 一个Waretype对象
	  */
	 Waretype findWaretypeById(int t_id);
	 
	 /**
	  * 查询所有商品分类信息
	  * @return 一个Waretype对象的集合
	  */
	 List<Waretype> findAllWaretype();
	 
	 
}
