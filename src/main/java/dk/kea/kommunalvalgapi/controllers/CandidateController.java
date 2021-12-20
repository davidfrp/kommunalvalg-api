package dk.kea.kommunalvalgapi.controllers;

import dk.kea.kommunalvalgapi.models.Candidate;
import dk.kea.kommunalvalgapi.repositories.CandidateRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import javax.websocket.server.PathParam;

@Controller
@CrossOrigin(origins = "*")
public class CandidateController {

    private final CandidateRepository candidateRepository;

    public CandidateController(CandidateRepository candidateRepository) {
        this.candidateRepository = candidateRepository;
    }

    /**
     * Gets candidates from all parties.
     * @param page the current page
     * @param perPage how many entries to return per page
     * @return the response entity
     */
    @GetMapping("/candidates")
    public ResponseEntity<List<Candidate>> getCandidates(@PathParam("page") Optional<Integer> page,
                                                         @PathParam("perPage") Optional<Integer> perPage,
                                                         @PathParam("party") Optional<String> party) {
        List<Candidate> result;

        if (page.isPresent() &&
            perPage.isPresent()) {
            Page<Candidate> candidatePage = candidateRepository.findAll(
                    PageRequest.of(page.get() - 1, perPage.get())
            );

            result = candidatePage.getContent();
        } else {
            result = candidateRepository.findAll();
        }

        if (party.isPresent()) {
            String s = party.get();
            result = result.stream().filter(c ->
                    s.equalsIgnoreCase(c.getParty().getName()) ||
                    s.equalsIgnoreCase(c.getParty().getAbbreviation()) ||
                    s.equalsIgnoreCase(c.getParty().getSignature())
            ).toList();
        }

        return ResponseEntity.ok(result);
    }

    /**
     * Gets a candidate from their id.
     * @param id the candidate's id
     * @return the response entity
     */
    @GetMapping("/candidates/{id}")
    public ResponseEntity<Candidate> getCandidate(@PathVariable long id) {

        Candidate candidate = candidateRepository.findById(id)
                .orElse(null);

        if (candidate == null)
            return ResponseEntity.notFound().build();

        return ResponseEntity.ok(candidate);
    }
}
