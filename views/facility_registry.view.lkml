# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: facility_registry {
#   hidden: yes

#   join: facility_registry__services {
#     view_label: "Facility Registry: Services"
#     sql: LEFT JOIN UNNEST(${facility_registry.services}) as facility_registry__services ;;
#     relationship: one_to_many
#   }

#   join: facility_registry__sub_facility {
#     view_label: "Facility Registry: Sub Facility"
#     sql: LEFT JOIN UNNEST(${facility_registry.sub_facility}) as facility_registry__sub_facility ;;
#     relationship: one_to_many
#   }

#   join: facility_registry__child_facility {
#     view_label: "Facility Registry: Child Facility"
#     sql: LEFT JOIN UNNEST(${facility_registry.child_facility}) as facility_registry__child_facility ;;
#     relationship: one_to_many
#   }

#   join: facility_registry__update_register {
#     view_label: "Facility Registry: Update Register"
#     sql: LEFT JOIN UNNEST(${facility_registry.update_register}) as facility_registry__update_register ;;
#     relationship: one_to_many
#   }
# }

view: facility_registry {
  sql_table_name: `milky-way-galaxy-2707.TNPHR.facility_registry`
    ;;

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: category_id {
    type: string
    sql: ${TABLE}.category_id ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: child_facility {
    hidden: yes
    sql: ${TABLE}.child_facility ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: directorate_id {
    type: string
    sql: ${TABLE}.directorate_id ;;
  }

  dimension: directorate_name {
    type: string
    sql: ${TABLE}.directorate_name ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
    drill_fields: [hud_name]
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: equipments {
    type: string
    sql: ${TABLE}.equipments ;;
  }

  dimension: is_hwc {
    type: string
    sql: ${TABLE}.is_hwc ;;
  }

  dimension: toggle_button {
    type: string
    label: "Toggle Button"
    sql: CASE
          When ${TABLE}.is_hwc in ("HWC 2017 - 18","HWC 2018 - 19","HWC 2018 - 19","HWC 2019 - 20","HWC 2021 - 22")  then "Yes"
          When ${TABLE}.is_hwc = "Not HWC" then "No"
          END ;;
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

  dimension: PHC {
    type: string
    label: "PHC"
    sql: CASE
        WHEN ${TABLE}.facility_level = "PHC" THEN ${facility_type_name}
        ELSE NULL
        END ;;
  }

  dimension: HSC {
    type: string
    label: "HSC"
    sql: CASE
        WHEN ${TABLE}.facility_level = "HSC" THEN ${facility_type_name}
        ELSE NULL
        END ;;
  }

  dimension:PHC_HSC_not_null_Filter{
    type: string
    sql: CASE
    when ${PHC} is  NULL and ${HSC} is NULL then '1' Else '0'
    END;;

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
    sql: ${TABLE}.facility_type_id ;;
  }

  dimension: facility_type_name {
    type: string
    sql: ${TABLE}.facility_type_name ;;
  }

  dimension: hq_street {
    type: string
    sql: ${TABLE}.hq_street ;;
  }

  dimension: hud_id {
    type: string
    sql: ${TABLE}.hud_id ;;
  }

  dimension: hud_name {
    type: string
    sql: ${TABLE}.hud_name ;;
    drill_fields: [block_name]
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
    sql: ${TABLE}.owner_id ;;
  }

  dimension: parent_facility {
    type: string
    sql: ${TABLE}.parent_facility ;;
  }

  dimension: parent_facility_name {
    type: string
    sql: ${TABLE}.parent_facility_name ;;
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
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
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

  measure: facility_synced_in_last_24_hours{
    type: count_distinct
    filters:[last_update_date: "24 hours",facility_id: "-NULL"]

    sql: ${TABLE}.facility_id ;;

    html:
    {% if value >= 0 %}
    <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
    {% endif %}
    </a>;;

      drill_fields:[district_name,facility_synced_in_last_24_hours]
    }

  measure: facility_synced_in_last_48_hours{
      type: count_distinct
      filters: {
        field: last_update_date
        value: "48 hours"
      }
      sql: ${TABLE}.facility_id ;;
   }

  measure: facility_synced_in_last_30_days{
        type: count_distinct
        filters: {
          field: last_update_date
          value: "30 days"
        }
        sql: ${TABLE}.facility_id ;;
        value_format: "[>9999999]##\,##\,##\,##0;[>99999]##\,##\,##0;##,##0"
        html:
            {% if value >= 0 %}
            <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
            {% endif %}
            </a>;;

          drill_fields:[district_name,facility_synced_in_last_30_days]
        }
  measure: facility_synced_in_last_60_days{
    type: count_distinct
    filters: {
      field: last_update_date
      value: "60 days"
    }
    sql: ${TABLE}.facility_id ;;
  }

  measure: average_facility_synced_last_60_days{
    type: number
    sql: ${facility_synced_in_last_60_days}/30 ;;
    value_format: "0.0#"

  }

  measure: Average_facility_synced{
          type: number
          sql: ${facility_synced_in_last_30_days}/30 ;;
          value_format: "0.0#"
          html:
              {% if value >= 0 %}
              <a href="#drillmenu"><div style="background-color: #a4bced; text-align:center">{{ rendered_value }}</div>
              {% endif %}
              </a>;;
          drill_fields:[district_name,Average_facility_synced]
        }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      category_name,
      district_name,
      block_name,
      state_name,
      hud_name,
      country_name,
      parent_facility_name,
      directorate_name,
      facility_local_name,
      facility_type_name,
      facility_name
    ]
  }
}

view: facility_registry__services {
  dimension: facility_registry__services {
    type: string
    sql: facility_registry__services ;;
  }
}

view: facility_registry__sub_facility {
  dimension: facility_registry__sub_facility {
    type: string
    sql: facility_registry__sub_facility ;;
  }
}

view: facility_registry__child_facility {
  dimension: facility_registry__child_facility {
    type: string
    sql: facility_registry__child_facility ;;
  }
}

view: facility_registry__update_register {
  dimension: facility_registry__update_register_timestamp {
    type: string
    label: "updated_timestamp"
    sql: JSON_VALUE(facility_registry__update_register, "$.timestamp") ;;
  }
  dimension: facility_registry__update_register_user_id {
    type: string
    label: "updated_by_user_id"
    sql: JSON_VALUE(facility_registry__update_register, "$.user_id") ;;
  }
}
