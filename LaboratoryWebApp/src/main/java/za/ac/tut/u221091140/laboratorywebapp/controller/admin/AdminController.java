package za.ac.tut.u221091140.laboratorywebapp.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.UserService;
import za.ac.tut.u221091140.laboratorywebapp.services.AdminService;

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

    @GetMapping("")
    public String showAdminDashboard(){


        return "dashboard";
    }

    @PostMapping("/adduser")
    public void createAcc(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        User user = adminService.CreateUser(request);
        userService.addUser(user);

        session.setAttribute("msg","User Successfully Added");


        response.sendRedirect("/home");
    }

    @PostMapping("/addlab")
    public void addLab(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();



        session.setAttribute("msg","Lab Successfully Added ");


        response.sendRedirect("/home");

    }



}
