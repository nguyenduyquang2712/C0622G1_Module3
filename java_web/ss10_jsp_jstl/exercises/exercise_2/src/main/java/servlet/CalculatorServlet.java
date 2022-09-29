package servlet;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        float firstOperand = Float.parseFloat((request.getParameter("first-operand")));

        float secondOperand = Float.parseFloat((request.getParameter("second-operand")));

        String operator = request.getParameter("operator");

        try {
            float result = Calculator.calculate(firstOperand, secondOperand, operator);
            request.setAttribute("result", firstOperand + " " + operator + " " + secondOperand + " = " + result);
            request.getRequestDispatcher("/result.jsp").forward(request, response);

        } catch (Exception ex) {
            request.setAttribute("result", ex.getMessage());
            request.getRequestDispatcher("/result.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
