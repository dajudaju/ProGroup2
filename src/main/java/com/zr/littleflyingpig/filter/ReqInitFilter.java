package com.zr.littleflyingpig.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 所有请求的编码处理
 * 
 * @author Administrator
 *
 */
public class ReqInitFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		// 获取全局编码
		String encoding = req.getServletContext().getInitParameter("encoding");
		System.out.println("过滤器获取全局编码参数: encoding= " + encoding);

		req.setCharacterEncoding(encoding);
		resp.setCharacterEncoding(encoding);
		resp.setContentType("text/html;charset=" + encoding);
		
		if(req.toString().contains(".css") || req.toString().contains(".js") || req.toString().contains(".png")|| req.toString().contains(".do")){
            //发现是css或者js文件，直接放行
            chain.doFilter(req, resp);
        }else {
        	chain.doFilter(req, resp);
    		System.out.println("过滤器已放行!");
		}
	}

}
