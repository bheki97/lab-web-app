package za.ac.tut.u221091140.laboratorywebapp.controller.studentadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.LabRequest;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.RequestService;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/studentadmin")
public class StudentAdminController {

    @Autowired
    private RequestService reqServ;

    @GetMapping("")
    public String showAdminDashboard(){

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


}
