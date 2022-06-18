package za.ac.tut.u221091140.laboratorywebapp.controller.studentadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.LabService;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.LabRequest;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.RequestService;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/studentadmin")
public class StudentAdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private RequestService reqServ;

    @Autowired
    private LabService labServ;

    @GetMapping("")
    public String showAdminDashboard(HttpServletRequest request){

        HttpSession session = request.getSession();
        if(!session.isNew()){
            //User user = userService.findUserById()
        }
        return "stud_admin_dashboard";
    }

    @GetMapping("/availablelabs")
    public String getAllLabsAvailable(Model model){


        return "view_labs";
    }

    @GetMapping("/signinout")
    public String signInOrOutPage(Model model, HttpServletRequest request){

        Long userId = ((User)request.getSession().getAttribute("user")).getId();
        List<LabRequest> usersRequests = reqServ.getRequestbyUserId(userId);


        model.addAttribute("userRequest",usersRequests);

        return "sign_in_out";
    }

    @PostMapping("/signinout")
    public String signInOrOut(HttpServletRequest request){
        String type = request.getParameter("type");
        Long reqId = Long.parseLong(request.getParameter("reqid"));
        if(type.equalsIgnoreCase("in")){
            reqServ.signIn(reqId);
        }


        return "sign_in_out";
    }

    @GetMapping("/requestlab")
    public String requestLabPage(Model model){
        List<Lab> labList = labServ.getAllLabs();

        model.addAttribute("labs",labList);

        return "request_lab";
    }

    @PostMapping("/requestlab")
    public void requestLab(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String labno = request.getParameter("labno");
        Date startTime = (new SimpleDateFormat("HH:mm")).parse(request.getParameter("start"));
        Date endTime = (new SimpleDateFormat("HH:mm")).parse(request.getParameter("end"));


        response.sendRedirect("/studentadmin");

    }


}
