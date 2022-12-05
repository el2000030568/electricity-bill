package com.klu.model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.Fileinfo;

@Service
public class FileManager {

Fileinfo FI = new Fileinfo();
	
	public String uploadFile(MultipartFile file)
	{
		if(file.isEmpty())
			return "Please select a file to upload";
		
		String filename = file.getOriginalFilename();
		String path = "./src/main/webapp/upload/";
		long filesize = file.getSize();
		
		FI.filename = filename;
		FI.path = path;
		FI.filesize = filesize;
		FI.uploadedbytes = 0;
		
		try
		{
			OutputStream out = new FileOutputStream(new File(path + filename));
			InputStream in = file.getInputStream();
			
			int read = 0;
			byte[] buffer = new byte[1024];
			while( (read = in.read(buffer)) != -1 )
			{
				out.write(buffer, 0, read);
				Thread.sleep(100);
				FI.uploadedbytes += read;
			}
			out.close();
			in.close();
			return "File uploaded successfully";
		}catch(Exception e)
		{
			return e.getMessage();
		}
	}
	
	public List<String> getFiles(){
		List<String> list = new ArrayList<String>();
		File curDir = new File("./src/main/webapp/upload");
		for(File F : curDir.listFiles()) {
			if(F.isFile())
			{
				Fileinfo FI = new Fileinfo();
				FI.filename = F.getName();
				FI.path = "upload/";
				FI.filesize = F.length();
				FI.uploadedbytes = 0;
				list.add(toJSONString(FI));
			}
		}
		return list;
	}
	
	public String deletefile(String filename) {
		File curDir = new File("./src/main/webapp/upload/" +filename);
		if(curDir.delete())
			return null;
		else
			return "Wrong file name given";
	}
	
	public String uploadStatus()
	{
		return toJSONString(FI);
	}
	
	public String toJSONString(Object obj)
	{
		GsonBuilder gb = new GsonBuilder();
		Gson gson = gb.create();
		return gson.toJson(obj);
	}
	
}
