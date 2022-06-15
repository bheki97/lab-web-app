package za.ac.tut.u221091140.laboratorywebapp.controller.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/home")
public class HomeController {

    @GetMapping("")
    public ModelAndView homepage(HttpServletRequest request){

        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();

        if(request.getSession().isNew()){
            session = request.getSession(true);
            session.setAttribute("msg","Welcome User");
        }else{
            session = request.getSession();
        }

        modelAndView.setViewName("index");

        return modelAndView;
    }



    private User createUser(String name, String surname, String userId, String email, String cellNo, String passwrd, String role) {
        User user = new User();
        user.setId(Long.parseLong(userId));
        user.setCellNo(cellNo);
        user.setName(name);
        user.setPassword(passwrd);
        user.setSurname(surname);
        user.setRole(role);

        return user;
    }

}
