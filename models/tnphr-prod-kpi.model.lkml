connection: "spanner-looker"


include: "/prod-version2-views/*.view.lkml" #Included all views in BigQuery
include: "/Looker_V2/*.dashboard.lookml"

explore: population {}
explore: family {}
explore: facility {}
explore: user {}
# explore: mtm {}
# explore: mtm_drug {}
explore: screening {}
# explore: services {}
explore: drugs {}
#explore: mtm_services {}
#explore: compliance {}
explore: diseases {}
explore: lab_test {}
# explore: screeings_breakage {}
# explore: screening_visits {}
explore: mtm_beneficiary {}

explore: live_user_sync {}
explore: live_total_screening_count {}
explore: live_individual_screening_count {}
explore: live_beneficiary {}
explore: live_family {}
