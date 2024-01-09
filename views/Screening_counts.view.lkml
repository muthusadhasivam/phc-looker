view: screening_counts {
#view: sql_runner_query {
  derived_table: {
    sql: SELECT
       member_id,count(screening_id) as number_of_screenings from `milky-way-galaxy-2707.TNPHR.health_screening`
      group by member_id
      --LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: member_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: number_of_screenings {
    type: number
    sql: ${TABLE}.number_of_screenings ;;
  }

  measure: Member_count{
    type: count_distinct
    sql: ${TABLE}.member_id ;;
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
  }

  dimension: Individuals_Visits {
    type: string
    label: "Individuals_Visits"
    sql: CASE
        WHEN ${TABLE}.number_of_screenings = 1 THEN "Individuals"
        ELSE "Visits"
        END ;;
  }

  set: detail {
    fields: [member_id, number_of_screenings]
  }
  }
