package com.capgemini.jpa.services;

import com.capgemini.jpa.entities.Follower;
import com.capgemini.jpa.repositories.FollowerRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Slf4j
public class FollowerService {

    private final FollowerRepository followerRepository;

    public List<Map<String, String>> fetchFollowerCommentsInfo(String userId) {
        List<Follower> followersInfo = followerRepository.findAllByUserId(userId);
        List<Map<String, String>> results = new ArrayList<>();
        followersInfo.forEach(follower -> {
            HashMap<String, String> result = new HashMap<>();
            result.put("Event description", follower.getComment().getCommentedEvent().getDescription());
            result.put("Event time", follower.getComment().getCommentedEvent().getTime().toString());
            result.put("Analysis required", follower.getComment().getCommentedEvent()
                    .isAnalysisRequired() ? "true" : "false");
            result.put("Comment content", follower.getComment().getContent());
            result.put("Subscription date", follower.getSubscriptionDate().toString());
            results.add(result);
        });
        return results;
    }
}
