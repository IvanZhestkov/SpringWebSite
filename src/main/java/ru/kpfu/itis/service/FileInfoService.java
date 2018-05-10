package ru.kpfu.itis.service;

import org.springframework.web.multipart.MultipartFile;
import ru.kpfu.itis.model.FileInfo;

import javax.servlet.http.HttpServletResponse;

public interface FileInfoService {
    void getPicture(String fileName, HttpServletResponse response);

    FileInfo savePicture(MultipartFile multipartFile);
}
