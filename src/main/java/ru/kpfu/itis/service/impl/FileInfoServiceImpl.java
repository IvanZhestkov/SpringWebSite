package ru.kpfu.itis.service.impl;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.kpfu.itis.model.FileInfo;
import ru.kpfu.itis.repository.FileInfoRepository;
import ru.kpfu.itis.service.FileInfoService;
import ru.kpfu.itis.util.FileStorageUtil;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Optional;

@Service
public class FileInfoServiceImpl implements FileInfoService {

    @Autowired
    private FileInfoRepository fileInfoRepository;

    @Autowired
    private FileStorageUtil fileStorageUtil;

    @Override
    public void getPicture(String fileName, HttpServletResponse response) {
        Optional<FileInfo> fileInfoOptional = fileInfoRepository.findFirstByFileName(fileName);
        if (fileInfoOptional.isPresent()) {
            FileInfo fileInfo = fileInfoOptional.get();
            response.setContentType(fileInfo.getType());

            try {
                InputStream inputStream = new FileInputStream(new File(fileInfo.getUrl()));
                IOUtils.copy(inputStream, response.getOutputStream());
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                response.flushBuffer();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public FileInfo savePicture(MultipartFile multipartFile) {
        FileInfo fileInfo = fileStorageUtil.convertFromMultipart(multipartFile);
        fileInfoRepository.save(fileInfo);
        fileStorageUtil.copyToStorage(multipartFile, fileInfo.getFileName());
        return fileInfo;
    }
}
