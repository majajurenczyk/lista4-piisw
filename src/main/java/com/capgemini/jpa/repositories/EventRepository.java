package com.capgemini.jpa.repositories;

import com.capgemini.jpa.entities.Event;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    Page<Event> findAllByTimeBetweenAndAnalysisRequiredEquals(LocalDateTime start, LocalDateTime end,
                                                              boolean toBeAnalyzed, Pageable pageable);
    @Modifying
    @Query("DELETE FROM Event e WHERE e.time < :X ")
    void deleteInBulkBeforeDate(@Param("X") LocalDateTime time);

    @Modifying
    @Query("UPDATE Event e SET e.analysisRequired = true WHERE e.duration > :minDuration AND TYPE(e) = :clazz")
    void updateInBulkToBeAnalyzedByType(Class<? extends Event> clazz, int minDuration);

    @Query("SELECT new com.capgemini.jpa.repositories.ServerStatistic(e.server, (COUNT(e.id)))" +
            " FROM Event e GROUP BY e.server.id")
    List<ServerStatistic> getAllServerStatistics();
}
