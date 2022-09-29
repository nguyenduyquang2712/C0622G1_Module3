import customer_info.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerInforServlet", urlPatterns = "")
public class CustomerInforServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();

        customers.add(new Customer("Lê Văn Luyện","11/11/1995","Hà Giang","img/chandung1.jfif"));

        customers.add(new Customer("Trần Viết Huy","11/11/1995","Hà Tây","img/chandung2.jfif"));

        customers.add(new Customer("Trần Viết Long","11/11/1998","Hà Tây","img/chandung3.jfif"));

        customers.add(new Customer("Trần Viết Nam","11/12/1997","Hà Nội","img/chandung4.jfif"));

        customers.add(new Customer("Trần Viết Quang","11/12/1994","Long An","img/chandung5.jfif"));
        request.setAttribute("customers",customers);
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }
}
