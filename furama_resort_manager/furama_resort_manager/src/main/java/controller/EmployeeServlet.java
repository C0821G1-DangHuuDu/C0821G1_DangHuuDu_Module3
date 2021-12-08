package controller;

import repository.IEmployeeRepository;
import service.IEmployeeService;
import service.imp.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet",urlPatterns = "/employees")
public class EmployeeServlet extends HttpServlet {
    IEmployeeService employeeService = new EmployeeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionEmployee = request.getParameter("actionEmployee");
        if (actionEmployee == null) {
            actionEmployee = "";
        }
        switch (actionEmployee) {
            case "search":
                request.getRequestDispatcher("/user_view/search.jsp").forward(request,response);
                break;
            case "sort":

                break;
            default:
                loadListEmployee(request,response);
                break;

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionEmployee = request.getParameter("actionEmployee");
        if (actionEmployee == null) {
            actionEmployee = "";
        }
        switch (actionEmployee) {
            case "show":

                break;
            case "sort":

                break;
            default:
                loadListEmployee(request,response);
                break;

        }
    }

    private void loadListEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("employeeList",employeeService.loadListEmployee());
        request.getRequestDispatcher("/employee/list.jsp").forward(request,response);
    }
}
