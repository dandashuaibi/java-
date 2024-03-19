public class Usedata {
    private String username;
    private String userPwd;
    private String email;

    public Usedata(String username, String userPwd, String email) {
        this.username = username;
        this.userPwd = userPwd;
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
