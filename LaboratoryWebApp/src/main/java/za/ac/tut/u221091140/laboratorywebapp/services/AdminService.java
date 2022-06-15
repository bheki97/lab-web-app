package za.ac.tut.u221091140.laboratorywebapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.ac.tut.u221091140.laboratorywebapp.entities.schedule.SecuritySchedule;
import za.ac.tut.u221091140.laboratorywebapp.entities.schedule.SecurityScheduleRepository;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.UserRepo;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.UserService;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.security.Security;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin.StudentAdmin;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Service
public class AdminService {

    @Autowired
    private UserService userServ;
    @Autowired
    private SecurityScheduleRepository securityScheduleRepository;

    public User CreateUser(HttpServletRequest request){
       String surname  = request.getParameter("surname");
        String name  = request.getParameter("name");
        String cellno  = request.getParameter("cellno");
        Long userid  = Long.parseLong(request.getParameter("userid"));
        String email  = request.getParameter("email");
        String passwrd  = request.getParameter("passwrd");
        String role  = request.getParameter("role");

        User user = new User();

        if(role.equalsIgnoreCase("security")){
            Security security = new Security();

            security.setCellNo(cellno);
            security.setId(userid);
            security.setName(name);
            security.setSurname(surname);
            security.setCellNo(cellno);
            security.setPassword(passwrd);
            security.setOnDuty(false);

            user = security;

        }else if(role.equalsIgnoreCase("admin")){
            StudentAdmin studentAdmin = new StudentAdmin();
            String position  = request.getParameter("position");

            studentAdmin.setCellNo(cellno);
            studentAdmin.setId(userid);
            studentAdmin.setName(name);
            studentAdmin.setSurname(surname);
            studentAdmin.setCellNo(cellno);
            studentAdmin.setPassword(passwrd);
            studentAdmin.setPosition(position);

            user = studentAdmin;
        }

        return user;
    }

    public void setShedule(HttpServletRequest request){
        String dateS =  request.getParameter("date");
        String [] secIds = request.getParameterValues("secid");



        Date date = Timestamp.valueOf(dateS);


        SecuritySchedule securitySchedule = new SecuritySchedule();

        List<Security> securities =getSecuritiesByIdArr(secIds);

        securitySchedule.setDate(date);
        securitySchedule.setSecurity(securities);
        securityScheduleRepository.save(securitySchedule);


    }

    private List<Security> getSecuritiesByIdArr(String[] secIds) {
        List<Security> securities = new ArrayList<>();
        User user;
        Security sec;
        for(String id: secIds){

             user = userServ.findUser(Long.parseLong(id));
            sec = (Security) user;
            securities.add(sec);

        }

        return securities;

    }

}
