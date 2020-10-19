package com.zr.littleflyingpig.web;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.zr.littleflyingpig.pojo.Ware;
import com.zr.littleflyingpig.pojo.Waretype;
import com.zr.littleflyingpig.service.IWareService;
import com.zr.littleflyingpig.service.IWaretypeService;
import com.zr.littleflyingpig.service.impl.WareService;
import com.zr.littleflyingpig.service.impl.WaretypeService;

@SuppressWarnings("serial")
@WebServlet("/updatewareServlet")
public class UpdateWareServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Ware ware=uploadImg(req,resp);
		ware.setW_id(Integer.parseInt(req.getSession().getAttribute("wid").toString()));
		IWareService wareService=new WareService();
		IWaretypeService waretypeService=new WaretypeService();
		boolean flag=wareService.updateWare(ware);
		System.out.println(flag);
		if (flag) {
			PrintWriter writer=resp.getWriter();
			writer.write("<font color='skyblue' size='2'>商品修改成功，请刷新后查看~</font>");
			writer.flush();
			writer.close();
		}
	}
	/**
	 * 上传商品图片
	 * @param req
	 * @param resp
	 */
	private Ware uploadImg(HttpServletRequest req, HttpServletResponse resp) {
		Ware ware=new Ware();
		boolean isMultipart=ServletFileUpload.isMultipartContent(req);
		if (isMultipart) {
			//获取磁盘文件条目列表
			DiskFileItemFactory factory=new DiskFileItemFactory();
			//设置上传文件的缓存值
			factory.setSizeThreshold(1024*1024);
			//设置文件的缓存区（即临时目录）不建议使用临时目录
			//该目录内的临时文件使用完毕后会自动删除
			factory.setRepository(new File(req.getSession().getServletContext().getRealPath("/")+"temp"));
			
			//创建文件上传对象
			ServletFileUpload upload=new ServletFileUpload(factory);
			
			/**
			 * 设定上传文件的大小<br>
			 * 设定单个文件的大小，设定上传文件的总大小等<br>
			 */
			//设置单个文件的总大小
			upload.setFileSizeMax(1024*1024);
			//设置上传文件的总大小
			upload.setSizeMax(1024*1024*10);
			try {
				/**
				 * 解析请求，获取到文件条目对象，即，解析请求中有多少上传的文件
				 */
				List<FileItem> list = upload.parseRequest(req);
				
				/**
				 * 迭代每一个对象，判断是普通字段，还是文件类型字段
				 */
				for (FileItem item : list) {
					
					System.out.println(list);
					
					if (item.isFormField()) {
						/**
						 * 普通字段类型
						 */
						//获取请求参数名
						String name=item.getFieldName();
						/**
						 * 细节问题：在处理中文请求时，会出现乱码
						 * 使用“req.setCharacterEncoding("utf-8");”也不能解决问题
						 * 在getString时，可以显示的指定编码
						 */
						String value=item.getString("utf-8");
						
						System.out.println(name+"--"+value);
						switch (name) {
						case "tid":
							ware.setT_id(Integer.parseInt(value));
							System.out.println(ware);
							break;
						case "wname":
							ware.setW_name(value);
							System.out.println(ware);
							break;
						case "wprice":
							ware.setW_price(Double.parseDouble(value));
							System.out.println(ware);
							break;
						case "wrepertory":
							ware.setW_repertory(Integer.parseInt(value));
							System.out.println(ware);
							break;
						case "wmaterial":
							ware.setW_material(value);
							System.out.println(ware);
							break;
						case "wdescribe":
							ware.setW_describe(value);
							System.out.println(ware);
							break;
						default:
							break;
						}
						ware.setW_brand("小飞猪");
						ware.setW_sale(0);
						ware.setW_state((byte) 0);
					}else {
						/**
						 * 文件类型
						 */
						//获取到文件的名称，带后缀
						String filename=item.getName();
						System.out.println("filename："+filename);
						
						/**
						 * 若不同的人上传相同名称的文件，不该将他人文件覆盖
						 * 两种解决方案：
						 * 第一种：不同的人上传的文件存放在不同的目录
						 * 第二种：不同的人上传的文件名不同 
						 */
						//获取文件后缀
						String extension=FilenameUtils.getExtension(filename);
						System.out.println(extension);
						//设计文件的新名称
						filename=UUID.randomUUID().toString();
						/**
						 * FilenameUtils是处理文件名的工具类
						 */
						filename=FilenameUtils.getName(filename);
						System.out.println(filename);
						
						/**
						 * 细节问题：getName方法，若是使用的google浏览器，则获取到其文件名称：girl.jpeg
						 * 若是ie浏览器，则获取的是文件的全名称，需要重点注意: fileName: C:\Users\admin\Desktop\girl.jpg<br>
						 */
						
						ware.setW_url(filename+"."+extension);
						
//						String path=req.getSession().getServletContext().getRealPath("/")+"Images";
						String path="D:/Images";
						
						req.getSession().setAttribute("imgpath", path);
						
						System.out.println(path);
						File dir=new File(path);
						
						if (!dir.exists()) {
							dir.mkdirs();
						}
						
						//根据文件名，创建对象
						File file=new File(path,filename+"."+extension);
						
						//写出文件对象
						item.write(file);
					}
				}
				System.out.println(ware);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		return ware;		
	}
}
