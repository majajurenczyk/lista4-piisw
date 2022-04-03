package com.capgemini.jpa.repositories;

import com.capgemini.jpa.entities.Follower;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FollowerRepository extends JpaRepository<Follower, Long> {

    @EntityGraph(value = "follower.comment")
    List<Follower> findAllByUserId(String userId);

    /*select
    follower0_.id as id1_3_0_,
    comment1_.id as id1_0_1_,
    event2_.id as id1_1_2_,
    follower0_.comment_id as comment_4_3_0_,
    follower0_.subscription_date as subscrip2_3_0_,
    follower0_.user_id as user_id3_3_0_,
    comment1_.event_id as event_id3_0_1_,
    comment1_.content as content2_0_1_,
    event2_.analysis_required as analysis2_1_2_,
    event2_.description as descript3_1_2_,
    event2_.duration as duration4_1_2_,
    event2_.server_id as server_i8_1_2_,
    event2_.thread_id as thread_i5_1_2_,
    event2_.time as time6_1_2_,
    event2_.user_id as user_id7_1_2_,
    event2_.exception_name as exceptio1_2_2_,
    event2_.occurance_class as occuranc2_2_2_,
    event2_.occurance_line as occuranc3_2_2_,
    event2_.occurance_method as occuranc4_2_2_,
    event2_.method as method1_4_2_,
    event2_.sql_query as sql_quer1_6_2_,
    event2_.clazz_ as clazz_2_
            from
    follower follower0_
    left outer join comment comment1_ on follower0_.comment_id = comment1_.id
    left outer join (
            select
                    id,
            analysis_required,
            description,
            duration,
            thread_id,
            time,
            user_id,
            server_id,
            exception_name,
            occurance_class,
            occurance_line,
            occurance_method,
      null as method,
      null as sql_query,
      1 as clazz_
    from
                    exception_event
                    union all
                    select
                    id,
            analysis_required,
            description,
            duration,
            thread_id,
            time,
            user_id,
            server_id,
      null as exception_name,
      null as occurance_class,
      null as occurance_line,
      null as occurance_method,
            method,
      null as sql_query,
      2 as clazz_
    from
                    request_event
                    union all
                    select
                    id,
            analysis_required,
            description,
            duration,
            thread_id,
            time,
            user_id,
            server_id,
      null as exception_name,
      null as occurance_class,
      null as occurance_line,
      null as occurance_method,
      null as method,
            sql_query,
      3 as clazz_
    from
                    sql_event
    ) event2_ on comment1_.event_id = event2_.id
            where
    follower0_.user_id = ?*/
}
