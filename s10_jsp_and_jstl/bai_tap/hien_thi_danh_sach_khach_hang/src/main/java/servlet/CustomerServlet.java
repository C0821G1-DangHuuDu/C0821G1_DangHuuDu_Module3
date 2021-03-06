package servlet;

import bean.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"","/customer_list"})
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội","1.png"));
        customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang","2.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hoà","1983-08-22","Nam Định","3.jpeg"));
        customerList.add(new Customer("Trần Đăng Khoa","1983-08-17","Hà Tây","4.jpg"));
        customerList.add(new Customer("Nguỹen Đình Thi","1983-08-19","Hà Tây","5.jpg"));

         request.setAttribute("customerList",customerList);
         request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
