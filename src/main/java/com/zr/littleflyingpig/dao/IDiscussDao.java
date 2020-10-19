package com.zr.littleflyingpig.dao;

import java.util.List;

import com.zr.littleflyingpig.pojo.Discuss;

/**
 * 评论dao接口，包含一系列处理评论的方法。
 * 
 * @author 幻想
 *
 */

public interface IDiscussDao {

	/**
	 * 添加评论
	 * 
	 * @param discuss 一个Discuss对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addDiscuss(Discuss discuss);

	/**
	 * 评论信息的修改,即商家的回复
	 * 
	 * @param d_replay:商家回复内容,d_id:商家回复的对应评论id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateDiscuss(String d_replay, int d_id);

	/**
	 * 根据评论id删除用评论信息
	 * 
	 * @param d_id int类型，评论id
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteDiscuss(int[] d_ids);

	/**
	 * 根据评论id查看评论信息
	 * 
	 * @param d_id int类型，评论id
	 * @return 一个Discuss对象
	 */
	Discuss findDiscussById(int d_id);

	/**
	 * 查询所有评论信息
	 * 
	 * @return 一个Discuss对象的集合
	 */
	List<Discuss> findAllDiscuss();

	/**
	 * 根据商家是否回复查询评论信息
	 * 
	 * @param flag boolean值，true为已回复的评论查找，false为未回复的评论查找
	 * @return 一个Discuss对象的集合
	 */
	List<Discuss> findDiscussesByReplay(boolean flag);

	/**
	 * 根据商品id查询评论信息
	 * 
	 * @param w_id int类型，商品id
	 * @return 一个Discuss对象的集合
	 */
	List<Discuss> findDiscussesByWid(int w_id);

}
