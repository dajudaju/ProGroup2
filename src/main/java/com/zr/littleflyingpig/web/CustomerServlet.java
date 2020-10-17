package com.zr.littleflyingpig.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 前台用户的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/customerServlet")
public class CustomerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 获取请求的操作指令
		String cmd = req.getParameter("cmd");
		System.out.println("用户cmd: " + cmd);

	}

}
