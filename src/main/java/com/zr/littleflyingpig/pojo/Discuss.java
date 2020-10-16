package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * discuss实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Discuss implements Serializable {

	// 评论主键编号 d_id
	private int d_id;
	// 用户主键编号 外键 c_id
	private int c_id;
	// 商品主键编号 外键 w_id
	private int w_id;
	// 评论内容 d_content
	private String d_content;
	// 回复评论内容 d_replay
	private String d_replay;

	/**
	 * 有参构造方法
	 * 
	 * @param d_id
	 * @param c_id
	 * @param w_id
	 * @param d_content
	 * @param d_replay
	 */
	public Discuss(int d_id, int c_id, int w_id, String d_content, String d_replay) {
		super();
		this.d_id = d_id;
		this.c_id = c_id;
		this.w_id = w_id;
		this.d_content = d_content;
		this.d_replay = d_replay;
	}

	/**
	 * 空参构造方法
	 */
	public Discuss() {
		super();
	}

	public int getD_id() {
		return d_id;
	}

	public void setD_id(int d_id) {
		this.d_id = d_id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	public String getD_content() {
		return d_content;
	}

	public void setD_content(String d_content) {
		this.d_content = d_content;
	}

	public String getD_replay() {
		return d_replay;
	}

	public void setD_replay(String d_replay) {
		this.d_replay = d_replay;
	}

	@Override
	public int hashCode() {
		return super.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (obj instanceof Discuss) {
			Discuss d = (Discuss) obj;
			if (d.getD_id() == this.d_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Discuss [d_id=" + d_id + ", c_id=" + c_id + ", w_id=" + w_id + ", d_content=" + d_content
				+ ", d_replay=" + d_replay + "]";
	}

}
