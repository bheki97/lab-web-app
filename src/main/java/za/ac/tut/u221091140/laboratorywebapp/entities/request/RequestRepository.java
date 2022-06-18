package za.ac.tut.u221091140.laboratorywebapp.entities.request;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RequestRepository extends CrudRepository<LabRequest, Long> {

}
