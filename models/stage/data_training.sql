with data_training as (

    select couseid as course_id,course_name,trainer,datediff(day,starttime,endtime) as duration_days,starttime as startdate, endtime as enddate,
    grade,domain from TECHIGAI.DATA_TRAINING
)

select * from data_training