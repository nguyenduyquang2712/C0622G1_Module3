package controller;

import model.Facility;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ServiceServlet", urlPatterns = "/service")
public class ServiceServlet extends HttpServlet {
   private static IFacilityService iFacilityService = new FacilityService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addService(request,response);
                break;
            case "edit":
                updateService(request,response);
                break;
            case "delete":
                break;
            case "search":
                searchService(request,response);
                break;
            default:
                listService(request,response);
                break;
        }
    }

    private void updateService(HttpServletRequest request, HttpServletResponse response) {

        int type = Integer.parseInt(request.getParameter("type"));
        request.setAttribute("type",type);
       int id = Integer.parseInt(request.getParameter("id"));
        String facilityName = request.getParameter("nameService");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOtherConvenience = request.getParameter("description_other_convenience");
        double poolArea = Double.parseDouble(request.getParameter("pool_area"));
        int numberOfFloors = Integer.parseInt(request.getParameter("number_of_floors"));
        String facilityFree = request.getParameter("facility_free");
        int rentTypeId = Integer.parseInt(request.getParameter("rent_type_id"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facility_type_id"));
        Facility facility = new  Facility(id,facilityName, area,  cost, maxPeople,  standardRoom, descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree, rentTypeId,  facilityTypeId);
        boolean check = iFacilityService.updateService(facility);
        String mess = "Chỉnh sửa thành công";
        if(!check){
            mess = "Chỉnh sửa không thành công ";
        }
        request.setAttribute("mess",mess);
        request.setAttribute("facility",facility);
        Map<Integer,String> mapTypeService = new HashMap<>();
        Map<Integer,String> mapRentType = new HashMap<>();
        mapTypeService = iFacilityService.findTypeService();
        mapRentType = iFacilityService.findRentType();
        request.setAttribute("rentType",mapRentType);
        request.setAttribute("typeService",mapTypeService);
        try {
            request.getRequestDispatcher("view/facility/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    private void addService(HttpServletRequest request, HttpServletResponse response) {
        String facilityName = request.getParameter("nameService");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOtherConvenience = request.getParameter("description_other_convenience");
        double poolArea = Double.parseDouble(request.getParameter("pool_area"));
        int numberOfFloors = Integer.parseInt(request.getParameter("number_of_floors"));
        String facilityFree = request.getParameter("facility_free");
        int rentTypeId = Integer.parseInt(request.getParameter("rent_type_id"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facility_type_id"));
        Facility facility = new  Facility(facilityName, area,  cost, maxPeople,  standardRoom, descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree, rentTypeId,  facilityTypeId);
       boolean check = iFacilityService.addService(facility);
       String mess = "Thêm mới thành công";
       if(!check){
           mess = "Thêm mới không thành công";
       }
       request.setAttribute("mess",mess);
        try {
            request.getRequestDispatcher("/view/facility/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                    showNewForm(request,response);
                break;
            case "edit":
                showEditForm(request,response);
                break;
            case "delete":
                deleteService(request,response);
                break;
            case "search":
                searchService(request,response);
                break;
            default:
                listService(request,response);
                break;
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
       int id = Integer.parseInt(request.getParameter("id"));
        int type = Integer.parseInt(request.getParameter("type"));
        request.setAttribute("type",type);
        Facility facility = iFacilityService.findFacilityById(id);
        request.setAttribute("facility",facility);
        Map<Integer,String> mapRentType = new HashMap<>();
        Map<Integer,String> mapTypeService = new HashMap<>();
        mapTypeService = iFacilityService.findTypeService();
        mapRentType = iFacilityService.findRentType();
        request.setAttribute("rentType",mapRentType);
        request.setAttribute("typeService",mapTypeService);


        try {
            request.getRequestDispatcher("view/facility/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchService(HttpServletRequest request, HttpServletResponse response) {
        Map<Integer,String> mapTypeService = new HashMap<>();
        Map<Integer,String> mapRentType = new HashMap<>();
        String searchName = request.getParameter("searchName");
        String searchTypeService = request.getParameter("searchTypeService");
        List<Facility> facilityList = iFacilityService.searchService(searchName,searchTypeService);
        mapTypeService = iFacilityService.findTypeService();
        mapRentType = iFacilityService.findRentType();
        request.setAttribute("rentType",mapRentType);
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("typeService",mapTypeService);
        try {
            request.getRequestDispatcher("view/facility/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        iFacilityService.deleteService(id);
        try {
            response.sendRedirect("/service");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        int type = Integer.parseInt(request.getParameter("type"));
        Map<Integer,String> mapRentType = new HashMap<>();
        mapRentType = iFacilityService.findRentType();
        request.setAttribute("rentType",mapRentType);
        request.setAttribute("type",type);
        try {
            request.getRequestDispatcher("view/facility/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    private void listService(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = new ArrayList<>();
        facilityList = iFacilityService.findAll();
        Map<Integer,String> mapRentType = new HashMap<>();
        Map<Integer,String> mapTypeService = new HashMap<>();
        mapTypeService = iFacilityService.findTypeService();
        mapRentType = iFacilityService.findRentType();
        request.setAttribute("rentType",mapRentType);
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("typeService",mapTypeService);
        try {
            request.getRequestDispatcher("view/facility/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
