connection: "bigquery-looker-stg-data-quality"

include: "/Data_Quality/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: family_master_facility_id_is_null{}
explore: family_master_last_update_date_is_not_more_than_current_ts{}
explore: family_master_pincode_is_null{}
explore: family_master_pincode_validation_with_street_table{}
explore: family_master_reside_status_is_null{}
explore: family_master_street_id_is_null{}
explore: family_member_master_aadhaar_number_null{}
explore: family_member_master_duplicated_mobile_number_gt_5{}
explore: family_member_master_facility_id_null{}
explore: family_member_master_last_update_date_is_not_more_than_current_ts{}
explore: family_member_master_resident_status_null{}
explore: family_member_master_street_id_present_in_street_table{}
explore: family_member_socio_economic_ref_last_update_date_is_not_more_than_current_ts{}
explore: family_member_socio_economic_ref_update_register_not_null{}
explore: family_socio_economic_ref_last_update_date_is_not_more_than_current_ts{}
explore: family_socio_economic_ref_update_register_not_null{}
explore: final_family_member_master_resident_status_null{}
explore: final_family_socio_economic_ref_update_register_not_null{}
explore: health_diagnosis_master_duplicated_diagnosis_name{}
explore: health_diagnosis_master_last_update_date_gt_current_ts{}
explore: health_diagnosis_master_null_service_name{}
explore: health_diagnosis_master_null_update_register{}
explore: health_drugs_master_duplicate_drug_name_with_same_dosage{}
explore: health_drugs_master_last_update_date_gt_current_ts{}
explore: health_drugs_master_null_dosage{}
explore: health_drugs_master_null_update_register{}
explore: health_history_last_update_date_not_gt_current_ts{}
explore: health_history_members_present_in_screening_not_in_history{}
explore: health_history_mtm_benefited_in_screening_not_in_history{}
explore: health_history_update_register_null{}
explore: health_history_user_not_available_in_user_table{}
explore: health_lab_tests_master_duplicate_lab_test_name{}
explore: health_lab_tests_master_last_update_date_gt_current_ts{}
explore: health_lab_tests_master_null_result{}
explore: health_lab_tests_master_null_update_register{}
explore: health_screening_duplicated_screening_id{}
explore: health_screening_last_update_date_not_gt_current_ts{}
explore: health_screening_user_not_available_in_user_table{}
explore: health_vaccination_master_duplicated_vaccination_name{}
explore: health_vaccination_master_last_update_date_gt_current_ts{}
explore: health_vaccination_master_null_update_register{}
explore: user_master_facility_id_not_null{}
explore: user_master_last_login_time_is_not_more_than_current_ts{}
explore: user_master_last_update_date_is_not_more_than_current_ts{}
explore: user_master_role_not_null{}
explore: user_master_role_should_be_in_role_id{}
explore: user_master_update_register_not_null{}
explore: user_role_master_last_update_date_is_not_more_than_current_ts{}
explore: user_role_master_update_register_not_null{}
