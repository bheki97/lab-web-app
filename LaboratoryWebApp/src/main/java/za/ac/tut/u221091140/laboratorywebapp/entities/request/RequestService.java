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

    public void closeLab(Long labReqId){
        LabRequest labReq = requestRepository.findById(labReqId).get();

        if(!labReq.getSignedIn() && labReq.getLab().getIsOpen()){
            labReq.setLab(labReq.getLab().setIsOpen(false));
        }
    }

    public void openLab(Long labReqId){
        LabRequest labReq = requestRepository.findById(labReqId).get();

        if(!labReq.getLab().getIsOpen()){
            labReq.setLab(labReq.getLab().setIsOpen(true));
        }
    }


    public void signIn(Long labReqId){
        LabRequest labReq = requestRepository.findById(labReqId).get();

        if(labReq.getLab().getIsOpen()){
            labReq.setSignedIn(true);
            requestRepository.save(labReq);
        }

    }
    public void signOut(Long labReqId){
        LabRequest labReq = requestRepository.findById(labReqId).get();

        if(labReq.getSignedIn() && labReq.getLab().getIsOpen()){
            labReq.setSignedIn(true);
            requestRepository.save(labReq);
        }

    }

    public void addRequest(LabRequest labRequest){
        List<LabRequest> labRequests = getLabRequests();
        LabRequest listLabReq;
        while(true){

            if(!labRequests.isEmpty()){
                listLabReq = labRequests.remove(0);
                if(listLabReq.getLab().getLabNo()==labRequest.getLab().getLabNo()){

                    if(labRequest.getOpenTime().after(listLabReq.getCloseTime())
                        || labRequest.getCloseTime().before(listLabReq.getOpenTime())){

                        break;
                    }
                }
            }else{
                requestRepository.save(labRequest);
                break;
            }

        }

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
