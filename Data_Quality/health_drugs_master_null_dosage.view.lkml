view: health_drugs_master_null_dosage {
  sql_table_name: `staging-tnphr.DATAQUALITY.health_drugs_master_null_dosage`
    ;;

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  dimension: tnmsc_code {
    type: string
    sql: ${TABLE}.tnmsc_code ;;
  }

  measure: count {
    type: count
    drill_fields: [drug_name]
  }
}
