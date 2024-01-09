# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: facility_registry_spanner_bq_vw {
#   hidden: yes

#   join: facility_registry_spanner_bq_vw__services {
#     view_label: "Facility Registry Vw: Services"
#     sql: LEFT JOIN UNNEST(${facility_registry_spanner_bq_vw.services}) as facility_registry_spanner_bq_vw__services ;;
#     relationship: one_to_many
#   }

#   join: facility_registry_spanner_bq_vw__sub_facility {
#     view_label: "Facility Registry Vw: Sub Facility"
#     sql: LEFT JOIN UNNEST(${facility_registry.sub_facility}) as facility_registry__sub_facility ;;
#     relationship: one_to_many
#   }

#   join: facility_registry_spanner_bq_vw__child_facility {
#     view_label: "Facility Registry Vw: Child Facility"
#     sql: LEFT JOIN UNNEST(${facility_registry_spanner_bq_vw.child_facility}) as facility_registry_spanner_bq_vw__child_facility ;;
#     relationship: one_to_many
#   }

#   join: facility_registry_spanner_bq_vw__update_register {
#     view_label: "Facility Registry Vw: Update Register"
#     sql: LEFT JOIN UNNEST(${facility_registry_spanner_bq_vw.update_register}) as facility_registry_spanner_bq_vw__update_register ;;
#     relationship: one_to_many
#   }
# }

view: facility_registry_spanner_bq_vw {
  sql_table_name: `cobalt-catalyst-318208.TNPHR_Spanner.facility_registry_spanner_bq_vw`
    ;;

  dimension: block_id {
    type: string
    hidden: yes
    sql: ${TABLE}.block_id ;;
  }

  dimension: category_id {
    type: string
    hidden: yes
    sql: ${TABLE}.category_id ;;
  }

  dimension: child_facility {
    hidden: yes
    sql: ${TABLE}.child_facility ;;
  }

  dimension: country_id {
    type: string
    hidden: yes
    sql: ${TABLE}.country_id ;;
  }

  dimension: directorate_id {
    type: string
    hidden: yes
    sql: ${TABLE}.directorate_id ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: equipments {
    type: string
    sql: ${TABLE}.equipments ;;
  }

  dimension: facility_fudiciary_ids_HMIS_ISMR_ID {
    type: string
    label: "HMIS_ISMR_ID"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.HMIS_ISMR.ID") ;;
  }

  dimension: facility_fudiciary_ids_CDSP_USERNAME {
    type: string
    label: "CDSP_USERNAME"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.CDSP.USERNAME") ;;
  }

  dimension: facility_fudiciary_ids_IHIP_ID {
    type: string
    label: "IHIP_ID"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.IHIP.ID") ;;
  }

  dimension: facility_fudiciary_ids_NIN_ID {
    type: string
    label: "NIN_ID"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.NIN.ID") ;;
  }

  dimension: facility_fudiciary_ids_PICME_ID {
    type: string
    label: "PICME_ID"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.PICME.ID") ;;
  }

  dimension: facility_fudiciary_ids_PICME_HSC {
    type: string
    label: "PICME_HSC"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.PICME.HSC") ;;
  }

  dimension: facility_fudiciary_ids_PICME_PHC {
    type: string
    label: "PICME_PHC"
    sql: JSON_VALUE(${TABLE}.facility_fudiciary_ids, "$.PICME.PHC") ;;
  }


  dimension: facility_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.facility_id ;;
  }

  dimension: facility_latitude {
    type: number
    sql: ${TABLE}.facility_latitude ;;
  }

  dimension: facility_level {
    type: string
    sql: ${TABLE}.facility_level ;;
  }

  dimension: facility_level_id {
    type: string
    sql: ${TABLE}.facility_level_id ;;
  }

  dimension: facility_local_name {
    type: string
    sql: ${TABLE}.facility_local_name ;;
  }

  dimension: facility_longtitude {
    type: number
    sql: ${TABLE}.facility_longtitude ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.facility_name ;;
  }

  dimension: facility_reporting_codes {
    type: string
    sql: ${TABLE}.facility_reporting_codes ;;
  }

  dimension: facility_reporting_codes_REPORTING_UNIT_IDSP {
    type: string
    label: "REPORTING_UNIT_IDSP"
    sql: JSON_VALUE(${TABLE}.facility_reporting_codes, "$.REPORTING_UNIT.IDSP") ;;
  }

  dimension: facility_reporting_codes_REPORTING_UNIT_Priority {
    type: string
    label: "REPORTING_UNIT_PRIORITY"
    sql: JSON_VALUE(${TABLE}.facility_reporting_codes, "$.REPORTING_UNIT.Priority") ;;
  }
  dimension: facility_reporting_codes_REPORTING_UNIT_UHC {
    type: string
    label: "REPORTING_UNIT_UHC"
    sql: JSON_VALUE(${TABLE}.facility_reporting_codes, "$.REPORTING_UNIT.UHC") ;;
  }
  dimension: facility_reporting_codes_REPORTING_UNIT_VBDCP {
    type: string
    label: "REPORTING_UNIT_VBDC"
    sql: JSON_VALUE(${TABLE}.facility_reporting_codes, "$.REPORTING_UNIT.VBDC") ;;
  }

  dimension: facility_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.facility_type_id ;;
  }

  dimension: hq_street {
    type: string
    sql: ${TABLE}.hq_street ;;
  }

  dimension: hud_id {
    type: string
    hidden: yes
    sql: ${TABLE}.hud_id ;;
  }

  dimension: institution_gid {
    type: number
    value_format_name: id
    sql: ${TABLE}.institution_gid ;;
  }

  dimension: landline_number {
    type: string
    sql: ${TABLE}.landline_number ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update_date ;;
  }

  dimension: mobile_number {
    type: number
    sql: ${TABLE}.mobile_number ;;
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension: parent_facility {
    type: string
    sql: ${TABLE}.parent_facility ;;
  }

  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }

  dimension: postal_address {
    type: string
    sql: ${TABLE}.postal_address ;;
  }

  dimension: region_id {
    type: string
    hidden: yes
    sql: ${TABLE}.region_id ;;
  }

  dimension: resources {
    type: string
    sql: ${TABLE}.resources ;;
  }

  dimension: scode {
    type: string
    sql: ${TABLE}.SCode ;;
  }

  dimension: services {
    hidden: yes
    sql: ${TABLE}.services ;;
  }

  dimension: state_id {
    type: string
    hidden: yes
    sql: ${TABLE}.state_id ;;
  }

  dimension: sub_facility {
    hidden: yes
    sql: ${TABLE}.sub_facility ;;
  }

  dimension: update_register {
    hidden: yes
    sql: ${TABLE}.update_register ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_local_name, facility_name]
  }
}

view: facility_registry_spanner_bq_vw__services {
  dimension: facility_registry_spanner_bq_vw__services {
    type: string
    sql: facility_registry_spanner_bq_vw__services ;;
  }
}

view: facility_registry_spanner_bq_vw__sub_facility {
  dimension: facility_registry_spanner_bq_vw__sub_facility {
    type: string
    sql: facility_registry_spanner_bq_vw__sub_facility ;;
  }
}

view: facility_registry_spanner_bq_vw__child_facility {
  dimension: facility_registry_spanner_bq_vw__child_facility {
    type: string
    sql: facility_registry_spanner_bq_vw__child_facility ;;
  }
}

view: facility_registry_spanner_bq_vw__update_register {
  dimension: facility_registry_spanner_bq_vw__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(facility_registry_spanner_bq_vw__update_register, "$.timestamp") ;;
  }
  dimension: facility_registry_spanner_bq_vw__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(facility_registry_spanner_bq_vw__update_register, "$.user_id") ;;
  }
}
