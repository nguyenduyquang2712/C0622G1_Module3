package service;

import model.Employee;

import java.util.List;
import java.util.Map;

public interface IEmployeeService {
    List<Employee> findAll();

    Map<String,String> create(Employee employee);

    boolean delete(int idDelete);

    List<Employee> findEmployeeByName(String name);
    Employee findEmployeeByID(int id);

    boolean edit(Employee employee);

    Map<Integer, String> findDivision();

    List<Employee> searchEmployee(String name, String email, String divisionType);
}

