package com.shopeme.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.web.multipart.MultipartFile;

public class FileUplodaUtil {
	
	public static void saveFile(String uploadDir,String fileName,MultipartFile multipartFile) throws IOException {
		Path uploadPath =Paths.get(uploadDir);
		if(!Files.exists(uploadPath)) {
			Files.createDirectories(uploadPath);
		}
		try(InputStream inputStrem =multipartFile.getInputStream()){
			Path filePath=uploadPath.resolve(fileName);
			Files.copy(inputStrem, filePath,StandardCopyOption.REPLACE_EXISTING);
			
		}catch(IOException ex) {
			throw new IOException("Could Not save file"+fileName,ex);
		}
	}
	public static void cleanDir(String dir) {
		Path dirPath=Paths.get(dir);
		try{
			Files.list(dirPath).forEach(file ->{
				if(!Files.isDirectory(file)) {
				try {
					Files.delete(file);
				}catch (IOException e) {
					System.out.println("Could not delete file:"+file);
				}
				}
			});
		}catch(IOException ex) {
			System.out.println("Could not list Directory:"+dir);
		}
	}

}