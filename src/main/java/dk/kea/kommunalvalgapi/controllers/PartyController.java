package dk.kea.kommunalvalgapi.controllers;

import dk.kea.kommunalvalgapi.models.Candidate;
import dk.kea.kommunalvalgapi.models.Party;
import dk.kea.kommunalvalgapi.repositories.CandidateRepository;
import dk.kea.kommunalvalgapi.repositories.PartyRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

@Controller
@CrossOrigin(origins = "*")
public class PartyController {

    private final PartyRepository partyRepository;
    private final CandidateRepository candidateRepository;

    public PartyController(PartyRepository partyRepository,
                           CandidateRepository candidateRepository) {
        this.partyRepository = partyRepository;
        this.candidateRepository = candidateRepository;
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

    /**
     * Gets all candidates from a party from its short-form abbreviation.
     * @param abbreviation the short-form abbreviation, e.g. SF, S, LA, or V
     * @return the response entity
     */
    @GetMapping("/parties/{abbreviation}/candidates")
    public ResponseEntity<List<Candidate>> getCandidatesByParty(@PathVariable String abbreviation) {
        return ResponseEntity.ok(candidateRepository.findAllByPartyAbbreviation(abbreviation));
    }

    /**
     * Adds a new candidate to a party from its short-form abbreviation.
     * @param abbreviation the short-form abbreviation, e.g. SF, S, LA, or V
     * @param candidate the candidate to be added
     * @return the response entity
     */
    @PostMapping("/parties/{abbreviation}/candidates")
    public ResponseEntity<?> addCandidateToParty(@PathVariable String abbreviation,
                                                 @RequestBody Candidate candidate) throws URISyntaxException {

        Party party = partyRepository.findByAbbreviation(abbreviation)
                .orElse(null);

        if (party == null)
            return ResponseEntity.notFound().build();

        // Do not save the data if it already exists.
        if (candidateRepository.findById(candidate.getId()).isPresent())
            return ResponseEntity.status(HttpStatus.CONFLICT).build();

        candidate.setParty(party);

        Candidate savedCandidate = candidateRepository.save(candidate);

        return ResponseEntity.created(
                new URI("/candidates/" + savedCandidate.getId())
        ).build();
    }

    /**
     * Removes the candidate with the specified id.
     * @param abbreviation the short-form abbreviation, e.g. SF, S, LA, or V
     * @param id the candidate's id
     * @return the response entity
     */
    @DeleteMapping("/parties/{abbreviation}/candidates/{id}")
    public ResponseEntity<?> removeCandidate(@PathVariable String abbreviation,
                                             @PathVariable long id) {

        Party party = partyRepository.findByAbbreviation(abbreviation)
                .orElse(null);

        if (party == null)
            return ResponseEntity.notFound().build();

        Candidate candidate = candidateRepository.findById(id)
                .orElse(null);

        if (candidate == null)
            return ResponseEntity.notFound().build();

        candidateRepository.delete(candidate);

        return ResponseEntity.accepted().build();
    }

    /**
     * Updates the candidate with the specified id.
     * Creates the resources if they don't already exist.
     * @param abbreviation the short-form abbreviation, e.g. SF, S, LA, or V
     * @param id the candidate's id
     * @param candidate the candidate to be added/updated
     * @return the response entity
     */
    @PutMapping("/parties/{abbreviation}/candidates/{id}")
    public ResponseEntity<?> updateCandidate(@PathVariable String abbreviation,
                                             @PathVariable long id,
                                             @RequestBody Candidate candidate) {
        candidate.setId(id);

        Party party = partyRepository.findById(candidate.getParty().getId())
                .orElse(null);

        if (party == null)
            return ResponseEntity.badRequest().build();

        candidate.setParty(party);

        candidateRepository.save(candidate);

        return ResponseEntity.noContent().build();
    }
}
