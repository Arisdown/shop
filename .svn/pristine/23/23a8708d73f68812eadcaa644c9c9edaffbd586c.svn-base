package com.qf.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.ClassInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.qf.domain.CrmClass;
import com.qf.service.ClassInfoServcie;
@Controller
public class uploadController {

	@Autowired
	private ClassInfoServcie infoServcie;
	@RequestMapping(value = "/upload/upload")
	public void uploadPic(String classid,@RequestParam("uploadpath") MultipartFile file,HttpServletResponse response,HttpServletRequest request) throws IOException{
		//处理上传的文件
		//1. 获取文件存储的路径 － 项目根目录的upload子目录
		String dirPath = request.getServletContext().getRealPath("/upload");
		File dir = new File(dirPath);
		if(!dir.exists()) {
					dir.mkdir(); //如果目录不存在，则创建目录
		}
		//扩展名
		String fileName=file.getOriginalFilename();
		System.out.println(fileName);
		//String ext = FilenameUtils.getExtension(file.getOriginalFilename());
		String ext=fileName.substring(fileName.lastIndexOf("."));
		
		//图片名称生成策略
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		//图片名称一部分
		String format = df.format(new Date());
		
		//随机三位数
		Random r = new Random();
		// n 1000   0-999   99
		for(int i=0 ; i<3 ;i++){
			format += r.nextInt(10);
		}
		fileName=format+"."+ext;
		try {
			file.transferTo(new File(dir,fileName));
			System.out.println("--文件上传成功！--");
		} catch (IOException e) {
			e.printStackTrace();
		}
		//返回二个路径
		CrmClass info=new CrmClass();
		info.setUploadtime(new Date());
		info.setUploadfilename(fileName);
		info.setUploadpath("/upload/"+fileName);
		info.setClassid(classid);
		int rows=infoServcie.updateUploadInfo(info);
		if(rows>0){
			response.getWriter().print("success");
		}
	}

    @RequestMapping("/downFile")  
    public void downFile(HttpServletRequest request,  
            HttpServletResponse response) {  
        // 得到要下载的文件名  
        String fileName = request.getParameter("filename");  
        try {  
            fileName = new String(fileName.getBytes("iso8859-1"), "UTF-8");  
            // 获取上传文件的目录  
            ServletContext sc = request.getSession().getServletContext();  
            // 上传位置  
            String fileSaveRootPath = sc.getRealPath("/upload");   
              
            System.out.println(fileSaveRootPath + "\\" + fileName);  
            // 得到要下载的文件  
            File file = new File(fileSaveRootPath + "\\" + fileName);  
              
            // 如果文件不存在  
            if (!file.exists()) {  
                request.setAttribute("message", "您要下载的资源已被删除！！");  
                System.out.println("您要下载的资源已被删除！！");  
                return;  
            }  
            // 处理文件名  
            String realname = fileName.substring(fileName.indexOf("_") + 1);  
            // 设置响应头，控制浏览器下载该文件  
            response.setHeader("content-disposition", "attachment;filename="  
                    + URLEncoder.encode(realname, "UTF-8"));  
            // 读取要下载的文件，保存到文件输入流  
            FileInputStream in = new FileInputStream(fileSaveRootPath + "\\" + fileName);  
            // 创建输出流  
            OutputStream out = response.getOutputStream();  
            // 创建缓冲区  
            byte buffer[] = new byte[1024];  
            int len = 0;  
            // 循环将输入流中的内容读取到缓冲区当中  
            while ((len = in.read(buffer)) > 0) {  
                // 输出缓冲区的内容到浏览器，实现文件下载  
                out.write(buffer, 0, len);  
            }  
            // 关闭文件输入流  
            in.close();  
            // 关闭输出流  
            out.close();  
        } catch (Exception e) {  
              e.printStackTrace();
        }  
    }  
}
