package com.example.demo;

public class User {
    private String userId;
    private String userName;
    private String userEmail;
    private String password;
    private int point;

    public User(String userId, String userName, String userEmail, String password) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.password = password;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public boolean setPassword(String password, String new_password) {
        if (this.password.equals(password)) {
            this.password = new_password;
            return true;
        } else {
            return false;
        }
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public boolean passwordEqualsTo(String target) {
        return password.equals(target);
    }

    public int getPoint() {
        return point;
    }
}
