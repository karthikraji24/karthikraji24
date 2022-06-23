with 
 training as (
     select * from {{ref('fullstack_training')}}
 )

 select 
   course_id,
   starttime,
   endtime

   from training
   where endtime<starttime
   