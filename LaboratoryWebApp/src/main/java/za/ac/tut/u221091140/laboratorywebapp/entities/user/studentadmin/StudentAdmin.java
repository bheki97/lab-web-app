package za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin;

import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;

import javax.persistence.Entity;

@Entity
public class StudentAdmin extends User {

    private String position;

    public StudentAdmin() {

    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
