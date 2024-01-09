- dashboard: population_kpi_v2_0_1
  title: Population KPI v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: vwERU6DvPOkGXiZpyb8X4M
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 4
    col: 0
    width: 8
    height: 5
  - title: Population  verified
    name: Population  verified
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.verified_population, population.total_population]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'round(${population.verified_population}/${population.total_population}*100,2)',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: of_total_population, label: of Total
          Population, expression: 'concat(${calculation_1},"%")', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [population.total_population, calculation_1]
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 4
    col: 8
    width: 8
    height: 5
  - title: Population  Non Verified
    name: Population  Non Verified
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.total_population, population.verified_population]
    limit: 500
    dynamic_fields: [{table_calculation: population_non_verified, label: Population  Non
          Verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: calculation_2, label: Calculation 2, expression: 'round(${population_non_verified}/${population.total_population}*100,2)',
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: of_total_population, label: of Total
          Population, expression: 'concat(${calculation_2},"%")', value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [population.verified_population, calculation_2, population.total_population]
    listen:
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 4
    col: 16
    width: 8
    height: 5
  - title: Resident Population
    name: Resident Population
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.resident_status_resident, population.verified_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Verified Population
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#12B5CB",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 9
    col: 0
    width: 5
    height: 5
  - title: Migrated
    name: Migrated
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.resident_status_migrated, population.verified_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#faba23",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: []
    listen:
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 9
    col: 5
    width: 5
    height: 5
  - title: Non Traceable
    name: Non Traceable
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.resident_status_non_traceable, population.verified_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#b06bf5",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 9
    col: 10
    width: 5
    height: 5
  - title: Duplicate
    name: Duplicate
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.resident_status_duplicate, population.verified_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ff7c54",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 9
    col: 15
    width: 5
    height: 5
  - title: Death
    name: Death
    model: tnphr-prod-kpi
    explore: population
    type: single_value
    fields: [population.resident_status_death, population.verified_population]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c3ccd1",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Date: population.citizen_created_date
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 9
    col: 20
    width: 4
    height: 5
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
      <center>Population KPI - Use to understand the resident statuses of the population in TN</center>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: District Wise
    name: District Wise
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.verified_population, population.total_population, population.Population_given_consent,
      population.Population_allocated_to_street, population.resident_status_resident,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.resident_status_death, population.citizen_district_name,
      population.citizen_district_gid, population.Population_allocated_to_street_Unallocated,
      population.Population_allocated_to_street_minus_Unallocated]
    sorts: [population.verified_population desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: population_non_verified, label: Population  Non
          verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.total_population, population.verified_population, population_non_verified,
      population.Population_given_consent, population.Population_allocated_to_street,
      population.Population_allocated_to_street_Unallocated, population.Population_allocated_to_street_minus_Unallocated,
      population.resident_status_resident, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.resident_status_death]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.Population_allocated_to_street: Population mapped to Streets
      population.Population_allocated_to_street_Unallocated: Population mapped to
        unallocated Streets
      population.Population_allocated_to_street_minus_Unallocated: Population mapped
        to allocated Streets
    series_column_widths:
      population.Population_allocated_to_street_Unallocated: 200
      population.Population_allocated_to_street_minus_Unallocated: 200
    series_cell_visualizations:
      population.verified_population:
        is_active: false
    series_text_format:
      population.verified_population:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.total_population:
        align: center
      population.Population_given_consent:
        align: center
      population.Population_allocated_to_street:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.verified_population_in_past_4_weeks:
        align: center
      population.resident_status_death:
        align: center
      population_non_verified:
        align: center
      population.Population_allocated_to_street_Unallocated:
        align: center
      population.Population_allocated_to_street_minus_Unallocated:
        align: center
    header_font_color: "#f6f8ff"
    header_background_color: "#1A73E8"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      Date: population.citizen_created_date
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 14
    col: 0
    width: 24
    height: 9
  - title: 'Hud Wise '
    name: 'Hud Wise '
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.verified_population, population.total_population, population.Population_given_consent,
      population.Population_allocated_to_street, population.resident_status_resident,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.resident_status_death, population.citizen_hud_name,
      population.citizen_hud_gid, population.citizen_district_name, population.citizen_district_gid,
      population.Population_allocated_to_street_Unallocated, population.Population_allocated_to_street_minus_Unallocated]
    sorts: [population.verified_population desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: population_non_verified, label: Population  Non
          verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
      population.verified_population, population_non_verified, population.Population_given_consent,
      population.Population_allocated_to_street, population.Population_allocated_to_street_Unallocated,
      population.Population_allocated_to_street_minus_Unallocated, population.resident_status_resident,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.resident_status_death]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.Population_allocated_to_street: Population mapped to Streets
      population.Population_allocated_to_street_Unallocated: Population mapped to
        unallocated Streets
      population.Population_allocated_to_street_minus_Unallocated: Population mapped
        to allocated Streets
    series_column_widths:
      population.Population_allocated_to_street_Unallocated: 200
      population.Population_allocated_to_street_minus_Unallocated: 200
    series_cell_visualizations:
      population.verified_population:
        is_active: false
    series_text_format:
      population.verified_population:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.total_population:
        align: center
      population.Population_given_consent:
        align: center
      population.Population_allocated_to_street:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.verified_population_in_past_4_weeks:
        align: center
      population.resident_status_death:
        align: center
      population_non_verified:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.Population_allocated_to_street_Unallocated:
        align: center
      population.Population_allocated_to_street_minus_Unallocated:
        align: center
    header_font_color: "#f6f8ff"
    header_background_color: "#1A73E8"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      Date: population.citizen_created_date
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 23
    col: 0
    width: 24
    height: 10
  - title: 'Block Wise '
    name: 'Block Wise '
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.verified_population, population.total_population, population.Population_given_consent,
      population.Population_allocated_to_street, population.resident_status_resident,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.resident_status_death, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.Population_allocated_to_street_Unallocated,
      population.Population_allocated_to_street_minus_Unallocated]
    sorts: [population.verified_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: population_non_verified, label: Population  Non
          verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.total_population, population.verified_population,
      population_non_verified, population.Population_given_consent, population.Population_allocated_to_street,
      population.Population_allocated_to_street_Unallocated, population.Population_allocated_to_street_minus_Unallocated,
      population.resident_status_resident, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.resident_status_death]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      population.citizen_hud_name: Community  Hud
      population.citizen_hud_gid: Community Hud Gid
      population.Population_allocated_to_street: Population mapped to Streets
      population.Population_allocated_to_street_Unallocated: Population mapped to
        unallocated Streets
      population.Population_allocated_to_street_minus_Unallocated: Population mapped
        to allocated Streets
    series_cell_visualizations:
      population.verified_population:
        is_active: false
    series_text_format:
      population.verified_population:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.total_population:
        align: center
      population.Population_given_consent:
        align: center
      population.Population_allocated_to_street:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.verified_population_in_past_4_weeks:
        align: center
      population.resident_status_death:
        align: center
      population_non_verified:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.Population_allocated_to_street_Unallocated:
        align: center
      population.Population_allocated_to_street_minus_Unallocated:
        align: center
    header_font_color: "#f6f8ff"
    header_background_color: "#1A73E8"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      population.citizen_district_name: left
    series_column_widths:
      population.Population_allocated_to_street_Unallocated: 200
      population.Population_allocated_to_street_minus_Unallocated: 200
    listen:
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      Date: population.citizen_created_date
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 33
    col: 0
    width: 24
    height: 11
  - title: 'Village Wise  '
    name: 'Village Wise  '
    model: tnphr-prod-kpi
    explore: population
    type: looker_grid
    fields: [population.verified_population, population.total_population, population.Population_given_consent,
      population.Population_allocated_to_street, population.resident_status_resident,
      population.resident_status_non_traceable, population.resident_status_migrated,
      population.resident_status_duplicate, population.resident_status_death, population.citizen_village_name,
      population.citizen_village_gid, population.citizen_district_name, population.citizen_hud_name,
      population.citizen_block_name, population.citizen_village_type, population.citizen_district_gid,
      population.citizen_hud_gid, population.citizen_block_gid, population.Population_allocated_to_street_Unallocated,
      population.Population_allocated_to_street_minus_Unallocated]
    sorts: [population.citizen_village_gid desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: population_non_verified, label: Population  Non
          verified, expression: "${population.total_population}-${population.verified_population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.citizen_village_type, population.total_population, population.verified_population,
      population_non_verified, population.Population_given_consent, population.Population_allocated_to_street,
      population.Population_allocated_to_street_Unallocated, population.Population_allocated_to_street_minus_Unallocated,
      population.resident_status_resident, population.resident_status_non_traceable,
      population.resident_status_migrated, population.resident_status_duplicate, population.resident_status_death]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
      population.citizen_district_name: Community District
      population.citizen_hud_name: Community HUD
      population.citizen_block_name: Community Block
      population.citizen_village_type: Community Village type
      population.citizen_hud_gid: Community Hud Gid
      population.citizen_district_gid: Community District Gid
      population.citizen_block_gid: Community Block Gid
      population.Population_allocated_to_street: Population mapped to Streets
      population.Population_allocated_to_street_Unallocated: Population mapped to
        unallocated Streets
      population.Population_allocated_to_street_minus_Unallocated: Population mapped
        to allocated Streets
    series_column_widths:
      population.Population_allocated_to_street_Unallocated: 200
      population.Population_allocated_to_street_minus_Unallocated: 200
    series_cell_visualizations:
      population.verified_population:
        is_active: false
    series_text_format:
      population.verified_population:
        align: center
      population.citizen_district_gid:
        align: center
      population.citizen_district_name:
        align: center
      population.total_population:
        align: center
      population.Population_given_consent:
        align: center
      population.Population_allocated_to_street:
        align: center
      population.resident_status_resident:
        align: center
      population.resident_status_non_traceable:
        align: center
      population.resident_status_migrated:
        align: center
      population.verified_population_in_past_4_weeks:
        align: center
      population.resident_status_death:
        align: center
      population_non_verified:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.Population_allocated_to_street_Unallocated:
        align: center
      population.Population_allocated_to_street_minus_Unallocated:
        align: center
    header_font_color: "#f6f8ff"
    header_background_color: "#1A73E8"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
      Community Hud: population.citizen_hud_name
      " Community Block  ": population.citizen_block_name
      Date: population.citizen_created_date
      " Community District ": population.citizen_district_name
      Community Village: population.citizen_village_name
      Institution Role: population.user_role
      Community Facility: population.citizen_facility_name
      Institution Facility: population.user_facility_name
    row: 44
    col: 0
    width: 24
    height: 9
  filters:
  - name: " Community District "
    title: " Community District "
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: [" Community Block  ", Community Hud, Community Village, Community
        Facility]
    field: population.citizen_district_name
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
    explore: population
    listens_to_filters: [" Community Block  ", Community Village, Community Facility]
    field: population.citizen_hud_name
  - name: " Community Block  "
    title: " Community Block  "
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: [Community Hud, Community Village, Community Facility]
    field: population.citizen_block_name
  - name: Community Village
    title: Community Village
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: [" Community Block  ", Community Hud, Community Facility]
    field: population.citizen_village_name
  - name: Community Facility
    title: Community Facility
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: []
    field: population.citizen_facility_name
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
    explore: population
    listens_to_filters: []
    field: population.user_role
  - name: Institution Facility
    title: Institution Facility
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: population
    listens_to_filters: []
    field: population.user_facility_name
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
    explore: population
    listens_to_filters: []
    field: population.citizen_created_date
