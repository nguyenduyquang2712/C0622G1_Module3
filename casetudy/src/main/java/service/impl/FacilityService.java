package service.impl;

import model.Customer;
import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;
import java.util.Map;

public class FacilityService implements IFacilityService {
    private IFacilityRepository iFacilityRepository = new FacilityRepository();
    @Override
    public List<Facility> findAll() {
        return iFacilityRepository.findAll();
    }

    @Override
    public boolean addService(Facility facility) {
        return iFacilityRepository.addService(facility);
    }

    @Override
    public boolean deleteService(int id) {
        return iFacilityRepository.deleteService(id);
    }

    @Override
    public Map<Integer, String> findTypeService() {
        return iFacilityRepository.findTypeService();
    }

    @Override
    public List<Facility> searchService(String searchName, String searchTypeService) {
        return iFacilityRepository.searchService(searchName,searchTypeService);
    }

    @Override
    public Map<Integer, String> findRentType() {
        return iFacilityRepository.findRentType();
    }

    @Override
    public Facility findFacilityById(int id) {
        return iFacilityRepository.findFacilityById(id);
    }

    @Override
    public boolean updateService(Facility facility) {
        return iFacilityRepository.updateService(facility);
    }
}
