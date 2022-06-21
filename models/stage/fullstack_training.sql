with fullstack_training as (


  select couseid as course_ID,course_name,datediff(day,starttime,endtime) as duration_days,trainer,
  starttime,endtime,grade,domain from --techigai.training
  {{source('abcdef','training')}}
)

select * from fullstack_training

