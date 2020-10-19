package com.zr.littleflyingpig.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.IWaretypeService;
import com.zr.littleflyingpig.service.impl.WareService;
import com.zr.littleflyingpig.service.impl.WaretypeService;

/**
 * 后台管理员的请求处理
 * 
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
@WebServlet("/managerServlet")
public class ManagerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

}
