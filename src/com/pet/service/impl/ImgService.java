package com.pet.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import  org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.pet.mapper.ImgMapper;
import com.pet.pojo.*;
import com.pet.util.Property;
import com.pet.util.UploadManager;

@Service("imgService")
public class ImgService {
	
	@Autowired
	ImgMapper imgMapper ;
	
	
	/**
	 *  上传单个图片文件
	 * @param img
	 * @return
	 * @throws IOException
	 */
	public Map<String, Object> uploadPhoto(MultipartFile img) throws IOException {
	//	UploadManager uploadManager = new UploadManager();
		String bucketName = "forpet";
		String folder = "post/";//上传目录
		Map<String, Object> map = new HashMap<String, Object>();
		Img details = new Img();
		String key = UUID.randomUUID().toString()+"."+getImgType(img);
		details.setKey(key);
	/*	
		CommonsMultipartFile cFile = (CommonsMultipartFile) img;
        DiskFileItem fileItem = (DiskFileItem) cFile.getFileItem();*/
        InputStream inputStream = img.getInputStream();
		Long lenght = img.getSize();//文件长度
		
		/*String etag =*/ UploadManager.uploadByStream2OSS( inputStream, lenght ,details,  bucketName,   folder);
		/*if(etag == null || etag.length() ==0) {
			map.put("status", Property.ERROR_PHOTO_CREATE);
			return map;
		} else {	
			map.put("key", key);
			map.put("link", IMG_BASE_URL+key);
			map.put("status", Property.SUCCESS_PHOTO_CREATE);			
		}*/
		return map;
	}
	
	/**
	 * 上传多个图片文件，并插入记录数据库
	 * @param imgs
	 * @param folder
	 * @param object_id
	 * @return
	 * @throws IOException
	 */
	public Map<String, Object> uploadPhotos(MultipartFile[] imgs , String folder, int object_id)throws IOException{
		
		String bucketName = "forpet";
		//String folder = "post/";//上传目录
		Map<String, Object> map = new HashMap<String, Object>();
		//判断file数组不能为空并且长度大于0  
        if(imgs!= null && imgs.length>0){  
            //循环获取file数组中得文件  
            for(int i = 0;i<imgs.length;i++){  
                MultipartFile file = imgs[i];
                Img details = new Img();
        		String key = UUID.randomUUID().toString()+"."+getImgType(file);
        		details.setObject_id(object_id);
        		details.setKey(key);
        		//添加记录到数据库
        		imgMapper.saveImg(details);
                //保存文件  
        		InputStream inputStream = file.getInputStream();
        		Long lenght = file.getSize();//文件长度
        	//	 UploadManager.uploadByStream2OSS( inputStream, lenght ,details,  bucketName,   folder);
              //
            }  
            
        }  
        
        
        
        return map;
	}
	
	
	
	public String getImgType(MultipartFile img) {
		String contentType = img.getContentType();
		return contentType.substring(contentType.indexOf('/')+1);
	}
}
