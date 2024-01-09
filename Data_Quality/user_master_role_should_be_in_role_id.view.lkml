view: user_master_role_should_be_in_role_id {
  sql_table_name: `staging-tnphr.DATAQUALITY.user_master_role_should_be_in_role_id`
    ;;

  dimension: role_should_be_in_role_id {
    type: string
    sql: ${TABLE}.role_should_be_in_role_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
