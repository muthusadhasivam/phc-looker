connection: "tnphr_bigquery_dev" # Connected to BiqQuery



include: "/views-spanner-bq/*.view.lkml" #Included all views in BigQuery




#Join Facility Registry Explore is to be join by Family Master on facility_id
explore: facility_registry_spanner_bq_vw{
  label: "Facility"
  view_label: "Registry"



  join: facility_level_master_spanner_bq_vw{
    view_label: "Registry"
    type: left_outer
    sql_on: ${facility_registry_spanner_bq_vw.facility_level_id}=${facility_level_master_spanner_bq_vw.level_id};;
    relationship: many_to_one
  }



  join: facility_type_master_spanner_bq_vw {
    view_label: "Type"
    type: left_outer
    sql_on: ${facility_level_master_spanner_bq_vw.facility_type_id}=${facility_type_master_spanner_bq_vw.facility_type_id};;
    relationship: many_to_one
  }



  join: facility_category_master_spanner_bq_vw{
    view_label: "Category"
    type: left_outer
    sql_on: ${facility_type_master_spanner_bq_vw.category_id}=${facility_category_master_spanner_bq_vw.category_id};;
    relationship: many_to_one
  }



  join: facility_directorate_master_spanner_bq_vw{
    view_label: "Directorate"
    type: left_outer
    sql_on: ${facility_category_master_spanner_bq_vw.directorate_id}=${facility_directorate_master_spanner_bq_vw.directorate_id};;
    relationship: many_to_one
  }



  join: facility_owner_master_spanner_bq_vw{
    view_label: "Owner"
    type: left_outer
    sql_on: ${facility_directorate_master_spanner_bq_vw.owner_id}=${facility_owner_master_spanner_bq_vw.owner_id};;
    relationship: many_to_one
  }



  join: user_master_spanner_bq_vw {
    view_label: "User"
    type: left_outer
    sql_on: ${facility_registry_spanner_bq_vw.facility_id}=${user_master_spanner_bq_vw.facility_id};;
    relationship: many_to_one
  }



  join: user_role_master_spanner_bq_vw {
    view_label: "User"
    type: left_outer
    sql_on: ${user_master_spanner_bq_vw.role_id}=${user_role_master_spanner_bq_vw.role_id};;
    relationship: many_to_one
  }



}








#Family Health Can be joined to Family master on family_id
explore: family_member_master_spanner_bq_vw{
  label: "Family "
  view_label: "Family member Master"


  join: health_screening_spanner_bq_vw{
    view_label: "Health Screening"
    sql_on: ${health_screening_spanner_bq_vw.family_id} = ${family_member_master_spanner_bq_vw.family_id} and ${health_screening_spanner_bq_vw.member_id} = ${family_member_master_spanner_bq_vw.member_id};;
    relationship: one_to_many
  }
  join: health_screening_spanner_bq_vw__drugs {
    view_label: "Health Screening Vw: Drugs"
    sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.drugs}) as health_screening_spanner_bq_vw__drugs ;;
    relationship: one_to_many
  }

  join: health_screening_spanner_bq_vw__lab_test {
    view_label: "Health Screening Vw: Lab Test"
    sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.lab_test}) as health_screening__lab_test ;;
    relationship: one_to_many
  }
  join: health_screening_spanner_bq_vw__diseases_disease_list {
    view_label: "Health Screening Vw: Diseases Disease List"
    sql: LEFT JOIN UNNEST(${health_screening_spanner_bq_vw.diseases_disease_list}) as health_screening__diseases_disease_list ;;
    relationship: one_to_many
  }



  join: health_lab_tests_master_spanner_bq_vw {
    type: left_outer
    sql_on: ${health_lab_tests_master_spanner_bq_vw.lab_test_id} = ${health_screening_spanner_bq_vw__lab_test.health_screening_spanner_bq_vw__lab_test_test_id};;
    relationship: many_to_one
  }



  join: health_drugs_master_spanner_bq_vw {
    type: left_outer
    sql_on: ${health_drugs_master_spanner_bq_vw.drug_id} = ${health_screening_spanner_bq_vw__drugs.health_screening_spanner_bq_vw__drugs_drug_id};;
    relationship: many_to_one
  }



  join: health_diagnosis_master_spanner_bq_vw {
    type: left_outer
    sql_on: ${health_diagnosis_master_spanner_bq_vw.service_id} = ${health_screening_spanner_bq_vw__diseases_disease_list.health_screening_spanner_bq_vw__diseases_disease_list_service_id};;
    relationship: many_to_one
  }



  join: health_history_spanner_bq_vw {
    type: left_outer
    sql_on: ${health_history_spanner_bq_vw.family_id} = ${family_member_master_spanner_bq_vw.family_id} and ${health_history_spanner_bq_vw.member_id} = ${family_member_master_spanner_bq_vw.member_id};;
    relationship: one_to_many
  }




  join: family_master_spanner_bq_vw {
    view_label: "Family Master"
    type: left_outer
    sql_on: ${family_member_master_spanner_bq_vw.family_id}=${family_master_spanner_bq_vw.family_id};;
    relationship: many_to_one
  }

  join: address_hhg_master_spanner_bq_vw {
    view_label: "State"
    type: left_outer
    sql_on: ${family_master_spanner_bq_vw.hhg_id}=${address_hhg_master_spanner_bq_vw.hhg_id};;
    relationship: many_to_one
  }



  join: address_street_master_spanner_bq_vw {
    view_label: "Street"
    type: left_outer
    sql_on: ${address_street_master_spanner_bq_vw.street_id}=${family_master_spanner_bq_vw.street_id} ;;
    relationship: many_to_one
  }



  join: address_area_master_spanner_bq_vw {
    view_label: "Area"
    type: left_outer
    sql_on:  ${address_area_master_spanner_bq_vw.area_id}=${family_master_spanner_bq_vw.area_id} ;;
    relationship: many_to_one
  }



  join: address_village_master_spanner_bq_vw {
    view_label: "Village"
    type: left_outer
    sql_on: ${address_village_master_spanner_bq_vw.village_id}=${family_master_spanner_bq_vw.village_id};;
    relationship: many_to_one
  }




  join: address_block_master_spanner_bq_vw{
    view_label: "Block"
    type: left_outer
    sql_on:  ${address_block_master_spanner_bq_vw.block_id}=${family_master_spanner_bq_vw.block_id};;
    relationship: many_to_one
  }



  join: address_hud_master_spanner_bq_vw{
    view_label: "Hud"
    type: left_outer
    sql_on:  ${address_hud_master_spanner_bq_vw.hud_id}=${family_master_spanner_bq_vw.hud_id};;
    relationship: many_to_one
  }



  join: address_district_master_spanner_bq_vw{
    view_label: "District"
    type: left_outer
    sql_on:  ${address_district_master_spanner_bq_vw.district_id}=${family_master_spanner_bq_vw.district_id};;
    relationship: many_to_one
  }

  join: address_state_master_spanner_bq_vw {
    view_label: "State"
    type: left_outer
    sql_on: ${address_district_master_spanner_bq_vw.state_id}=${address_state_master_spanner_bq_vw.state_id};;
    relationship: many_to_one
  }




  join: address_country_master_spanner_bq_vw {
    view_label: "Contry"
    type: left_outer
    sql_on: ${address_country_master_spanner_bq_vw.country_id}=${family_master_spanner_bq_vw.country_id};;
    relationship: many_to_one
  }


}
