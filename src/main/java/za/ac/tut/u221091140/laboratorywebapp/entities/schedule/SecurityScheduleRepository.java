package za.ac.tut.u221091140.laboratorywebapp.entities.schedule;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SecurityScheduleRepository extends CrudRepository<SecuritySchedule, Long> {
}