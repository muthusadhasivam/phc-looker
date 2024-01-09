- dashboard: phr_performance_dashboard_v2_0_1
  title: PHR Performance Dashboard v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: aY07KiRaPH3O2ZLkvrsrCn
  elements:
  - title: Total Population
    name: Total Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 4
    col: 0
    width: 8
    height: 3
  - title: Individual Screened Gender Wise
    name: Individual Screened Gender Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_pie
    fields: [screening.unique_screenings, screening.citizen_gender_concat]
    sorts: [screening.unique_screenings desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screening Male}, {axisId: screening.unique_screening_female,
            id: screening.unique_screening_female, name: Unique Screening Female},
          {axisId: screening.unique_screening_other, id: screening.unique_screening_other,
            name: Unique Screening Other}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 4
    col: 8
    width: 8
    height: 6
  - title: Families Added
    name: Families Added
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.total_families]
    filters:
      family.user_created_by: user
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Community Block Type: family.family_block_type
      Institution Owner: family.user_owner
      Institution Facility Type: family.user_facility_type
      Institution Role: family.user_role
      Institution Directorate: family.user_directorate
    row: 10
    col: 4
    width: 4
    height: 3
  - title: Aadhar Linked Members
    name: Aadhar Linked Members
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.Aadhaar_linked_members]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 22
    col: 0
    width: 4
    height: 3
  - title: Individual Screenings
    name: Individual Screenings
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.unique_screenings]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: screening.unique_screening_male,
            id: screening.unique_screening_male, name: Unique Screening Male}, {axisId: screening.unique_screening_female,
            id: screening.unique_screening_female, name: Unique Screening Female},
          {axisId: screening.unique_screening_other, id: screening.unique_screening_other,
            name: Unique Screening Other}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Gender
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 25
    col: 4
    width: 4
    height: 3
  - title: Role based screening
    name: Role based screening
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.Total_screenings, screening.role_name]
    sorts: [screening.Total_screenings desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.unique_screening_male: Males
      screening.unique_screening_female: Females
      screening.unique_screening_other: Others
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    header_font_color: "#fffcfc"
    header_background_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: screening.Total_screenings,
            id: screening.Total_screenings, name: Total Screenings}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    series_types: {}
    series_colors:
      screening.Total_screenings: "#2643d1"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_fields: []
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 48
    col: 16
    width: 8
    height: 8
  - title: Family Residential Status
    name: Family Residential Status
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.total_families]
    filters:
      family.family_reside_status: "-NULL"
    sorts: [family.total_families desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [family.reside_status]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Community Block Type: family.family_block_type
      Institution Owner: family.user_owner
      Institution Facility Type: family.user_facility_type
      Institution Role: family.user_role
      Institution Directorate: family.user_directorate
    row: 7
    col: 0
    width: 8
    height: 3
  - title: Population given consent
    name: Population given consent
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.Population_given_consent]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 13
    col: 4
    width: 4
    height: 3
  - title: Population mapped with streets
    name: Population mapped with streets
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.Population_allocated_to_street]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 16
    col: 0
    width: 8
    height: 3
  - title: Population RDMND Status
    name: Population RDMND Status
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.resident_status_resident, population.resident_status_migrated,
      population.resident_status_death, population.resident_status_duplicate, population.resident_status_non_traceable,
      population.resident_status_Visitor]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: population.resident_status_resident,
            id: population.resident_status_resident, name: Resident Count}, {axisId: population.resident_status_migrated,
            id: population.resident_status_migrated, name: Migrated Count}, {axisId: population.resident_status_death,
            id: population.resident_status_death, name: Death Count}, {axisId: population.resident_status_duplicate,
            id: population.resident_status_duplicate, name: Duplicate Count}, {axisId: population.resident_status_non_traceable,
            id: population.resident_status_non_traceable, name: Non-traceable Count}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 7, type: linear}]
    series_types: {}
    series_labels:
      population.Other_resident_status_population: Others
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 31
    col: 0
    width: 8
    height: 6
  - title: Population Verified VS Non Verified Status
    name: Population Verified VS Non Verified Status
    model: tnphr-prod-kpi
    explore: population
    type: looker_column
    fields: [population.total_population, population.verified_population]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: population_non_verified, label: Population
          non verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      population_non_verified: "#FF8168"
    defaults_version: 1
    hidden_fields: [population.total_population]
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 37
    col: 0
    width: 8
    height: 5
  - title: Individual Screened Age wise
    name: Individual Screened Age wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.unique_screenings, screening.age_interval_0_to_100]
    fill_fields: [screening.age_interval_0_to_100]
    sorts: [screening.age_interval_0_to_100]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      screening.unique_screenings: "#80868B"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 37
    col: 8
    width: 16
    height: 5
  - title: Individual Screened Village Type Wise
    name: Individual Screened Village Type Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_bar
    fields: [screening.unique_screenings, screening.citizen_village_type]
    filters:
      screening.citizen_village_type: "-NULL"
    sorts: [screening.unique_screenings desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: screening.unique_screenings,
            id: screening.unique_screenings, name: Unique Screenings}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Community Village Type
    series_types: {}
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 42
    col: 8
    width: 8
    height: 6
  - title: Name of Lab Test
    name: Name of Lab Test
    model: tnphr-prod-kpi
    explore: lab_test
    type: looker_grid
    fields: [lab_test.lab_test_name, lab_test.count]
    filters:
      lab_test.lab_test_name: "-NULL"
    sorts: [lab_test.count desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: lab_test.citizen_district_name
      Community Hud: lab_test.citizen_hud_name
      Community Block: lab_test.citizen_block_name
      Date: lab_test.lab_test_date_date
      Community Block Type: lab_test.citizen_block_type
      Institution Owner: lab_test.user_owner_name
      Institution Facility Type: lab_test.user_facility_type
      Institution Role: lab_test.user_role_name
      Institution Directorate: lab_test.user_directorate
    row: 42
    col: 0
    width: 8
    height: 6
  - title: MTM Target Unique Screened
    name: MTM Target Unique Screened
    model: tnphr-prod-kpi
    explore: screening
    type: looker_bar
    fields: [screening.MTM_Target, screening.unique_screenings]
    fill_fields: [screening.MTM_Target]
    sorts: [screening.MTM_Target]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 4
    col: 16
    width: 8
    height: 6
  - title: Members  Added
    name: Members  Added
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.user_created_by: "-system,-NULL"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 10
    col: 0
    width: 4
    height: 3
  - title: Families Updated
    name: Families Updated
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.total_families]
    filters:
      family.is_family_updated: 'yes'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Community Block Type: family.family_block_type
      Institution Owner: family.user_owner
      Institution Facility Type: family.user_facility_type
      Institution Role: family.user_role
      Institution Directorate: family.user_directorate
    row: 13
    col: 0
    width: 4
    height: 3
  - title: Name of Drugs issued
    name: Name of Drugs issued
    model: tnphr-prod-kpi
    explore: drugs
    type: looker_grid
    fields: [drugs.drug_name, drugs.total_drugs_issued]
    sorts: [drugs.total_drugs_issued desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      drugs.total_drugs_issued:
        is_active: true
    header_font_color: "#f5fff2"
    header_background_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
      Date: drugs.citizen_screened_date
      Community Gender: drugs.citizen_gender
      Community Block Type: drugs.citizen_block_type
      Institution Owner: drugs.user_owner_name
      Institution Facility Type: drugs.user_facility_type
      Institution Role: drugs.role_name
      Institution Directorate: drugs.user_directorate
    row: 48
    col: 8
    width: 8
    height: 8
  - title: MTM beneficiaries
    name: MTM beneficiaries
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
      screening.Confirmed_Hypertension, screening.Controlled_Hypertension, screening.Confirmed_Hypertension_and_DiabetesMellitus,
      screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 31
    col: 8
    width: 8
    height: 6
  - title: NCD Target Unique Screened
    name: NCD Target Unique Screened
    model: tnphr-prod-kpi
    explore: screening
    type: looker_bar
    fields: [screening.unique_screenings, screening.age_interval]
    fill_fields: [screening.age_interval]
    sorts: [screening.age_interval]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      screening.unique_screenings: "#7CB342"
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 10
    col: 16
    width: 8
    height: 6
  - title: Congenital Anomaly
    name: Congenital Anomaly
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_congenital_anomaly]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 19
    col: 4
    width: 4
    height: 3
  - title: Disability beneficiaries
    name: Disability beneficiaries
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.citizen_disability: 'Yes'
    sorts: [population.total_population desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 25
    col: 0
    width: 4
    height: 3
  - title: UDID Linked Members
    name: UDID Linked Members
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population]
    filters:
      population.is_citizen_udid: 'yes'
    sorts: [population.total_population desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 22
    col: 4
    width: 4
    height: 3
  - title: No of Individuals Referred split up
    name: No of Individuals Referred split up
    model: tnphr-prod-kpi
    explore: diseases
    type: looker_grid
    fields: [diseases.refferal_count, diseases.user_facility_category_name]
    filters:
      diseases.user_facility_category_name: "-NULL"
    sorts: [diseases.refferal_count desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_font_color: "#f8fff8"
    header_background_color: "#1A73E8"
    defaults_version: 1
    listen:
      Community District: diseases.citizen_district_name
      Community Hud: diseases.citizen_hud_name
      Community Block: diseases.citizen_block_name
      Community Block Type: diseases.citizen_block_type
      Institution Owner: diseases.user_facility_owner_name
      Institution Facility Type: diseases.user_facility_type
      Institution Role: diseases.role_name
      Institution Directorate: diseases.user_directorate
    row: 42
    col: 16
    width: 8
    height: 6
  - title: School Target Unique Screened
    name: School Target Unique Screened
    model: tnphr-prod-kpi
    explore: population
    type: looker_bar
    fields: [population.male_population, population.female_population, population.other_population,
      population.School_Health_Target]
    filters:
      population.School_Health_Target: "-20 or Above,-Undefined"
      population.citizen_created_date: ''
    sorts: [population.School_Health_Target]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: population, label: Population, expression: "${population.male_population}+${population.female_population}+${population.other_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Gender
    series_types: {}
    series_colors:
      population: "#F9AB00"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      population:
        is_active: true
    defaults_version: 1
    hidden_fields: [population.male_population, population.female_population, population.other_population]
    listen:
      Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    row: 16
    col: 16
    width: 8
    height: 6
  - title: First time Screening VS Repeated Screening for last 7 days
    name: First time Screening VS Repeated Screening for last 7 days
    model: tnphr-prod-kpi
    explore: screening
    type: looker_line
    fields: [screening.screened_date, screening.screened_only_once, screening.multiple_times_screened]
    fill_fields: [screening.screened_date]
    filters:
      screening.screened_date: 7 days
    sorts: [screening.screened_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: screening.screened_only_once,
            id: screening.screened_only_once, name: Screened Only Once}, {axisId: screening.multiple_times_screened,
            id: screening.multiple_times_screened, name: Multiple Times Screened}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      screening.multiple_times_screened: "#E52592"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 10
    col: 8
    width: 8
    height: 6
  - title: Individual Screened for last 7 days
    name: Individual Screened for last 7 days
    model: tnphr-prod-kpi
    explore: screening
    type: looker_line
    fields: [screening.unique_screenings, screening.screened_date]
    fill_fields: [screening.screened_date]
    filters:
      screening.screened_date: 7 days
    sorts: [screening.screened_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 16
    col: 8
    width: 8
    height: 6
  - title: Total Individuals received Drugs
    name: Total Individuals received Drugs
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.unique_drugs_count]
    filters:
      screening.user_facility_name: ''
      screening.user_hud_name: ''
      screening.user_district_name: ''
      screening.citizen_facility_name: ''
      screening.citizen_village_name: ''
      screening.user_block_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: '',
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: 99d2d3ac-7579-41a0-b16c-a381b7ae96da}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 28
    col: 0
    width: 4
    height: 3
  - title: Facility wise Screening
    name: Facility wise Screening
    model: tnphr-prod-kpi
    explore: screening
    type: looker_column
    fields: [screening.user_facility_type, screening.user_category_name, screening.Total_screenings]
    filters:
      screening.user_category_name: GH,Rural HSC,Rural PHC,Urban HSC,Urban PHC,MCH
        Hosp
    sorts: [screening.user_facility_type]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'concat(${screening.user_facility_type},"
          " , "("," Category: ", ${screening.user_category_name}, ")")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Facility
    column_spacing_ratio: 0.4
    defaults_version: 1
    hidden_fields: [screening.user_category_name, screening.user_facility_type]
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 22
    col: 8
    width: 16
    height: 9
  - title: UHC 16 condition screening
    name: UHC 16 condition screening
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.Total_screenings, screening.citizen_service_name]
    filters: {}
    sorts: [screening.Total_screenings desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 48
    col: 0
    width: 8
    height: 8
  - title: CMCHIS beneficiaries
    name: CMCHIS beneficiaries
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.CMCHIS_Beneficiaries]
    filters:
      family.family_created_date: ''
      family.family_village_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    defaults_version: 1
    series_types: {}
    listen:
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
      Community Block Type: family.family_block_type
      Institution Owner: family.user_owner
      Institution Facility Type: family.user_facility_type
      Institution Role: family.user_role
      Institution Directorate: family.user_directorate
    row: 19
    col: 0
    width: 4
    height: 3
  - title: Total Confirmed MTM Beneficiary
    name: Total Confirmed MTM Beneficiary
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: '',
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Gender: mtm_beneficiary.citizen_gender
      HSC: mtm_beneficiary.HSC
      PHC: mtm_beneficiary.PHC
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility Type: mtm_beneficiary.user_facility_type
      Institution Role: mtm_beneficiary.role_name
      Institution Directorate: mtm_beneficiary.user_directorate
    row: 28
    col: 4
    width: 4
    height: 3
  - name: By Staff [Health]
    title: By Staff [Health]
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.citizen_district_gid, screening.citizen_hud_name,
        screening.citizen_hud_gid, screening.citizen_block_name, screening.citizen_block_gid,
        screening.citizen_village_name, screening.citizen_village_gid, screening.PHC,
        screening.HSC, screening.user_facility_type, screening.Unique_Screening, screening.Total_screenings,
        screening.unique_drugs_count]
      filters:
        screening.role_name: Mid Level Health Provider
        screening.PHC_HSC_not_null_Filter: '0'
      sorts: [screening.Unique_Screening desc]
      limit: 5000
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_gid, population.citizen_block_gid, population.citizen_village_name,
        population.citizen_village_gid, population.user_facility_type, population.verified_population]
      filters:
        population.user_role: Mid Level Health Provider
      sorts: [population.verified_population desc]
      limit: 500
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: population.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: population.citizen_district_name
        source_field_name: screening.citizen_village_name
      - field_name: population.citizen_village_gid
        source_field_name: screening.citizen_village_gid
      - field_name: population.citizen_village_name
        source_field_name: screening.citizen_district_name
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.citizen_hud_gid, population.citizen_block_gid,
        population.citizen_village_gid, population.user_facility_type, population.verified_population]
      filters:
        population.user_role: Women Health Volunteer
      sorts: [population.citizen_district_gid]
      limit: 5000
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: population.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: population.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_gid, screening.citizen_hud_gid, screening.user_block_gid,
        screening.citizen_village_gid, screening.user_facility_type, screening.Total_screenings,
        screening.unique_screenings, screening.unique_drugs_count]
      filters:
        screening.role_name: Women Health Volunteer
      sorts: [screening.Total_screenings desc]
      limit: 5000
      hidden_fields: [screening.citizen_district_gid, screening.citizen_hud_gid, screening.user_block_gid,
        screening.user_facility_type]
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: screening.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: screening.user_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: screening.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.citizen_block_gid, population.citizen_hud_gid,
        population.citizen_village_gid, population.user_facility_type, population.verified_population]
      filters:
        population.user_role: NCD Staff Nurse
        population.user_directorate: DPH
      sorts: [population.verified_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: population.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_gid, screening.citizen_hud_gid, screening.citizen_block_gid,
        screening.citizen_village_gid, screening.user_facility_type, screening.Total_screenings,
        screening.unique_screenings, screening.unique_drugs_count]
      filters:
        screening.role_name: NCD Staff Nurse
        screening.user_directorate: DPH
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: screening.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: screening.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: screening.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.citizen_hud_gid, population.citizen_block_gid,
        population.citizen_village_gid, population.user_facility_type, population.verified_population]
      filters:
        population.user_role: NCD Staff Nurse
        population.user_directorate: DMS
      sorts: [population.verified_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: population.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: population.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_gid, screening.citizen_hud_gid, screening.citizen_block_gid,
        screening.citizen_village_gid, screening.user_facility_type, screening.Total_screenings,
        screening.unique_drugs_count, screening.unique_screenings]
      filters:
        screening.role_name: NCD Staff Nurse
        screening.user_directorate: DMS
      sorts: [screening.citizen_district_gid]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: screening.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: screening.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: screening.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_gid, screening.citizen_hud_gid, screening.citizen_block_gid,
        screening.citizen_village_gid, screening.user_facility_type, screening.Total_screenings,
        screening.unique_drugs_count, screening.unique_screenings]
      filters:
        screening.role_name: NCD Staff Nurse
        screening.user_directorate: DME
      sorts: [screening.Total_screenings desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: screening.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: screening.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: screening.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_block_gid, population.citizen_district_gid, population.citizen_hud_gid,
        population.citizen_village_gid, population.user_facility_type, population.verified_population]
      filters:
        population.user_role: NCD Staff Nurse
        population.user_directorate: DME
      sorts: [population.verified_population desc]
      limit: 5000
      join_fields:
      - field_name: population.citizen_block_gid
        source_field_name: screening.citizen_block_gid
      - field_name: population.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: population.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: population.user_facility_type
        source_field_name: screening.user_facility_type
      - field_name: population.citizen_village_gid
        source_field_name: screening.citizen_village_gid
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.verified_population: "[Mid Level Health Provider] Population Verified"
      screening.Unique_Screening: "[Mid Level Health Provider] Individuals screened"
      screening.Total_screenings: "[Mid Level Health Provider] Total Screenings"
      screening.unique_drugs_count: "[Mid Level Health Provider] No of individuals\
        \ issued drugs"
      q2_population.verified_population: "[Women Health Volunteer] Population Verified"
      screening.unique_screenings: "[Women Health Volunteer] Individuals screened"
      q3_screening.Total_screenings: "[Women Health Volunteer] Total Screenings"
      q3_screening.unique_drugs_count: "[Women Health Volunteer] No of individuals\
        \ issued drugs"
      q4_population.verified_population: "[DPH MTM Staff Nurse] Population Verified"
      q5_screening.unique_screenings: "[DPH MTM Staff Nurse] Individual  Screened"
      q5_screening.unique_drugs_count: "[DPH MTM Staff Nurse] No of Individuals  issued\
        \ drugs"
      q5_screening.Total_screenings: "[DPH MTM Staff Nurse] Total Screenings"
      q6_population.verified_population: "[DMS MTM Staff Nurse] Population Verified"
      q7_screening.Total_screenings: "[DMS MTM Staff Nurse] Total Screenings]"
      q7_screening.unique_screenings: "[DMS MTM Staff Nurse] Individual  Screened"
      q7_screening.unique_drugs_count: "[DMS MTM Staff Nurse] No of Individuals  issued\
        \ drugs"
      q9_population.verified_population: "[DME MTM Staff Nurse] Population Verified"
      q8_screening.unique_screenings: "[DME MTM Staff Nurse] Individual  Screened"
      q8_screening.Total_screenings: "[DME MTM Staff Nurse] Total Screenings]"
      q8_screening.unique_drugs_count: "[DME MTM Staff Nurse] No of Individuals  issued\
        \ drugs"
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.citizen_block_name: Community Block
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_village_name: Community Village Name
      screening.citizen_village_gid: Community  Village Gid
    series_column_widths:
      screening.citizen_village_name: 200
      screening.citizen_village_gid: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Unique_Screening:
        align: center
      screening.Total_screenings:
        align: center
      screening.citizen_district_gid:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_gid:
        align: center
      q3_screening.Total_screenings:
        align: center
      q2_population.verified_population:
        align: center
      q3_screening.unique_drugs_count:
        align: center
      q5_screening.unique_drugs_count:
        align: center
      q7_screening.unique_screenings:
        align: center
      q7_screening.unique_drugs_count:
        align: center
      q6_population.verified_population:
        align: center
      q7_screening.Total_screenings:
        align: center
      q9_population.verified_population:
        align: center
      screening.citizen_district_name:
        align: center
      screening.citizen_hud_name:
        align: center
      screening.citizen_block_name:
        align: center
      phc:
        align: center
      hsc:
        align: center
      screening.unique_drugs_count:
        align: center
      population.verified_population:
        align: center
      screening.unique_screenings:
        align: center
      q4_population.verified_population:
        align: center
      q5_screening.Total_screenings:
        align: center
      q5_screening.unique_screenings:
        align: center
      q8_screening.Total_screenings:
        align: center
      q8_screening.unique_drugs_count:
        align: center
      q8_screening.unique_screenings:
        align: center
      screening.citizen_village_name:
        align: center
      screening.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [screening.user_facility_type, population.citizen_district_name,
      screening.PHC, screening.HSC]
    dynamic_fields: [{category: table_calculation, expression: 'if(is_null(${screening.PHC}),"-",${screening.PHC})',
        label: PHC, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: phc, _type_hint: string}, {category: table_calculation,
        expression: 'if(is_null(${screening.HSC}),"-",${screening.HSC})', label: HSC,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: hsc, _type_hint: string}]
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
    row: 73
    col: 0
    width: 24
    height: 10
  - title: By Staff [MTM]
    name: By Staff [MTM]
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: looker_grid
    fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
      mtm_beneficiary.citizen_block_gid, mtm_beneficiary.user_facility_type, mtm_beneficiary.total_confirmed_MTM_beneficiary_DPH,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DMS, mtm_beneficiary.total_confirmed_MTM_beneficiary_DME,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_women,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_mid, mtm_beneficiary.PHC, mtm_beneficiary.HSC,
      mtm_beneficiary.citizen_village_name, mtm_beneficiary.citizen_village_gid]
    filters:
      mtm_beneficiary.PHC_HSC_not_null_Filter: '0'
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary_DPH desc]
    limit: 5000
    dynamic_fields: [{table_calculation: phc, label: PHC, expression: 'if(is_null(${mtm_beneficiary.PHC}),"-",${mtm_beneficiary.PHC})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: hsc, label: HSC, expression: 'if(is_null(${mtm_beneficiary.HSC}),"-",${mtm_beneficiary.HSC})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_district, label: Community
          District, expression: 'if(is_null(${mtm_beneficiary.citizen_district_name}),"-",${mtm_beneficiary.citizen_district_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_hud, label: Community Hud,
        expression: 'if(is_null(${mtm_beneficiary.citizen_hud_name}),"-",${mtm_beneficiary.citizen_hud_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_block, label: Community
          Block, expression: 'if(is_null(${mtm_beneficiary.citizen_block_name}),"-",${mtm_beneficiary.citizen_block_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_district_gid, label: Community
          District Gid, expression: 'if(is_null(${mtm_beneficiary.citizen_district_gid}),"-",to_string(${mtm_beneficiary.citizen_district_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_hud_gid, label: Community
          Hud Gid, expression: 'if(is_null(${mtm_beneficiary.citizen_hud_gid}),"-",to_string(${mtm_beneficiary.citizen_hud_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: community_block_gid, label: Community
          Block Gid, expression: 'if(is_null(${mtm_beneficiary.citizen_block_gid}),"-",to_string(${mtm_beneficiary.citizen_block_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", community_district, community_district_gid,
      community_hud, community_hud_gid, community_block, community_block_gid, mtm_beneficiary.citizen_village_name,
      mtm_beneficiary.citizen_village_gid, mtm_beneficiary.user_facility_type, phc,
      hsc, mtm_beneficiary.total_confirmed_MTM_beneficiary_DPH, mtm_beneficiary.total_confirmed_MTM_beneficiary_DMS,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DME, mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_women, mtm_beneficiary.total_confirmed_MTM_beneficiary_mid]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mtm_beneficiary.citizen_village_name: Community  Village  Name
      mtm_beneficiary.citizen_village_gid: Community Village Gid
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DPH:
        is_active: false
    series_text_format:
      phc:
        align: center
      hsc:
        align: center
      community_district:
        align: center
      community_hud:
        align: center
      community_block:
        align: center
      community_district_gid:
        align: center
      community_hud_gid:
        align: center
      community_block_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DPH:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DMS:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_DME:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_women:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_mid:
        align: center
      mtm_beneficiary.citizen_village_name:
        align: center
      mtm_beneficiary.citizen_village_gid:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [mtm_beneficiary.PHC, mtm_beneficiary.HSC, mtm_beneficiary.citizen_district_name,
      mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_block_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_gid]
    listen:
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Date: mtm_beneficiary.record_update_date
      Community Gender: mtm_beneficiary.citizen_gender
      HSC: mtm_beneficiary.HSC
      PHC: mtm_beneficiary.PHC
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility Type: mtm_beneficiary.user_facility_type
      Institution Role: mtm_beneficiary.role_name
      Institution Directorate: mtm_beneficiary.user_directorate
    row: 83
    col: 0
    width: 24
    height: 9
  - name: PHR [MTM]
    title: PHR [MTM]
    merged_queries:
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
        mtm_beneficiary.citizen_block_gid, mtm_beneficiary.citizen_village_name, mtm_beneficiary.citizen_village_gid,
        mtm_beneficiary.user_facility_type, mtm_beneficiary.PHC, mtm_beneficiary.HSC,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension]
      filters:
        mtm_beneficiary.PHC_HSC_not_null_Filter: '0'
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative desc]
      limit: 5000
      column_limit: 50
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Confirmed_Diabetes_mellitus, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Confirmed_Hypertension, screening.Controlled_Hypertension_and_Diabetes_Mellitus,
        screening.Controlled_Diabetes_Mellitus, screening.Controlled_Hypertension,
        screening.citizen_district_name, screening.citizen_hud_name, screening.citizen_block_name,
        screening.citizen_village_name]
      sorts: [screening.Confirmed_Diabetes_mellitus desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: mtm_beneficiary.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: mtm_beneficiary.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: mtm_beneficiary.citizen_block_name
      - field_name: screening.citizen_village_name
        source_field_name: mtm_beneficiary.citizen_village_name
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.citizen_block_name: Community Block
      mtm_beneficiary.citizen_block_gid: Community Block Gid
      mtm_beneficiary.citizen_village_name: Community  Village  Name
      mtm_beneficiary.citizen_village_gid: Community Village Gid
    series_column_widths: {}
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
      mtm_beneficiary.citizen_block_name:
        align: center
      mtm_beneficiary.citizen_block_gid:
        align: center
      mtm_beneficiary.user_facility_type:
        align: center
      phc:
        align: center
      hsc:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension:
        align: center
      screening.Confirmed_Diabetes_mellitus:
        align: center
      screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      screening.Confirmed_Hypertension:
        align: center
      mtm_beneficiary.citizen_village_name:
        align: center
      mtm_beneficiary.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [mtm_beneficiary.HSC, mtm_beneficiary.PHC]
    dynamic_fields: [{category: table_calculation, expression: 'if(is_null(${mtm_beneficiary.PHC}),"-",${mtm_beneficiary.PHC})',
        label: PHC, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: phc, _type_hint: string}, {category: table_calculation,
        expression: 'if(is_null(${mtm_beneficiary.HSC}),"-",${mtm_beneficiary.HSC})',
        label: HSC, value_format: !!null '', value_format_name: Default formatting,
        _kind_hint: dimension, table_calculation: hsc, _type_hint: string}]
    listen:
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Date: mtm_beneficiary.record_update_date
      Community Gender: mtm_beneficiary.citizen_gender
      HSC: mtm_beneficiary.HSC
      PHC: mtm_beneficiary.PHC
      Institution Owner: mtm_beneficiary.user_owner_name
      Institution Facility Type: mtm_beneficiary.user_facility_type
      Institution Role: mtm_beneficiary.role_name
      Institution Directorate: mtm_beneficiary.user_directorate
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 63
    col: 0
    width: 24
    height: 10
  - name: PHR [Health]
    title: PHR [Health]
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
        population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
        population.user_facility_type, population.PHC, population.HSC, population.Population_age_gt_18,
        population.verified_population, population.resident_status_death_no_html,
        population.resident_status_resident_no_html]
      filters:
        population.PHC_HSC_not_null_Filter: '0'
      sorts: [population.Population_age_gt_18 desc]
      limit: 5000
      dynamic_fields: [{table_calculation: resident_verified, label: "% Resident Verified",
          expression: "(${population.resident_status_resident_no_html}/${population.verified_population})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      hidden_fields: [population.user_facility_type]
      join_fields: []
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.Unique_Screening_above_18, screening.unique_screenings, screening.Total_screenings,
        screening.citizen_district_name, screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
        screening.DM_Percent, screening.Controlled_Hypertension, screening.Confirmed_Hypertension,
        screening.HT_Percent, screening.HTDM_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
        screening.Controlled_Hypertension_and_Diabetes_Mellitus, screening.citizen_district_gid,
        screening.citizen_block_gid, screening.citizen_hud_gid, screening.citizen_block_name,
        screening.citizen_hud_name, screening.user_facility_type]
      sorts: [screening.Unique_Screening_above_18 desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: population.citizen_district_name
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_block_gid
        source_field_name: population.citizen_block_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
      - field_name: screening.citizen_block_name
        source_field_name: population.citizen_block_name
      - field_name: screening.citizen_hud_name
        source_field_name: population.citizen_hud_name
      - field_name: screening.user_facility_type
        source_field_name: population.user_facility_type
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      phc, hsc, screening.unique_screenings, screening.Total_screenings, screening.Unique_Screening_above_18,
      population.Population_age_gt_18, population.verified_population, population.resident_status_death_no_html,
      population.resident_status_resident_no_html, resident_verified, of_screened_18,
      screening.Confirmed_Diabetes_mellitus, screening.Controlled_Diabetes_Mellitus,
      screening.DM_Percent, screening.Controlled_Hypertension, screening.Confirmed_Hypertension,
      screening.HT_Percent, screening.HTDM_Percent, screening.Confirmed_Hypertension_and_DiabetesMellitus,
      screening.Controlled_Hypertension_and_Diabetes_Mellitus]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.resident_status_death_no_html: Death Count
      population.resident_status_resident_no_html: Resident Count
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community  Village Gid
    series_column_widths:
      population.citizen_village_name: 200
      population.citizen_village_gid: 200
    series_cell_visualizations:
      population.Population_age_gt_18:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      phc:
        align: center
      hsc:
        align: center
      population.Population_age_gt_18:
        align: center
      population.verified_population:
        align: center
      population.resident_status_death_no_html:
        align: center
      population.resident_status_resident_no_html:
        align: center
      resident_verified:
        align: center
      of_screened_18:
        align: center
      screening.Unique_Screening_above_18:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      population.citizen_village_name: {}
      population.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Population>=18
        label_from_parameter:
        label_short: Population>=18
        map_layer:
        name: population.Population_age_gt_18
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Population>=18
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Population_age_gt_18
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=374"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_age
          condition: ">=18"
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Verified Population
        label_from_parameter:
        label_short: Verified Population
        map_layer:
        name: population.verified_population
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Verified Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.verified_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=437"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status
          condition: "-Null"
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Death Count no html
        label_from_parameter:
        label_short: Death Count no html
        map_layer:
        name: population.resident_status_death_no_html
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Death Count no html
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.resident_status_death_no_html
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=516"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status_concat
          condition: Death
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Resident Count no html
        label_from_parameter:
        label_short: Resident Count no html
        map_layer:
        name: population.resident_status_resident_no_html
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Resident Count no html
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.resident_status_resident_no_html
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=481"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_resident_status_concat
          condition: Resident
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: resident_verified
        label: "% Resident Verified"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Unique Screening Above 18
        label_from_parameter:
        label_short: Unique Screening Above 18
        map_layer:
        name: screening.Unique_Screening_above_18
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screening Above 18
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Unique_Screening_above_18
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=440"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.citizen_age
          condition: ">=18"
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=414"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=483"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: screening.Confirmed_Diabetes_mellitus
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Diabetes_mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=596"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: screening.Controlled_Diabetes_Mellitus
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=631"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Diabetes %
        label_from_parameter:
        label_short: Diabetes %
        map_layer:
        name: screening.DM_Percent
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0\%
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Diabetes %
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.DM_Percent
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=707"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: '100.00 * COALESCE(${Controlled_Diabetes_Mellitus} / NULLIF(${Confirmed_Diabetes_mellitus},
          0),0) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: screening.Controlled_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=643"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_ht_status
          condition: controlled
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: screening.Confirmed_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=607"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Hypertension %
        label_from_parameter:
        label_short: Hypertension %
        map_layer:
        name: screening.HT_Percent
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0\%
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Hypertension %
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.HT_Percent
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=716"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: '100.00 * COALESCE(${Controlled_Hypertension} / NULLIF(${Confirmed_Hypertension},
          0),0) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Both %
        label_from_parameter:
        label_short: Both %
        map_layer:
        name: screening.HTDM_Percent
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0\%
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Both %
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.HTDM_Percent
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=725"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: '100.00 * COALESCE(${Controlled_Hypertension_and_Diabetes_Mellitus} /
          NULLIF(${Confirmed_Hypertension_and_DiabetesMellitus}, 0),0) '
        sql_case:
        filters:
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Confirmed Both
        label_from_parameter:
        label_short: Confirmed Both
        map_layer:
        name: screening.Confirmed_Hypertension_and_DiabetesMellitus
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: count_distinct
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=618"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
        - field: screening.citizen_dm_status
          condition: "%Known DM%"
        times_used: 0
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Screening Controlled Both
        label_from_parameter:
        label_short: Controlled Both
        map_layer:
        name: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Controlled Both
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=655"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_control_dm_status
          condition: controlled
        - field: screening.citizen_dm_status
          condition: DM under control
        - field: screening.citizen_control_ht_status
          condition: controlled
        times_used: 0
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=87"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=81"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=117"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=111"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: population.citizen_block_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: population.citizen_block_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population Citizen Village Name
        label_from_parameter:
        label_short: Citizen Village Name
        map_layer:
        name: population.citizen_village_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=170"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_village_name "
        sql_case:
        filters:
        times_used: 0
      - align: right
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Population Citizen Village Gid
        label_from_parameter:
        label_short: Citizen Village Gid
        map_layer:
        name: population.citizen_village_gid
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: '0'
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=164"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_village_gid "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population User Facility Type
        label_from_parameter:
        label_short: User Facility Type
        map_layer:
        name: population.user_facility_type
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: User Facility Type
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.user_facility_type
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=235"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.user_facility_type "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population PHC
        label_from_parameter:
        label_short: PHC
        map_layer:
        name: population.PHC
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: PHC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.PHC
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=36"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.user_facility_level = \"PHC\" THEN ${TABLE}.user_facility_type\n\
          \        ELSE NULL\n        END "
        sql_case:
        filters:
        times_used: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: ''
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Population HSC
        label_from_parameter:
        label_short: HSC
        map_layer:
        name: population.HSC
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: HSC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.HSC
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=45"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.user_facility_level = \"HSC\" THEN ${TABLE}.user_facility_type\n\
          \        ELSE NULL\n        END "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: "% of Screened (18+)"
        name: of_screened_18
        expression: "(${screening.Unique_Screening_above_18}/${population.Population_age_gt_18})*100"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0.00"
        is_numeric: true
      - label: PHC
        name: phc
        expression: if(is_null(${population.PHC}),"-",${population.PHC})
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
      - label: HSC
        name: hsc
        expression: if(is_null(${population.HSC}),"-",${population.HSC})
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
      pivots: []
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [population.user_facility_type, population.PHC, population.HSC]
    dynamic_fields: [{category: table_calculation, expression: "(${screening.Unique_Screening_above_18}/${population.Population_age_gt_18})*100",
        label: "% of Screened (18+)", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: of_screened_18, _type_hint: number},
      {category: table_calculation, expression: 'if(is_null(${population.PHC}),"-",${population.PHC})',
        label: PHC, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: phc, _type_hint: string}, {category: table_calculation,
        expression: 'if(is_null(${population.HSC}),"-",${population.HSC})', label: HSC,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: hsc, _type_hint: string}]
    listen:
    - Community District: population.citizen_district_name
      Community Hud: population.citizen_hud_name
      Community Block: population.citizen_block_name
      Community Gender: population.citizen_gender
      Community Age: population.citizen_age
      HSC: population.HSC
      PHC: population.PHC
      Community Block Type: population.citizen_block_type
      Institution Owner: population.user_owner
      Institution Facility Type: population.user_facility_type
      Institution Role: population.user_role
      Institution Directorate: population.user_directorate
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 56
    col: 0
    width: 24
    height: 7
  - name: PBS 10 conditions screening
    title: PBS 10 conditions screening
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.Total_screenings, screening.citizen_diagnosis_name]
      filters:
        screening.citizen_diagnosis_name: Hypertension (BP),Diabetes (Sugar),Tuberculosis,Oral
          Cancer Screening,Breast Cancer Screening,Cervical Cancer Screening,Chronic
          Kidney Disease,CAPD (Ambulatory Dialysis) bags,Mental followup,Palliative
          Care,Physiotheraphy Care
      limit: 5000
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_cell_visualizations:
        screening.Unique_Screening:
          is_active: false
      defaults_version: 1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      screening.Unique_Screening: No. of Individuals Screened
      diseases.refferal_count: Number of Individuals Referred
      screening.citizen_diagnosis_name: Diagnosis
    series_column_widths:
      screening.Unique_Screening: 230
      screening.Total_screenings: 200
      diseases.refferal_count: 230
      screening.citizen_diagnosis_name: 200
    series_cell_visualizations:
      screening.Unique_Screening:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      diseases.refferal_count:
        align: center
      screening.Unique_Screening:
        align: center
      screening.citizen_diagnosis_name:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f9fff2"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_bar
    series_types: {}
    listen:
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Date: screening.screened_date
      Community Gender: screening.citizen_gender
      Community Age: screening.citizen_age
      HSC: screening.HSC
      PHC: screening.PHC
      Community Block Type: screening.citizen_block_type
      Institution Owner: screening.user_owner_name
      Institution Facility Type: screening.user_facility_type
      Service Name: screening.citizen_service_name
      Institution Role: screening.role_name
      Institution Directorate: screening.user_directorate
    row: 31
    col: 16
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <center>
      <img src="https://devadmin.tnphr.in/assets/images/DPHLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/NHMLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://devadmin.tnphr.in/assets/images/TamilNadu_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/UHC_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/MTM_logo.png" width="90" height="90" /></center>
      <br>
      <center>PHR - Use to understand the count of Population, Screening, Drugs issued and MTM Beneficiaries in TN</center>
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Community District
    title: Community District
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Hud, Community Block, Community Block Type]
    field: screening.citizen_district_name
  - name: Community Hud
    title: Community Hud
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Block, Community Block Type]
    field: screening.citizen_hud_name
  - name: Community Block
    title: Community Block
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Hud, Community Block Type]
    field: screening.citizen_block_name
  - name: Community Block Type
    title: Community Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: [Community District, Community Hud, Community Block]
    field: population.citizen_block_type
  - name: Community Age
    title: Community Age
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.citizen_age
  - name: Community Gender
    title: Community Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.citizen_gender
  - name: Institution Directorate
    title: Institution Directorate
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Owner, Institution Facility Type, Institution
        Role]
    field: screening.user_directorate
  - name: Institution Owner
    title: Institution Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Facility Type, Institution
        Role]
    field: screening.user_owner_name
  - name: Institution Facility Type
    title: Institution Facility Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Owner, Institution Role]
    field: screening.user_facility_type
  - name: Institution Role
    title: Institution Role
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Owner, Institution Facility
        Type]
    field: screening.role_name
  - name: Service Name
    title: Service Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.citizen_service_name
  - name: HSC
    title: HSC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Owner, Institution Facility
        Type, Institution Role]
    field: screening.HSC
  - name: PHC
    title: PHC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Directorate, Institution Owner, Institution Facility
        Type, Institution Role]
    field: screening.PHC
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.screened_date
