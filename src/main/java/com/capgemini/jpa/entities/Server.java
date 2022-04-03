package com.capgemini.jpa.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@SQLDelete(sql = "UPDATE server SET is_active = false WHERE id=?")
@Where(clause = "is_active = true")
public class Server {

    @Id
    @SequenceGenerator(name = "SERVER_ID_GENERATOR", sequenceName = "SERVER_SEQ", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SERVER_ID_GENERATOR")
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String ip;

    @Column(nullable = false)
    @CreationTimestamp
    private LocalDateTime createdDate;

    @Column
    @UpdateTimestamp
    private LocalDateTime lastUpdateDate;

    @Column(name = "is_active", nullable = false)
    private boolean isActive = true;

    @Version
    private Long version;

    public Server(String name, String ip) {
        super();
        this.name = name;
        this.ip = ip;
    }
}
