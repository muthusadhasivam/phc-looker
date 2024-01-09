view: screening_metrics {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.screening_metrics`
    ;;

  dimension: only_ca_oral_count {
    type: number
    sql: ${TABLE}.Only_CA_Oral_count ;;
  }

  dimension: only_cancer_breast_count {
    type: number
    sql: ${TABLE}.Only_Cancer_Breast_count ;;
  }

  dimension: only_cancer_cervical_count {
    type: number
    sql: ${TABLE}.Only_Cancer_Cervical_count ;;
  }

  dimension: only_ckd_count {
    type: number
    sql: ${TABLE}.Only_CKD_count ;;
  }

  dimension: only_covid_19_count {
    type: number
    sql: ${TABLE}.Only_Covid_19_count ;;
  }

  dimension: only_dm_count {
    type: number
    sql: ${TABLE}.Only_DM_count ;;
  }

  dimension: only_general_count {
    type: number
    sql: ${TABLE}.Only_general_count ;;
  }

  dimension: only_general_covid19_count {
    type: number
    sql: ${TABLE}.Only_general_covid19_count ;;
  }

  dimension: only_general_dm_count {
    type: number
    sql: ${TABLE}.Only_general_dm_count ;;
  }

  dimension: only_general_htn_count {
    type: number
    sql: ${TABLE}.Only_general_htn_count ;;
  }

  dimension: only_general_htn_covid19_count {
    type: number
    sql: ${TABLE}.Only_general_htn_covid19_count ;;
  }

  dimension: only_htn_count {
    type: number
    sql: ${TABLE}.Only_HTN_count ;;
  }

  dimension: only_lyprocy_count {
    type: number
    sql: ${TABLE}.Only_Lyprocy_count ;;
  }

  dimension: only_mental_health_count {
    type: number
    sql: ${TABLE}.Only_Mental_Health_count ;;
  }

  dimension: only_tb_copd_count {
    type: number
    sql: ${TABLE}.Only_TB_COPD_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
