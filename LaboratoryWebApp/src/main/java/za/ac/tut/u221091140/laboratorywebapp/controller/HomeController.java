package za.ac.tut.u221091140.laboratorywebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/home")
public class HomeController {

    @GetMapping("")
    public ModelAndView homepage(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session;
        if(request.getSession().isNew()){
            session = request.getSession(true);
        }else{
            session = request.getSession();
        }

        session.setAttribute("msg","Welcome User");

        modelAndView.setViewName("index");

        return modelAndView;
    }

    @GetMapping("/signup")
    public ModelAndView signUp(){
        ModelAndView model = new ModelAndView();

        model.setViewName("create_acc");

        return model;
    }

    @GetMapping("/login")
    public ModelAndView loginPage(HttpServletRequest request){
        ModelAndView model = new ModelAndView();

        model.setViewName("login");

        return model;
    }
    @PostMapping("/login")
    public ModelAndView login(HttpServletRequest request){
        ModelAndView model = new ModelAndView();

        String userId,password;
        userId = request.getParameter("email");
        password = request.getParameter("passwrd");

        model.setViewName("login");

        return model;
    }

    @PostMapping("/createaccount")
    public ModelAndView createAcc(HttpServletRequest request){
        ModelAndView model = new ModelAndView();

        String name,surname,passwrd, cellNo,userId,email;
        name = request.getParameter("name");
        userId = request.getParameter("userid");
        surname = request.getParameter("surname");
        email = request.getParameter("email");
        cellNo = request.getParameter("cellNo");
        passwrd = request.getParameter("passwrd");


        HttpSession session = request.getSession();


        model.setViewName("index");

        return model;
    }

}
