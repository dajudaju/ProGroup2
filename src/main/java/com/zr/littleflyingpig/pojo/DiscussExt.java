package com.zr.littleflyingpig.pojo;

/**
 * 管理员评论管理时列表展示需要的实体类
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
public class DiscussExt extends Discuss {

	// 用户名
	private String c_name;
	// 商品名
	private String w_name;

	/**
	 * 午餐构造
	 */
	public DiscussExt() {
		super();
	}

	/**
	 * 有参构造
	 * 
	 * @param discuss
	 * @param c_name
	 * @param w_name
	 */
	public DiscussExt(Discuss discuss, String c_name, String w_name) {
		super(discuss.getD_id(), discuss.getC_id(), discuss.getW_id(), discuss.getD_content(), discuss.getD_replay());
		this.c_name = c_name;
		this.w_name = w_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getW_name() {
		return w_name;
	}

	public void setW_name(String w_name) {
		this.w_name = w_name;
	}

	@Override
	public int hashCode() {
		return super.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		return super.equals(obj);
	}

	@Override
	public String toString() {
		return super.toString() + "\n----DiscussExt [c_name=" + c_name + ", w_name=" + w_name + "]";
	}

}
