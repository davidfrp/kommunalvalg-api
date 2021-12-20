package dk.kea.kommunalvalgapi.models;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "candidates")
public class Candidate {

    @Id
    @Column(name = "id", unique = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min = 1, max = 100)
    @Column(name = "name")
    private String name;

    @ManyToOne(cascade = {CascadeType.ALL, CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REMOVE, CascadeType.REFRESH, CascadeType.DETACH})
    @JoinColumn(name = "party_id")
    private Party party;

    protected Candidate() { }

    public Candidate(String name, Party party) {
        this.name = name;
        this.party = party;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Party getParty() {
        return party;
    }

    public void setParty(Party party) {
        this.party = party;
    }
}
