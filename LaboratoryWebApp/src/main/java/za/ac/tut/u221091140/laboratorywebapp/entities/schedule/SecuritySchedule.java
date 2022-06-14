package za.ac.tut.u221091140.laboratorywebapp.entities.schedule;

import za.ac.tut.u221091140.laboratorywebapp.entities.user.security.Security;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity public class SecuritySchedule {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "onduty_date")
    private Date date;
    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.PERSIST)
    private List<Security> security;

}
