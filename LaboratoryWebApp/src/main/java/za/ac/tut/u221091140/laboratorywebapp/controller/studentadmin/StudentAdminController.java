package za.ac.tut.u221091140.laboratorywebapp.controller.studentadmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
    public String getAllLabsAvailable(){

        return "view_labs";
    }

    @GetMapping("signinout")
    public String signInOrOut(Model model, HttpServletRequest request){

        Long userId = ((User)request.getSession().getAttribute("user")).getId();
        List<LabRequest> usersRequests = reqServ.getRequestbyUserId(userId);


        model.addAttribute("userRequest",usersRequests);

        return "sign_in_out.";
    }


}
