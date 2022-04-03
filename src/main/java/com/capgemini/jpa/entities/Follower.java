package com.capgemini.jpa.entities;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter @Setter
@NoArgsConstructor
@NamedEntityGraph(name = "follower.comment",
        attributeNodes = @NamedAttributeNode(value = "comment", subgraph = "comment"),
        subgraphs = @NamedSubgraph(name = "comment", attributeNodes = @NamedAttributeNode("commentedEvent")))
public class Follower {

    @Id
    private Long id;

    @Column
    private String userId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "COMMENT_ID", nullable = false)
    private Comment comment;

    @Column
    private LocalDateTime subscriptionDate;
}
