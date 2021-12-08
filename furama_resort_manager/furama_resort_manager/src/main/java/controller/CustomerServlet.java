package controller;

import service.ICustomerService;
import service.imp.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
        ICustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "search":
                request.getRequestDispatcher("/user_view/search.jsp").forward(request,response);
                break;
            case "sort":

                break;
            default:
                loadListCustomer(request,response);
                break;

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "show":

                break;
            case "sort":

                break;
            default:
                loadListCustomer(request,response);
                break;

        }
    }

    private void loadListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setAttribute("customerList",customerService.loadListCustomer());
       request.getRequestDispatcher("/customer/list.jsp").forward(request,response);
    }
}
