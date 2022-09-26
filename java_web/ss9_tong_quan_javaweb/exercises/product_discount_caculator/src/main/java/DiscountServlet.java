import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

@WebServlet(name = "DiscountServlet", urlPatterns = "/discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=UTF-8");

        String price = request.getParameter("price");

        String discount = request.getParameter("discount");

        String description = request.getParameter("description");

        BigDecimal discountAmount = new BigDecimal(Double.parseDouble(price) * Double.parseDouble(discount) * 0.01);

        BigDecimal discountPrice = new BigDecimal(Double.parseDouble(price) - Double.parseDouble(price) * Double.parseDouble(discount) * 0.01);

        request.setAttribute("description", description);

        request.setAttribute("price", price);

        request.setAttribute("discount", discount);

        request.setAttribute("discountAmount", discountAmount);
        
        request.setAttribute("discountPrice", discountPrice);

        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}