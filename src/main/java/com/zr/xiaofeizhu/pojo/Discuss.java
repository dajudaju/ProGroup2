package com.zr.xiaofeizhu.pojo;

import java.io.Serializable;

/**
 * discuss实体类
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Discuss implements Serializable{
	//评论主键编号 d_id
	private int d_id;
	//用户主键编号  外键 c_id
	private int c_id;
	//商品主键编号  外键  w_id
	private int w_id;
	//评论内容  d_content
	private String d_content;
	//回复评论内容 d_replay
	private String d_replay;
	/**
	 * 有参构造方法
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
	//空参构造方法
	public Discuss() {
		super();
		// TODO Auto-generated constructor stub
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
		final int prime = 31;
		int result = 1;
		result = prime * result + c_id;
		result = prime * result + ((d_content == null) ? 0 : d_content.hashCode());
		result = prime * result + d_id;
		result = prime * result + ((d_replay == null) ? 0 : d_replay.hashCode());
		result = prime * result + w_id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Discuss other = (Discuss) obj;
		if (c_id != other.c_id)
			return false;
		if (d_content == null) {
			if (other.d_content != null)
				return false;
		} else if (!d_content.equals(other.d_content))
			return false;
		if (d_id != other.d_id)
			return false;
		if (d_replay == null) {
			if (other.d_replay != null)
				return false;
		} else if (!d_replay.equals(other.d_replay))
			return false;
		if (w_id != other.w_id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Discuss [d_id=" + d_id + ", c_id=" + c_id + ", w_id=" + w_id + ", d_content=" + d_content
				+ ", d_replay=" + d_replay + "]";
	}
	
	
	
}
