package za.ac.tut.u221091140.laboratorywebapp.services;

import org.springframework.stereotype.Service;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.security.Security;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin.StudentAdmin;

import javax.servlet.http.HttpServletRequest;


@Service
public class AdminService {

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
            security.setPassword(passwrd);security.setOnDuty(false);

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

}
