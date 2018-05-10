package ru.kpfu.itis.util;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import ru.kpfu.itis.model.FileInfo;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;


@Component
public class FileStorageUtil {

    private String storagePath = "D:/pics";

    public String getStoragePath() {
        return storagePath;
    }

    public void copyToStorage(MultipartFile file, String fileName) {
        try {
            Files.copy(file.getInputStream(), Paths.get(storagePath, fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public FileInfo convertFromMultipart(MultipartFile file) {

        String originalFilename = file.getOriginalFilename();
        String type = file.getContentType();

        String storageName = createStorageName(originalFilename);
        String urlOfFile = getUrlOfFile(storageName);
        FileInfo fileInfo = new FileInfo();
        fileInfo.setFileName(storageName);
        fileInfo.setType(type);
        fileInfo.setUrl(urlOfFile);
        return fileInfo;
    }

    private String getUrlOfFile(String storageFileName) {
        return storagePath + "/" + storageFileName;
    }

    private String createStorageName(String originalFileName) {
        String extension = FilenameUtils.getExtension(originalFileName);
        String newFileName = UUID.randomUUID().toString();
        return newFileName + "." + extension;
    }
}
