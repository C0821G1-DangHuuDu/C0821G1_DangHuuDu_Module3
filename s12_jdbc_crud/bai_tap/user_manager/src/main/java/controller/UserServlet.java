package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "search":
                searchUser(request, response);
                break;
            default:
                break;

        }
    }

    private void searchUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String country = request.getParameter("country");
        List<User> userList = userDAO.searchUser(country);

        if (userList == null) {
            request.setAttribute("msg", "Không tìm thấy");
        } else {
            request.setAttribute("userList", userList);
        }
        request.getRequestDispatcher("/user_view/search.jsp").forward(request, response);
    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "search":
                request.getRequestDispatcher("/user_view/search.jsp").forward(request,response);
                break;
            case "sort":
                sortUser(request,response);
                break;
            default:
                loadList(request,response);
                break;

        }
    }

    private void sortUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList= userDAO.sortUsers();
        if (userList == null){
            request.setAttribute("msg","Danh sách rỗng");
        } else {
            request.setAttribute("userList", userList);
        }
        request.getRequestDispatcher("/user_view/list.jsp").forward(request,response);
    }

    private void loadList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList= userDAO.selectAllUsers();

        if(userList == null ) {
            request.setAttribute("msg","Danh sách rỗng");
        } else {
            request.setAttribute("userList",userList);
        }
            request.getRequestDispatcher("/user_view/list.jsp").forward(request,response);
    }
}
