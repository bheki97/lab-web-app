package za.ac.tut.u221091140.laboratorywebapp.entities.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.ac.tut.u221091140.laboratorywebapp.entities.lab.Lab;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class SecScheduleService {

    @Autowired
    private SecurityScheduleRepository secRepo;

    public void addSchedule(SecuritySchedule securitySchedule){
        secRepo.save(securitySchedule);
    }

    public List<SecuritySchedule> getAllLabs(){
        List<SecuritySchedule> schedules = new ArrayList<>();
        Iterator<SecuritySchedule> iterator = secRepo.findAll().iterator();

        while(iterator.hasNext()){
            schedules.add(iterator.next());
        }

        return schedules;
    }
}
