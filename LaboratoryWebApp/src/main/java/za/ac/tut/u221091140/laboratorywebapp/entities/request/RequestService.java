package za.ac.tut.u221091140.laboratorywebapp.entities.request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import za.ac.tut.u221091140.laboratorywebapp.entities.schedule.SecuritySchedule;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class RequestService {

    @Autowired
    private RequestRepository requestRepository;


    public void addRequest(LabRequest labRequest){
        requestRepository.save(labRequest);
    }

    public List<LabRequest> getLabRequests(){
        List<LabRequest> labRequests = new ArrayList<>();
        Iterator<LabRequest> iterator = requestRepository.findAll().iterator();

        while(iterator.hasNext()){
            labRequests.add(iterator.next());
        }

        return labRequests;
    }

}
