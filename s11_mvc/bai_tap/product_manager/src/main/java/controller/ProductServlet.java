package controller;

import model.Product;
import service.IProductService;
import service.imp.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"/products"})
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionProduct = request.getParameter("actionProduct");
        if(actionProduct == null){
            actionProduct = "";
        }
        switch (actionProduct){
            case "create":
                createNewProduct(request,response);
                break;
            case "edit":
                editProduct(request,response);
                break;
            case "search":
                searchProduct(request,response);
                break;
            default:
                break;
        }
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameProduct = request.getParameter("nameProduct");
        boolean check = true;
        for(Product product:productService.getAll()){
            if(product.getNameProduct().equals(nameProduct)){
                request.setAttribute("productView",product);
                request.getRequestDispatcher("/view.jsp").forward(request,response);
                break;
            } else {
                check = false;

            }
        }
        if (check==false){
            request.setAttribute("msg","Không tìm thấy tên sản phẩm");
            request.getRequestDispatcher("/search.jsp").forward(request,response);
        }

    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameProduct = request.getParameter("nameProduct");
        double priceProduct = Double.parseDouble(request.getParameter("priceProduct"));
        String detailProduct = request.getParameter("detailProduct");
        String factoryProduct = request.getParameter("factoryProduct");
        Product product = new Product(id,nameProduct,priceProduct,detailProduct,factoryProduct);
        productService.editProduct(product);
        loadListProduct(request,response);
    }

    private void createNewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameProduct = request.getParameter("nameProduct");
        double priceProduct = Double.parseDouble(request.getParameter("priceProduct"));
        String detailProduct = request.getParameter("detailProduct");
        String factoryProduct = request.getParameter("factoryProduct");
        Product product = new Product(id,nameProduct,priceProduct,detailProduct,factoryProduct);
        productService.saveNewProduct(product);
        loadListProduct(request,response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionProduct = request.getParameter("actionProduct");
        if(actionProduct == null){
            actionProduct = "";
        }
        switch (actionProduct){
            case "create":
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;
            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("id"));
                String nameProduct = request.getParameter("nameProduct");
                double priceProduct = Double.parseDouble(request.getParameter("priceProduct"));
                String detailProduct = request.getParameter("detailProduct");
                String factoryProduct = request.getParameter("factoryProduct");
                Product product = new Product(idEdit,nameProduct,priceProduct,detailProduct,factoryProduct);
                request.setAttribute("product",product);
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("id"));
                String nameProductDelete = request.getParameter("nameProduct");
                double priceProductDelete = Double.parseDouble(request.getParameter("priceProduct"));
                String detailProductDelete = request.getParameter("detailProduct");
                String factoryProductDelete = request.getParameter("factoryProduct");
                Product productDelete = new Product(idDelete,nameProductDelete,priceProductDelete,detailProductDelete,factoryProductDelete);
                productService.deleteProduct(productDelete);
                loadListProduct(request,response);
                break;
            case "view":
                int idView = Integer.parseInt(request.getParameter("id"));
                String nameProductView = request.getParameter("nameProduct");
                double priceProductView = Double.parseDouble(request.getParameter("priceProduct"));
                String detailProductView = request.getParameter("detailProduct");
                String factoryProductView = request.getParameter("factoryProduct");
                Product productView = new Product(idView,nameProductView,priceProductView,detailProductView,factoryProductView);
                request.setAttribute("productView",productView);
                request.getRequestDispatcher("/view.jsp").forward(request,response);
                break;
            case "search":
                request.getRequestDispatcher("/search.jsp").forward(request,response);
                break;
            default:
                loadListProduct(request,response);
                break;
        }
    }

    private void loadListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.getAll();
        if (productList==null){
            request.setAttribute("msg","Danh sách rỗng");
        } else {
            request.setAttribute("productList",productList);
        }

        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }
}
