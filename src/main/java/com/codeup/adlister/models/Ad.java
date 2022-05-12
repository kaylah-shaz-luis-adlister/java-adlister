package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private long category;
    private String photo;


    public Ad(long userId, String title, String description, long category, String photo) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category = category;
        this.photo = photo;
    }

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public long getUserId() {
        return userId;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }

    public long getCategory() {
        return category;
    }

    public void setCategory(long category) {
        this.category = category;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}