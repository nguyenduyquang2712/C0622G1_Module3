package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServiceServlet", urlPatterns = "/service")
public class ServiceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        String type = request.getParameter("type");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                if(type.equals("villa")){
                    showNewFormVilla(request,response);
                }
                if(type.equals("room")){
                    showNewFormRoom(request,response);
                }
                if(type.equals("house")){
                    showNewFormHouse(request,response);
                }
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                listService(request,response);
                break;
        }
    }

    private void showNewFormHouse(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showNewFormRoom(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showNewFormVilla(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("facility/createvilla.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listService(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("facility/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
