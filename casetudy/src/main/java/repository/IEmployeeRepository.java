package repository;

import model.Employee;

import java.util.List;
import java.util.Map;

public interface IEmployeeRepository {
    List<Employee> findAll();

    boolean create(Employee employee);

    boolean delete(int idDelete);

    List<Employee> findEmployeeByName(String name);
    Employee findEmployeeByID(int id);

    boolean edit(Employee employee);

    Map<Integer, String> findDivision();

    List<Employee> searchEmployee(String name, String email, String divisionType);
}
