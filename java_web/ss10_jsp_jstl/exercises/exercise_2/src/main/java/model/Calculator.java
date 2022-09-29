package model;

public class Calculator {
    public static float calculate(float firstOperand, float secondOperand, String operator) {
        if (operator.equals("+")) {

            return firstOperand + secondOperand;

        } else if (operator.equals("-")) {

            return firstOperand - secondOperand;

        } else if (operator.equals("x")) {

            return firstOperand * secondOperand;

        } else {

            if (secondOperand != 0)
                return firstOperand / secondOperand;
            else
                throw new RuntimeException("Can't divide by zero");

        }
    }
}
