package service.impl;

import model.Employee;
import repository.IEmployeeRepository;
import repository.impl.EmployeeRepository;
import service.IEmployeeService;
import service.validation.Validation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EmployeeService implements IEmployeeService {
    private IEmployeeRepository iEmployeeRepository = new EmployeeRepository();
    @Override
    public List<Employee> findAll() {
        return iEmployeeRepository.findAll();
    }

    @Override
    public Map<String,String> create(Employee employee) {
        Map<String, String> errorMap = new HashMap<>();
        if (employee.getEmployeeEmail().equals("")) {
            errorMap.put("email", "Email không được để trống!");
        } else if (!Validation.checkEmail(employee.getEmployeeEmail())) {
            errorMap.put("email", "Email không đúng định dạng");
        }
        if (employee.getEmployeeName().equals("")) {
            errorMap.put("name", "Name không được để trống!");
        } else if (!Validation.checkName(employee.getEmployeeName())) {
            errorMap.put("name", "Name không đúng định dạng");
        }
        if (employee.getEmployeeAddress().equals("")) {
            errorMap.put("address", "Address không được để trống!");
        }
        if (employee.getEmployeeIdCard().equals("")) {
            errorMap.put("idCard", "IdCard không được để trống!");
        } else if(!Validation.checkIdCard(employee.getEmployeeIdCard())){
            errorMap.put("idCard","Idcard ko đúng đinh dạng");
        }
        if (employee.getEmployeePhone().equals("")) {
            errorMap.put("phoneNumber", "Phone không được để trống!");
        } else if (!Validation.checkPhone(employee.getEmployeePhone())) {
            errorMap.put("phoneNumber", "Phone không đúng định dạng (XX)-(0XXXXXXXXX)");
        }

        if (employee.getEmployeeBirthday().equals("")){
            errorMap.put("dateOfBirth", "Date Of Birth không được để trống!");
        }
        if(employee.getEmployeeSalary()<=0){
            errorMap.put("salary","Salary sai định dạng");
        }
        if (errorMap.size() == 0) {
            boolean check = iEmployeeRepository.create(employee);
        }
        return errorMap;
    }

    @Override
    public boolean delete(int idDelete) {
        return iEmployeeRepository.delete(idDelete);
    }

    @Override
    public List<Employee> findEmployeeByName(String name) {
        return iEmployeeRepository.findEmployeeByName(name);
    }

    @Override
    public Employee findEmployeeByID(int id) {
        return iEmployeeRepository.findEmployeeByID(id);
    }

    @Override
    public boolean edit(Employee employee) {
        return iEmployeeRepository.edit(employee);
    }

    @Override
    public Map<Integer, String> findDivision() {
        return iEmployeeRepository.findDivision();
    }

    @Override
    public List<Employee> searchEmployee(String name, String email, String divisionType) {
        return iEmployeeRepository.searchEmployee(name,email,divisionType);
    }


}
