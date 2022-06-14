package za.ac.tut.u221091140.laboratorywebapp.entities.lab;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LabRepository extends CrudRepository<Lab, String> {
}