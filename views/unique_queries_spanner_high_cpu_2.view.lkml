view: unique_queries_spanner_high_cpu_2 {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.Unique_Queries_spanner_high_cpu_2`
    ;;

  dimension: count_unique_queries_spanner_high_cpu_2 {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: cpu {
    type: number
    sql: ${TABLE}.cpu ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension_group: interval_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.interval_end ;;
  }

  dimension: latency {
    type: number
    sql: ${TABLE}.latency ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
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
