package dk.kea.kommunalvalgapi.controllers;

import dk.kea.kommunalvalgapi.models.Party;
import dk.kea.kommunalvalgapi.repositories.PartyRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
@CrossOrigin(origins = "*")
public class PartyController {

    private final PartyRepository partyRepository;

    public PartyController(PartyRepository partyRepository) {
        this.partyRepository = partyRepository;
    }

    /**
     * Gets all found parties.
     * @return the response entity
     */
    @GetMapping("/parties")
    public ResponseEntity<List<Party>> getParties() {
        return ResponseEntity.ok(partyRepository.findAll());
    }

    /**
     * Gets a party from its short-form abbreviation.
     * @param abbreviation the short-form abbreviation, e.g. SF, S, LA, or V
     * @return the response entity
     */
    @GetMapping("/parties/{abbreviation}")
    public ResponseEntity<Party> getParty(@PathVariable String abbreviation) {

        Party party = partyRepository.findByAbbreviation(abbreviation)
                .orElse(null);

        if (party == null)
            return ResponseEntity.notFound().build();

        return ResponseEntity.ok(party);
    }
}
