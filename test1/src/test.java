import java.sql.SQLException;

public class test {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Database database = new Database();
        database.showConnect();
//        database.insert("hangman", "2192189", "999999@123.com");
//        database.close();
//        Usedata usedata=database.getUser("123456@123.com");
//        if (usedata != null) {
//            System.out.println(usedata.getUsername() + usedata.getEmail());
//        } else {
//            System.out.println("未找到用户");
//        }
//    }
        Usedata usedata = database.login("123456@123.com", "123456");

        System.out.println(usedata);
        if (usedata == null) {
            System.out.println("用户不存在或密码错误");
        } else {
            System.out.println("欢迎登录" + usedata.getUsername());
        }
    }
    }
