connection: "tnphr_bigquery_prod" # Connected to BiqQuery


include: "/views/*.view.lkml" #Included all views in BigQuery


#Join Facility Registry Explore is to be join by Family Master on facility_id
explore: facility_registry{
  label: "Facility"
  view_label: "Registry"



  join: facility_level_master{
    view_label: "Registry"
    type: left_outer
    sql_on: ${facility_registry.facility_level_id}=${facility_level_master.level_id};;
    relationship: many_to_one
  }



  join: facility_type_master {
    view_label: "Type"
    type: left_outer
    sql_on: ${facility_level_master.facility_type_id}=${facility_type_master.facility_type_id};;
    relationship: many_to_one
  }



  join: facility_category_master{
    view_label: "Category"
    type: left_outer
    sql_on: ${facility_type_master.category_id}=${facility_category_master.category_id};;
    relationship: many_to_one
  }



  join: facility_directorate_master{
    view_label: "Directorate"
    type: left_outer
    sql_on: ${facility_category_master.directorate_id}=${facility_directorate_master.directorate_id};;
    relationship: many_to_one
  }



  join: facility_owner_master{
    view_label: "Owner"
    type: left_outer
    sql_on: ${facility_directorate_master.owner_id}=${facility_owner_master.owner_id};;
    relationship: many_to_one
  }



  join: user_master {
    view_label: "User"
    type: left_outer
    sql_on: ${facility_registry.facility_id}=${user_master.facility_id};;
    relationship: many_to_one
  }



  join: user_role_master {
    view_label: "User"
    type: left_outer
    sql_on: ${user_master.role_id}=${user_role_master.role_id};;
    relationship: many_to_one
  }



}

#Family Health Can be joined to Family master on family_id
explore: family_member_master{
  label: "Family Member Member"
  view_label: "Family Member Master"

  # access_filter: {
  #   field: address_district_master.district_name
  #   user_attribute: district_level
  # }
  join: family_master {
    view_label: "Family  Master"
    type: left_outer
    sql_on: ${family_member_master.family_id}=${family_master.family_id};;
    relationship: many_to_one
  }

  join: family_master__update_register {
    view_label: "Family Master Vw: Update Register"
    sql: LEFT JOIN UNNEST(${family_master.update_register}) as family_master__update_register ;;
    relationship: one_to_many
  }

join: family_master__family_insurances_insurance {
  view_label: "Family Master Vw: Insurance"
  sql: LEFT JOIN UNNEST(${family_master.family_insurances_insurance}) as family_master__family_insurances_insurance ;;
  relationship: one_to_many
}

  join: family_member_master__update_register {
     view_label: "Family Member Master Vw: Update Register"
     sql: LEFT JOIN UNNEST(${family_member_master.update_register}) as family_member_master__update_register ;;
    relationship: one_to_many
  }

  join: health_screening{
    view_label: "Health Screening"
    sql_on: ${health_screening.family_id} = ${family_member_master.family_id} and ${health_screening.member_id} = ${family_member_master.member_id};;
    relationship: one_to_many
  }
  join: health_screening__update_register {
    view_label: "Health Screening: Update Register"
    sql: LEFT JOIN UNNEST(${health_screening.update_register}) as health_screening__update_register ;;
    relationship: one_to_many
  }
  join: health_screening__drugs {
    view_label: "Health Screening Vw: Drugs"
    sql: LEFT JOIN UNNEST(${health_screening.drugs}) as health_screening__drugs ;;
    relationship: one_to_many
  }
  join: health_screening__lab_test {
    view_label: "Health Screening Vw: Lab Test"
    sql: LEFT JOIN UNNEST(${health_screening.lab_test}) as health_screening__lab_test ;;
    relationship: one_to_many
  }

  join: screening_counts {
    sql_on: ${health_screening.member_id} = ${screening_counts.member_id};;
    relationship: one_to_one
  }

  join: families_with_member_count_1{
    sql_on: ${family_member_master.family_id}=${families_with_member_count_1.family_id} ;;
    relationship: one_to_one
  }

  join: health_screening__diseases_disease_list {
    view_label: "Health Screening Vw: Diseases Disease List"
    sql: LEFT JOIN UNNEST(${health_screening.diseases_disease_list}) as health_screening__diseases_disease_list ;;
    relationship: one_to_many
  }
  join: compliance  {
    view_label: "Compliance"
    sql_on: ${health_screening.member_id} = ${compliance.member_id};;
    relationship: one_to_one
  }
  join: drugs_and_services  {
    view_label: "drugs_and_services"
    sql_on: ${health_screening.member_id} = ${drugs_and_services.health_screening_member_id};;
    relationship: one_to_one
  }

  join: facility_owner_master {
    view_label: "Facility owner"
    type: left_outer
    sql_on: ${facility_owner_master.owner_id}=${facility_registry.owner_id} ;;
    relationship: many_to_one
  }

  join: health_lab_tests_master {
    type: left_outer
    sql_on: ${health_lab_tests_master.lab_test_id} = ${health_screening__lab_test.health_screening__lab_test_test_id};;
    relationship: many_to_one
  }



  join: health_drugs_master {
    type: left_outer
    sql_on: ${health_drugs_master.drug_id} = ${health_screening__drugs.health_screening__drugs_drug_id};;
    relationship: many_to_one
  }



  join: health_diagnosis_master {
    type: left_outer
    sql_on: ${health_diagnosis_master.diagnosis_id} = ${health_screening__diseases_disease_list.health_screening__diseases_disease_list_id};;
    relationship: many_to_one
  }



  join: health_history {
    type: left_outer
    sql_on: ${health_history.family_id} = ${family_member_master.family_id} and ${health_history.member_id} = ${family_member_master.member_id};;
    relationship: one_to_many
  }



  join: address_hhg_master {
    view_label: "House Hold Group"
    type: left_outer
    sql_on: ${family_master.hhg_id}=${address_hhg_master.hhg_id};;
    relationship: many_to_one
  }



  join: address_street_master {
    view_label: "Street"
    type: left_outer
    sql_on: ${address_street_master.street_id}=${family_master.street_id} ;;
    relationship: many_to_one
  }



  join: address_area_master {
    view_label: "Area"
    type: left_outer
    sql_on:  ${address_area_master.area_id}=${family_master.area_id} ;;
    relationship: many_to_one
  }



  join: address_village_master {
    view_label: "Village"
    type: left_outer
    sql_on: ${address_village_master.village_name}=${family_member_master.village_name};;
    relationship: many_to_one
  }




  join: address_block_master{
    view_label: "Block"
    type: left_outer
    sql_on:  ${address_block_master.block_name}=${family_member_master.block_name};;
    relationship: many_to_one
  }



  join: address_hud_master{
    view_label: "Health Unit District"
    type: left_outer
    sql_on:  ${address_hud_master.hud_name}=${family_member_master.hud_name};;
    relationship: many_to_one
  }



  join: address_district_master{
    view_label: "District"
    type: left_outer
    sql_on:  ${address_district_master.district_name}=${family_member_master.district_name};;
    relationship: many_to_one
  }

  join: address_state_master {
    view_label: "State"
    type: left_outer
    sql_on: ${address_district_master.state_id}=${address_state_master.state_id};;
    relationship: many_to_one
  }

  join: address_country_master {
    view_label: "Contry"
    type: left_outer
    sql_on: ${address_country_master.country_id}=${family_master.country_id};;
    relationship: many_to_one
  }

  join: facility_registry {
    view_label: "Facility registry"
    type: left_outer
    sql_on: ${facility_registry.facility_id}=${family_member_master.facility_id} ;;
    relationship: many_to_one
  }


  join:facility_directorate_master{
    view_label: "Directorate"
    type: left_outer
    sql_on: ${facility_directorate_master.directorate_id}=${facility_registry.directorate_id} ;;
    relationship: many_to_one
  }

  join: family_data_quality {
    view_label: " families with more than 10 members "
    type: left_outer
    sql_on: ${family_data_quality.family_id}=${family_member_master.family_id};;
    relationship: one_to_one
  }

  join:user_master {
  view_label: "user master"
  type: left_outer
  sql_on: ${health_screening.user_facility_id}=${user_master.facility_id} ;;
  relationship: many_to_one
  }

  join: op_dashboard {
    view_label: "User Parent facility"
    type: left_outer
    sql_on: ${op_dashboard.user_facility_id}=${health_screening.user_facility_id} ;;
    relationship: one_to_one
  }
 }

explore: screening_metrics {
  label: "Screening Monitoring"
  view_label: "Screening Monitoring"
  }

explore: family_master {
  label: "Family Master"
  view_label: "Family Master"

  join: facility_registry {
    view_label: "Facility registry"
    type: left_outer
    sql_on: ${facility_registry.facility_id}=${family_master.facility_id} ;;
    relationship: many_to_one
  }


  join:facility_directorate_master{
    view_label: "Directorate"
    type: left_outer
    sql_on: ${facility_directorate_master.directorate_id}=${facility_registry.directorate_id} ;;
    relationship: many_to_one
  }
}

explore: whv_monitoring_view {}


explore: address_street_master {
  label: "Street and Facility level"

  join: facility_registry {
    view_label: "Facility registry"
    type: left_outer
    sql_on: ${facility_registry.facility_id}=${address_street_master.facility_id} ;;
    relationship: many_to_one
  }
}

explore: shop_street_data_quality {
  label: "shop_street_data_quality"


}



explore: shop_data_quality {}

explore: screening_data_quality {}

explore: cloudfunctions_googleapis_com_cloud_functions_view {
  label: "cloud_functions"
  view_label: "cloud_functions"
}

explore: run_googleapis_com_requests_view {
  label: "cloud_run_googleapis"
  view_label: "cloud_run_googleapis"
}

explore: unique_queries_spanner_high_cpu {}

explore: unique_queries_spanner_high_cpu_2 {}

explore: user_master{
  label: "User_facility_registry"
  join: facility_registry {
    view_label: "Facility registry"
    type: left_outer
    sql_on: ${facility_registry.facility_id}=${user_master.facility_id} ;;
    relationship: many_to_one
  }
}

map_layer: india {
  file: "/maps/india-districts.json"
}
