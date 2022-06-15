package za.ac.tut.u221091140.laboratorywebapp.entities.request;

import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.security.Security;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin.StudentAdmin;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class LabRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(nullable = false)
    private Long id;

    @OneToOne
    @JoinColumn(name = "lab_no")
    private Lab lab;
    @OneToMany
    private List<Security> securities;

    @OneToOne
    @JoinColumn(name = "staff_no")
    private StudentAdmin studentAdmin;
    private Boolean isSignedIn;
    private Date openTime;
    private Date closeTime;

    public StudentAdmin getStudentAdmin() {
        return studentAdmin;
    }

    public void setStudentAdmin(StudentAdmin studentAdmin) {
        this.studentAdmin = studentAdmin;
    }

    public Lab getLab() {
        return lab;
    }

    public void setLab(Lab lab) {
        this.lab = lab;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Security> getSecurities() {
        return securities;
    }

    public void setSecurities(List<Security> securities) {
        this.securities = securities;
    }

    public Boolean getSignedIn() {
        return isSignedIn;
    }

    public void setSignedIn(Boolean signedIn) {
        isSignedIn = signedIn;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }
}
