package za.ac.tut.u221091140.laboratorywebapp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.LabService;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.LabRequest;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.RequestService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class SecurityController {

    @Autowired
    private RequestService requestService;

    @Autowired
    private LabService labService;

    @GetMapping("/view_all_request")
    public ModelAndView viewAllRquests(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();

        List<LabRequest> labRequests = requestService.getLabRequests();
        session.setAttribute("labRequests",labRequests);

        modelAndView.setViewName("ViewAllrequests");

        return modelAndView;
    }

    @PostMapping("/openlab")
    public ModelAndView openLab(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();

        Long labReqId = Long .parseLong(request.getParameter("labReqId"));

        Lab lab = requestService.openLab(labReqId);
        labService.addLab(lab);
        session.setAttribute("labReq","labReq");

        modelAndView.setViewName("open_lab_outcome");

        return modelAndView;
    }

    @PostMapping("/closelab")
    public ModelAndView closeLab(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();

        Long labReqId = Long .parseLong(request.getParameter("labReqId"));

        Lab lab = requestService.closeLab(labReqId);
        labService.addLab(lab);

        modelAndView.setViewName("close_lab_outcome");

        return modelAndView;
    }

    @GetMapping("/view_opened_Labs")
    public ModelAndView viewOpenedLabs(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();

        List<Lab> openedLabs = labService.getLabsOpened();

        session.setAttribute("openedLabs",openedLabs);
        modelAndView.setViewName("view_opened_Labs");

        return modelAndView;
    }


}
