package service;

import model.Customer;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> findAll();

    boolean create(Customer customer);

    boolean delete(int idDelete);

    List<Customer> findCustomerByName(String name);
    Customer findCustomerByID(int id);

    boolean edit(Customer customer);

    Map<Integer, String> findAllCustomerType();
}
