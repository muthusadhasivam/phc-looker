view: family_member_master_resident_status_null {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_resident_status_null`
    ;;

  dimension: member_id {
    type: string
    sql: ${TABLE}.member_id ;;
  }

  dimension: member_local_name {
    type: string
    sql: ${TABLE}.member_local_name ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
  }

  dimension: resident_status_null {
    type: number
    sql: ${TABLE}.resident_status_null ;;
  }

  measure: count {
    type: count
    drill_fields: [member_local_name, member_name]
  }
}
