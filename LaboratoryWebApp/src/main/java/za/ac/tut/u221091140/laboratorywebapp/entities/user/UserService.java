package za.ac.tut.u221091140.laboratorywebapp.entities.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class UserService {

    @Autowired
    UserRepo userRepo;

    public void addUser(User user) {
        userRepo.save(user);
    }

    public List<User> getAllUser(){
        List<User> users = new ArrayList<>();
        Iterator<User> userIter = userRepo.findAll().iterator();

        while(userIter.hasNext()){
            users.add(userIter.next());
        }

        return users;
    }

    public User findUserById(Long id){
        return userRepo.findById(id).get();
    }

}
