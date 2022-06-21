with fullstack as (

    select * from {{ref('fullstack_training')}}),
datat as (
    select * from {{ref('data_training')}}
)

select distinct(domain),count(course_id) as num_of_courses,sum(duration_days) as total_days_spent,min(grade) as highest_grade,
       total_days_spent/num_of_courses as avg_time_spent
 from fullstack
 group by domain
union all
select distinct(domain),count(course_id) as num_of_courses,sum(duration_days) as total_days_spent,min(grade) as highest_grade,
       total_days_spent/num_of_courses as avg_time_spent
 from datat
 group by domain

