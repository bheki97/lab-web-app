package za.ac.tut.u221091140.laboratorywebapp.entities.user.security;

import za.ac.tut.u221091140.laboratorywebapp.entities.user.User;

import javax.persistence.Entity;

@Entity

public class Security extends User {

    private Boolean isOnDuty;

    public Security() {
    }

    public Boolean getOnDuty() {
        return isOnDuty;
    }

    public void setOnDuty(Boolean onDuty) {
        isOnDuty = onDuty;
    }
}
