view: family_member_master_street_id_present_in_street_table {
  sql_table_name: `staging-tnphr.DATAQUALITY.family_member_master_street_id_present_in_street_table`
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

  dimension: street_id_present_in_street_table {
    type: number
    value_format_name: id
    sql: ${TABLE}.street_id_present_in_street_table ;;
  }

  measure: count {
    type: count
    drill_fields: [member_local_name, member_name]
  }
}
