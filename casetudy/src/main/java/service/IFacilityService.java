package service;

import model.Facility;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    List<Facility> findAll();

    boolean addService(Facility facility);

    boolean deleteService(int id);

    Map<Integer, String> findTypeService();

    List<Facility> searchService(String searchName, String searchTypeService);

    Map<Integer, String> findRentType();

    Facility findFacilityById(int id);

    boolean updateService(Facility facility);
}
