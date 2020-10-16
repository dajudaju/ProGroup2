package com.zr.littleflyingpig.dao;

import java.util.Date;
import java.util.List;

import com.zr.littleflyingpig.pojo.Order;
/**
 * 订单Dao接口，包含一系列处理订单的方法。
 *Order：订单实体类，根据数据库中tb_order表中
 * @author 幻想
 *
 */
public interface IOrderDao {

	/**
	 * 添加订单
	 * @param order 一个Order对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean addOrder(Order order);
	
	/**
	 * 订单信息的修改
	 * @param order 一个Order对象
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean updateOrder(Order order);
	
	/**
	 * 根据多个订单id删除多条定订单信息
	 * @param o_ids int[ ]类型，订单id的数组
	 * @return 一个boolean值，true为成功，false为失败
	 */
	boolean deleteOrder(int[] o_ids);
	
	/**
	 * 根据订单id查找订单
	 * @param o_id int类型，订单id
	 * @return 一个Order对象的集合
	 */
	Order findOrderById(int o_id);
	
	/**
	 * 根据日期区间查看订单
	 * @param date1 Date类型，日期区间的低位日期
	 * @param date2 Date类型，日期区间的高位日期
	 * @return 一个Order对象的集合
	 */
	 List<Order> findOrdersByDate(Date date1,Date date2);
	 
	 /**
	  * 根据订单的状态查询订单
	  * @param o_state ：int类型，订单的5种状态，（0：未发货，1：已发货，2：已完成，3：待退款,4：已退款）
	  * @return 一个Order对象的集合
	  */
	 List<Order> findOrdersByState(int o_state);
}
