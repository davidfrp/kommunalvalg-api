package dk.kea.kommunalvalgapi.repositories;

import dk.kea.kommunalvalgapi.models.Party;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PartyRepository extends JpaRepository<Party, Long> {

    Optional<Party> findByAbbreviation(String abbreviation);
}