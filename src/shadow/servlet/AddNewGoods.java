package json.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;

import json.daoImpl.MainDaoImpl;
import json.pojo.Goods;
import json.pojo.User;
import shadow.dao.MainDao;

@WebServlet("/add-new-goods")
public class AddNewGoods extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("utf-8");
	   	resp.setContentType("text/html;charset=utf-8");
	   	resp.setHeader("Access-Control-Allow-Origin", "*");
	   	resp.setCharacterEncoding("utf-8");
	   	HttpSession hs= req.getSession();
	   	Goods g = new Goods();
	   	User u=new User();
	   	DiskFileItemFactory factory = new DiskFileItemFactory();
		String tempPath=this.getServletContext().getRealPath("tempFolder");
		File f=new File(tempPath);
		if(!f.exists()) {
			f.mkdirs();
		}
		factory.setRepository(f);
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		fileUpload.setHeaderEncoding("utf-8");
		try {
			List<FileItem> fileItems= fileUpload.parseRequest(req);

			int num=1;
			for(int i=0;i<fileItems.size();i++) {
				if(fileItems.get(i).isFormField()) {
					String s=fileItems.get(i).getString();
					s=new String(s.getBytes("iso8859-1"),"utf-8");
					g= new Gson().fromJson(s, Goods.class);	
					if("".equals(g.getgNo())) {
						g.setExist(0);
						g.setgNo(UUID.randomUUID().toString());
					}
					
				}
			}
			for(int i=0;i<fileItems.size();i++) {
				if(!fileItems.get(i).isFormField()) {
					String afterDot=fileItems.get(i).getName();
					afterDot=afterDot.substring(afterDot.lastIndexOf("."));
					String fileName=g.getgNo()+"_"+num+afterDot;
					String webPath=this.getServletContext().getRealPath("img"+File.separator);
					if(num==1) {
						g.setgUrl(".."+File.separator+"img"+File.separator+fileName);
					}
					else {
						g.setgUrl2(".."+File.separator+"img"+File.separator+fileName);
					}
					num++;	
					String filePath=webPath+File.separator+fileName;
					File file=new File(filePath);	
					file.getParentFile().mkdirs();
					file.createNewFile();
					InputStream in = fileItems.get(i).getInputStream();
					FileOutputStream out =new FileOutputStream(file);
					byte[] buffer= new byte[1024];
					int len;
					while((len=in.read(buffer))>0)
						out.write(buffer, 0,len);
					in.close();
					out.close();
					fileItems.get(i).delete();
					
				}		
			}
//			System.out.println(g.toString());
			u = (User) hs.getAttribute("user");
			MainDao md = new MainDaoImpl();
			md.addNewGoods(g,u.getuNo());
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
