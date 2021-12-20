package dk.kea.kommunalvalgapi.repositories;

import dk.kea.kommunalvalgapi.models.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Long> {

    List<Candidate> findAllByPartyAbbreviation(String abbreviation);
}
