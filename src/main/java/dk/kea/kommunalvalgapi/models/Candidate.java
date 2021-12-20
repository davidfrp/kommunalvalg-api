package dk.kea.kommunalvalgapi.models;

import javax.persistence.*;
import javax.validation.constraints.PositiveOrZero;
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

    @PositiveOrZero
    @Column(name = "amount_of_votes")
    private long amountOfVotes;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "party_id")
    private Party party;

    protected Candidate() { }

    public Candidate(String name, long amountOfVotes, Party party) {
        this.name = name;
        this.amountOfVotes = amountOfVotes;
        this.party = party;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getAmountOfVotes() {
        return amountOfVotes;
    }

    public void setAmountOfVotes(long amountOfVotes) {
        this.amountOfVotes = amountOfVotes;
    }

    public Party getParty() {
        return party;
    }

    public void setParty(Party party) {
        this.party = party;
    }
}
