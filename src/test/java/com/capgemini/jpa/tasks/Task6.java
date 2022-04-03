package com.capgemini.jpa.tasks;

import com.capgemini.jpa.repositories.FollowerRepository;
import com.capgemini.jpa.services.FollowerService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.context.annotation.Bean;

import java.util.List;
import java.util.Map;


@DataJpaTest
@Slf4j
class Task6 {

    @Autowired
    private FollowerService followerService;

    private final static String FIRST_USER_ID = "user456";

    @Test
    void shouldGetFollowerCommentsInfo() {
        List<Map<String, String>> followerCommentsInfo = followerService.fetchFollowerCommentsInfo(FIRST_USER_ID);

        Assertions.assertEquals(3, followerCommentsInfo.size());

        Assertions.assertEquals("description", followerCommentsInfo.get(0).get("Event description"));
        Assertions.assertEquals("2018-02-03T03:18:06", followerCommentsInfo.get(0).get("Event time"));
        Assertions.assertEquals("false", followerCommentsInfo.get(0).get("Analysis required"));
        Assertions.assertEquals("komentarz11", followerCommentsInfo.get(0).get("Comment content"));
        Assertions.assertEquals("2018-02-03T13:08:06", followerCommentsInfo.get(0).get("Subscription date"));
    }

    @TestConfiguration
    static class EmployeeServiceImplTestContextConfiguration {

        @Bean
        public FollowerService followerService(FollowerRepository followerRepository) {
            return new FollowerService(followerRepository);
        }
    }
}
