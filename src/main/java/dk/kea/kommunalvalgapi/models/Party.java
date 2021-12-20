package dk.kea.kommunalvalgapi.models;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Set;

@Entity
@Table(name = "parties")
public class Party {

    @Id
    @Column(name = "id", nullable = false, unique = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min = 1, max = 1)
    @Column(name = "signature", length = 1)
    private String signature;

    @Size(min = 1, max = 3)
    @Column(name = "abbreviation", length = 3)
    private String abbreviation;

    @Size(min = 1, max = 100)
    @Column(name = "name", length = 100)
    private String name;

    @Size(min = 4, max = 7)
    @Pattern(regexp = "#[0-9a-fA-F]{3,6}")
    @Column(name = "hex_color", length = 7)
    private String hexColor;

    @JsonBackReference
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "party")
    private Set<Candidate> candidates;

    protected Party() { }

    public Party(String signature, String abbreviation, String name, String hexColor, Set<Candidate> candidates) {
        this.signature = signature;
        this.abbreviation = abbreviation;
        this.name = name;
        this.hexColor = hexColor;
        this.candidates = candidates;
    }

    public long getId() {
        return id;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getAbbreviation() {
        return abbreviation;
    }

    public void setAbbreviation(String abbreviation) {
        this.abbreviation = abbreviation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHexColor() {
        return hexColor;
    }

    public void setHexColor(String hexColor) {
        this.hexColor = hexColor;
    }

    public Set<Candidate> getCandidates() {
        return candidates;
    }

    public void setCandidates(Set<Candidate> candidates) {
        this.candidates = candidates;
    }
}
