package com.cxspace.utils;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by cxspace on 16-7-28.
 */
public class FileUpload {
 /*
    *
    *    使用前注意前端表单要加
    *
    *     <form name="frm_test" action="${pageContext.request.contextPath }/upload" method="post"
    *     enctype="multipart/form-data">
    *
    *     enctype这个属性
    *
    *     传入的是商品id和request对象
    *
    *
    *     返回上传成不成功
    *
    *
    *     !!!!!!必须现在tomcat/webapps目录下手动创建一个upload文件夹
    *
    *
    * */


    public static List<String> fileUpload(HttpServletRequest request , String id){

        String filename = "";

        List<String> lists = new ArrayList<String>();


        try {

            FileItemFactory fileItemFactory = new DiskFileItemFactory();

            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);

            //10M
            //设置允许单个文件上传大小
            servletFileUpload.setFileSizeMax(10 * 1024 * 1024);

            //总的30M
            servletFileUpload.setSizeMax(30 * 1024 * 1024);

            servletFileUpload.setHeaderEncoding("UTF-8");

            // 3. 判断： 当前表单是否为文件上传表单
            if (servletFileUpload.isMultipartContent(request)) {
                // 4. 把请求数据转换为一个个FileItem对象，再用集合封装
                List<FileItem> list = null;
                try {
                    list = servletFileUpload.parseRequest(request);
                } catch (FileUploadException e1) {
                    e1.printStackTrace();
                }
                // 遍历： 得到每一个上传的数据
                for (FileItem item : list) {
                    // 判断：普通文本数据
                    if (item.isFormField()) {
                        // 普通文本数据

                        String fieldName = item.getFieldName();	// 表单元素名称

                        //指定编码就不会乱码
                        lists.add(item.getString("utf-8"));		// 表单元素名称， 对应的数据

                    }

                    else {

                        String type = item.getContentType();    // 文件类型

                         /*
                         *
                         *     String value = "192.168.128.33";
                               // 注意要加\\,要不出不来,yeah
                               String[] names = value.split("\\.");
                               for (int i = 0; i < names.length; i++) {
                               System.out.println(names[i]);
                         }
                         *
                         * */

                        String [] temps =type.split("\\/");

                        filename = id + "." +temps[1];

                        lists.add(filename);

                        String path = request.getServletContext().getRealPath("/upload");

                        File file = new File(path, filename);

                        item.write(file);
                        item.delete();   //删除系统产生的临时文件

                    }
                }

            } else {

                System.out.println("当前表单不是文件上传表单，处理失败！");
            }
        } catch (Exception e)
        {
            e.printStackTrace();
        }

        return lists;
    }
}
