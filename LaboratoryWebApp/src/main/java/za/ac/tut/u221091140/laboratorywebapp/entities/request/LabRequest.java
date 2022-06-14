package za.ac.tut.u221091140.laboratorywebapp.entities.request;

import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.security.Security;
import za.ac.tut.u221091140.laboratorywebapp.entities.user.studentadmin.StudentAdmin;

import javax.persistence.*;
import java.util.List;

@Entity
class LabRequest {

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
    private Boolean isOpened;
    private Boolean isSignedIn;

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

}
