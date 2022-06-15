package za.ac.tut.u221091140.laboratorywebapp.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.LabService;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.UserService;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin.AdminService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    UserService userService;

    @Autowired
    private LabService labService;

    @GetMapping("")
    public String showAdminDashboard(){


        return "dashboard";
    }


    //Mappings on Adding User
    @GetMapping("/adduser")
    public String addUserPage(){

        return "create_acc";
    }

    @PostMapping("/adduser")
    public void createcAc(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        User user = adminService.CreateUser(request);
        userService.addUser(user);

        session.setAttribute("msg","User Successfully Added");


        response.sendRedirect("/admin");
    }




    //Mapping on adding Lab

    @GetMapping("/addlab")
    public String addLabPage(){

        return "addlab";
    }


    @PostMapping("/addlab")
    public void addLab(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        Lab lab = adminService.createLab(request);


        session.setAttribute("msg","Lab Successfully Added!!");


        response.sendRedirect("/admin");

    }

    // Mapping for getting all Labs Available
    @GetMapping("/availablelabs")
    public String getAllAvailableLabs(Model model){

        model.addAttribute("labs",labService.getAllLabs());
         return  "see_labs_avail";
    }

    //Mapping for getting all request made by Student Admin
    @GetMapping("/requests")
    public String getAllRequests(){


        return "view_all_request";
    }



}
