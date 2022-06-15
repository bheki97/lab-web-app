package za.ac.tut.u221091140.laboratorywebapp.entities.lab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.ac.tut.u221091140.laboratorywebapp.entities.request.LabRequest;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class LabService {

    @Autowired
    private LabRepository labRepository;

    public void addLab(Lab lab){
        labRepository.save(lab);

    }

    public List<Lab> getLabsOpened(){
        List<Lab> labsOpened = new ArrayList<>();
        Iterator<Lab> labIter = labRepository.findAll().iterator();

        while(labIter.hasNext()){
            Lab lab = labIter.next();

            if(lab.getIsOpen()){
                labsOpened.add(lab);
            }
        }

        return labsOpened;
    }

    public List<Lab> getAllLabs(){
        List<Lab> users = new ArrayList<>();
        Iterator<Lab> userIter = labRepository.findAll().iterator();

        while(userIter.hasNext()){
            users.add(userIter.next());
        }

        return users;
    }

}
