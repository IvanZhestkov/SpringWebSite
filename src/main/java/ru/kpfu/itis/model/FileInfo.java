package ru.kpfu.itis.model;

import javax.persistence.*;

@Entity
@SequenceGenerator(name = "pic_gen", sequenceName = "pics_seq", allocationSize = 1)
@Table(name = "pics")
public class FileInfo {

    public FileInfo() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "pic_gen")
    private Long id;

    private String fileName;
    private String type;
    private String url;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
