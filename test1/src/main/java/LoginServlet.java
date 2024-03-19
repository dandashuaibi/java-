import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name="LoginServlet",value="/LoginServlet")

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决乱码问题
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        PrintWriter out=response.getWriter();


        try {
            Database database=new Database();

            Usedata usedata = database.login(email,password);
            if (usedata == null) {
                out.println("用户不存在或密码错误"+"<a href=\"http://localhost:8080/test1_war_exploded/\">返回登陆</a>");
            } else {
                out.println("欢迎登录" + usedata.getUsername());
                request.getRequestDispatcher("Mainweb.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

    }

}

