view: unique_queries_spanner_high_cpu {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.Unique_Queries_spanner_high_cpu`
    ;;

  dimension: avg_cpu_sec {
    type: number
    sql: ${TABLE}.avg_cpu_sec ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }


  dimension: date_formatted {
    type: string
    sql: current_date() ;;
    html: {{ rendered_value | date: "%Y-%m-%d" }} ;;
  }

  dimension: latest_date {
    type: yesno
    sql: ${TABLE}.date = CAST(${date_formatted} as string) ;;
  }


  dimension: execution_count {
    type: number
    sql: ${TABLE}.execution_count ;;
  }

  dimension: latency {
    type: number
    sql: ${TABLE}.latency ;;
  }

  dimension: queries_to_be_optimized {
    type: string
    sql: ${TABLE}.Queries_to_be_optimized ;;
  }

  dimension: total_cpu {
    type: number
    sql: ${TABLE}.total_cpu ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
