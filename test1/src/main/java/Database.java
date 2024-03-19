import java.sql.*;

public class Database {
    Connection conn = null;
    public Database() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.cj.jdbc.Driver");//注册驱动
        this.conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb_test?serverTimezone=GMT%2B8", "root", "qwer19811122");


    }
    public void showConnect()
    {
         if(conn==null){
             System.out.println("数据库连接失败");
         }
         else{
             System.out.println(("数据库连接成功"));
         }

    }
    //关闭连接
    public void close() throws SQLException{
        conn.close();
    }

    //在表中添加数据
    public void insert(String name,String pwd,String email) throws SQLException {
        PreparedStatement prep=conn.prepareStatement("insert into javaweb_test.tb_user value (?,?,?)");
        prep.setString(1,name);
        prep.setString(2, pwd);
        prep.setString(3, email);
        // 执行插入操作
        int rowsAffected = prep.executeUpdate();

        // 检查是否插入成功
        if (rowsAffected > 0) {
            System.out.println("插入成功");
        } else {
            System.out.println("插入失败");
        }

    }
    //在表中查询数据

    public Usedata getUser(String email) throws SQLException {
        PreparedStatement prep=conn.prepareStatement("select * from javaweb_test.tb_user where email=?");
        prep.setString(1,email);
        prep.execute();
        ResultSet resultSet =prep.executeQuery();
        if(resultSet.next())
        {
            String myname=resultSet.getString("username");
            String mypwd=resultSet.getString("userPwd");
            String myemail=resultSet.getString("email");
            return new Usedata(myname,mypwd,myemail);
        }
        return null;
    }

    //登录
    public  Usedata login(String email,String pwd) throws SQLException {
        PreparedStatement prep=conn.prepareStatement("select javaweb_test.tb_user.userPwd from javaweb_test.tb_user where email=?");
        prep.setString(1, email);
        prep.execute();
        ResultSet resultSet =prep.executeQuery();
        if(resultSet.next())
        {
            String mypwd=resultSet.getString("userPwd");
            if(pwd.equals(mypwd)){
                return getUser(email);
            }
            else
                return null;
        }
        else
            return null;
    }
}
