view: compliance {
  sql_table_name: `staging-tnphr.KPI.compliance`
    ;;

  dimension: compliance {
    type: string
    sql: ${TABLE}.compliance ;;
  }

  dimension_group: current_screening {
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
    sql: ${TABLE}.current_screening_date ;;
  }

  dimension: family_id {
    type: string
    sql: ${TABLE}.family_id ;;
  }

  dimension: is_refferal {
    type: string
    sql: ${TABLE}.is_refferal ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension_group: prev_screening {
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
    sql: ${TABLE}.prev_screening_date ;;
  }

  dimension: screening_id {
    type: string
    sql: ${TABLE}.screening_id ;;
  }

  measure: count {
    type: count
    value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
    drill_fields: []
  }

}
