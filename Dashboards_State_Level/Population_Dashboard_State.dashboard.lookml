- dashboard: population_dashboard_v1_0_4
  title: Population Dashboard v1.0.4
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Verified Population
    name: Verified Population
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: Resident,resident
    sorts: [family_member_master.count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: 'sum(${family_member_master.count})', value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    hidden_fields: [family_member_master.gender, family_member_master.count]
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 6
    width: 4
    height: 3
  - title: Break-up on Gender
    name: Break-up on Gender
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: Resident,resident
    limit: 5000
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_colors: {}
    series_labels:
      family_member_master.Other_Population: Others
      family_member_master.count: Total Population
    custom_color_enabled: true
    custom_color: "#EA4335"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    listen:
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 12
    col: 4
    width: 4
    height: 6
  - title: Total Families
    name: Total Families
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Family_count]
    filters:
      family_member_master.resident_status: Resident,resident
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 6
    col: 6
    width: 4
    height: 3
  - title: Family Size
    name: Family Size
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_master.family_members_avg]
    filters:
      family_master.reside_status: Permanent,Temporary
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 9
    col: 0
    width: 4
    height: 3
  - title: Sex Ratio
    name: Sex Ratio
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [family_member_master.Male_Population, family_member_master.Female_Population]
    filters:
      family_member_master.resident_status: Resident,resident
    limit: 500
    dynamic_fields: [{table_calculation: sex_ratio, label: Sex Ratio, expression: "(${family_member_master.Male_Population}/${family_member_master.Female_Population})*1000",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population]
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 9
    col: 4
    width: 4
    height: 3
  - title: Child health Target
    name: Child health Target
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [family_member_master.Child_Health, family_member_master.Male_Population,
      family_member_master.Female_Population, family_member_master.Other_Population]
    filters:
      family_member_master.Child_Health: "-Below 0,-13 or Above"
      family_member_master.resident_status: Resident,resident
    sorts: [family_member_master.Child_Health]
    limit: 500
    dynamic_fields: [{table_calculation: population, label: Population, expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    series_cell_visualizations:
      population:
        is_active: true
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
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    listen:
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 9
    col: 8
    width: 7
    height: 3
  - title: School Health Target
    name: School Health Target
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [family_member_master.School_Health_Target, family_member_master.Male_Population,
      family_member_master.Female_Population, family_member_master.Other_Population]
    filters:
      family_member_master.School_Health_Target: "-20 or Above,-Undefined"
      family_member_master.resident_status: Resident,resident
    sorts: [family_member_master.School_Health_Target]
    limit: 500
    dynamic_fields: [{table_calculation: total_population, label: Total Population,
        expression: "${family_member_master.Female_Population}+${family_member_master.Male_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    series_cell_visualizations:
      population:
        is_active: true
      total_population:
        is_active: true
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 12
    col: 15
    width: 8
    height: 6
  - title: Population 0-100 Target
    name: Population 0-100 Target
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [family_member_master.age_tier_1_to_100, family_member_master.Male_Population,
      family_member_master.Female_Population, family_member_master.Other_Population,
      family_member_master.Population_WithoutDOB]
    filters:
      family_member_master.age_tier_1_to_100: "-Undefined,-Below 0"
      family_member_master.resident_status: Resident,resident
    sorts: [family_member_master.age_tier_1_to_100]
    limit: 500
    dynamic_fields: [{table_calculation: population, label: Population, expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: percentage_of_dob_with_null, label: Percentage of DOB with
          Null, expression: "(${family_member_master.Population_WithoutDOB}/${population})*100",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      percentage_of_dob_with_null: line
    series_point_styles:
      family_member_master.Population_WithoutDOB: auto
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
    series_cell_visualizations:
      population:
        is_active: true
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, percentage_of_dob_with_null]
    defaults_version: 1
    column_order: ["$$$_row_numbers_$$$", family_member_master.age_tier_1_to_100,
      population, family_member_master.Population_WithoutDOB, percentage_of_dob_with_null]
    show_null_points: true
    interpolation: linear
    listen:
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 15
    width: 8
    height: 9
  - title: MTM Target
    name: MTM Target
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [family_member_master.MTM_Target, family_member_master.Male_Population,
      family_member_master.Female_Population, family_member_master.Other_Population]
    filters:
      family_member_master.resident_status: Resident,resident
      family_member_master.MTM_Target: "-Below 18,-Undefined"
    sorts: [family_member_master.MTM_Target]
    limit: 500
    dynamic_fields: [{table_calculation: population, label: Population, expression: "${family_member_master.Male_Population}+${family_member_master.Female_Population}+${family_member_master.Other_Population}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    series_cell_visualizations:
      population:
        is_active: true
    hidden_fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 12
    col: 8
    width: 7
    height: 6
  - title: Resident status - Null
    name: Resident status - Null
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.resident_status: 'NULL'
    limit: 500
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
    y_axes: [{label: '', orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields:
    listen:
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 12
    col: 0
    width: 4
    height: 6
  - title: Eligible Couple Target
    name: Eligible Couple Target
    model: tnphr_state_level
    explore: family_master
    type: looker_column
    fields: [family_member_master.Eligible_Couple, health_history.eligible_couple_details_marriage_age,
      family_member_master.Male_Population, family_member_master.Female_Population]
    filters:
      family_member_master.Eligible_Couple: 15 to 49
      health_history.eligible_couple_details_marriage_age: "-NULL"
    sorts: [health_history.eligible_couple_details_marriage_age]
    limit: 5000
    dynamic_fields: [{table_calculation: male_population_married, label: Male Population
          - Married, expression: 'sum(${family_member_master.Male_Population})', value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: female_population_married,
        label: Female Population - Married, expression: 'sum(${family_member_master.Female_Population})',
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
    limit_displayed_rows: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    table_theme: white
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [health_history.eligible_couple_details_marriage_age, family_member_master.Male_Population,
      family_member_master.Female_Population]
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    listen:
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 10
    width: 5
    height: 6
  - title: Total Population
    name: Total Population
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
    limit: 5000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    hidden_fields: []
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
      Toggle Role: health_screening.role_toggle
      Directorate Name: facility_directorate_master.directorate_name
      HUDs: family_master.hud_name
      Districts: family_master.district_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 0
    width: 6
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/DPHLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/NHMLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://devadmin.tnphr.in/assets/images/TamilNadu_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/UHC_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/MTM_logo.png" width="90" height="90" />
    row: 0
    col: 0
    width: 23
    height: 3
  filters:
  - name: Districts
    title: Districts
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.district_name
  - name: HUDs
    title: HUDs
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.hud_name
  - name: Blocks
    title: Blocks
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.block_name
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.last_update_date
  - name: Toggle Role
    title: Toggle Role
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: health_screening.role_toggle
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
      options: []
    model: tnphr_state_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
