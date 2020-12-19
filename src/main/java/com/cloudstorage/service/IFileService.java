package com.cloudstorage.service;

import com.cloudstorage.model.FileMsg;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface IFileService {

    // 上传文件
    boolean upload(MultipartFile file, String userName, String path);

    // 下载文件
    String download(String fileName, String userName, String path);

    // 列出用户文件
    List<FileMsg> userFileList(String userName, String path);

    // 删除文件
    Boolean[] userFileDelete(String fileName, String userName, String path);

    // 重命名文件
    boolean userFileRename(String oldName, String newName, String userName, String path);

    // 新建文件夹
    boolean userDirCreate(String dirName, String path);

    // 移动文件、文件夹
    boolean userFileDirMove(String fileName, String oldPath, String newPath, String userName);

    // search
    List<FileMsg> search(String key, String userName, String path);

    //文件合成
    boolean merge(String fileName, String userName, String path) throws InterruptedException;

    //文件复制
    boolean copyFileToMyPan(String userName, String localLink, String path);

}
