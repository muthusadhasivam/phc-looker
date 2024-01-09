view: screeings_breakage {
  sql_table_name: `staging-tnphr.KPI.screeings_breakage`
    ;;

  dimension: individual_screening_count {
    type: number
    sql: ${TABLE}.individual_screening_count ;;
  }

  dimension_group: screened {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Screened_date ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: total_screening_count {
    type: number
    sql: ${TABLE}.total_screening_count ;;
  }

  measure: count {
    type: count
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: [street_name]
  }
}
