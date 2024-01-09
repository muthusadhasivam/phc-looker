- dashboard: population_dashboard_prod
  title: Population Dashboard v1.0.6 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TnCJ7B62Hr7eSluYpo8nmd
  elements:
  - title: Verified Population
    name: Verified Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: Resident,resident,Dead,Death,Duplicate,Migrant,Migrated
        out,Non traceable,Non-traceable,"migrated_out",":migrated_out OR dead OR non_traceable
        OR resident"
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
    custom_color: "#050101"
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
    note_state: collapsed
    note_display: hover
    note_text: Count of members who are verified ( i.e., the members having status
      as Resident, Migrated, Dead, Duplicated, etc., )
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 6
    col: 0
    width: 5
    height: 3
  - title: Residential Population Break-up on Gender
    name: Residential Population Break-up on Gender
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.resident_status: Resident,resident
    limit: 5000
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"
          "', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
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
    note_state: collapsed
    note_display: hover
    note_text: "This includes gender wise total number of members whose residential\
      \ status is 'resident' or 'Resident'.\n\n"
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 3
    col: 5
    width: 7
    height: 6
  - title: Total Families
    name: Total Families
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Total number of Families
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 9
    col: 0
    width: 5
    height: 3
  - title: Family Size
    name: Family Size
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Average size of the families
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 12
    col: 0
    width: 5
    height: 3
  - title: Sex Ratio
    name: Sex Ratio
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Total number of Males per 1000 Females
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 15
    col: 0
    width: 5
    height: 4
  - title: Child health Target
    name: Child health Target
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Total population of children across age tier 1 to 12
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 9
    col: 5
    width: 13
    height: 3
  - title: School Health Target
    name: School Health Target
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Break Up of child population across age tier 1 to 19 to target the
      school going children
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 15
    col: 5
    width: 13
    height: 4
  - title: Resident Population 0-100 Target
    name: Resident Population 0-100 Target
    model: tnphr
    explore: family_member_master
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
    x_axis_label: Age Tier
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
    note_state: collapsed
    note_display: hover
    note_text: Total number of members vs members without date of birth across age
      tier 1 to 100
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 9
    col: 18
    width: 6
    height: 10
  - title: MTM Target
    name: MTM Target
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [family_member_master.MTM_Target, family_member_master.Male_Population,
      family_member_master.Female_Population, family_member_master.Other_Population]
    filters:
      family_member_master.resident_status: Resident,resident
      family_member_master.MTM_Target: "-Below 18,-Undefined"
    sorts: [family_member_master.MTM_Target]
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
    note_state: collapsed
    note_display: hover
    note_text: Total population of MTM Beneficiaries across age tier 18 and above
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 12
    col: 5
    width: 13
    height: 3
  - title: Resident status - Null
    name: Resident status - Null
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population]
    filters:
      family_member_master.resident_status: 'NULL'
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"
          "', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    defaults_version: 1
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: Count of members who are not verified ( i.e., the members not having
      any status as Resident, Migrated, Dead, Duplicated, etc., ) by gender wise
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 3
    col: 18
    width: 6
    height: 6
  - title: Eligible Couple Target
    name: Eligible Couple Target
    model: tnphr
    explore: family_member_master
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Eligible Couple Age
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    series_types: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [health_history.eligible_couple_details_marriage_age, family_member_master.Male_Population,
      family_member_master.Female_Population]
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: Total number of married males/females between the age bracket of 15
      to 49
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 3
    col: 12
    width: 6
    height: 6
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
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
    note_state: collapsed
    note_display: hover
    note_text: Total count of members
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 3
    col: 0
    width: 5
    height: 3
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
  - title: NCD Age group
    name: NCD Age group
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.age_interval2, health_screening.Total_population]
    filters:
      family_member_master.gender: "-NULL"
      family_member_master.age_interval2: "-Below 18"
      drugs_and_services.health_screening_last_update_date: ''
      health_screening.role_toggle: ''
    sorts: [family_member_master.age_interval2]
    limit: 5000
    column_limit: 50
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.Unique_Screening,
            id: health_screening.Unique_Screening, name: Unique Screening}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 0,
        type: linear}]
    x_axis_label: Age Tier
    font_size: '12'
    series_types: {}
    series_colors:
      health_screening.Unique_Screening: "#CCC54B"
    series_labels: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 40
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
    hidden_fields:
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: Total number of children across age tier 18-29 and 30+
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 23
    col: 18
    width: 6
    height: 8
  - title: Families Added
    name: Families Added
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      family_member_master.resident_status: Resident,resident
      family_member_master.village_name: ''
      health_screening.toggle_IR: ''
      drugs_and_services.health_screening_last_update_date: ''
      health_screening.role_toggle: ''
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
    custom_color: "#1A73E8"
    single_value_title: Members Added
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: New members added
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 27
    col: 12
    width: 6
    height: 4
  - title: Families Added
    name: Families Added (2)
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count]
    filters:
      family_master.reside_status: Permanent
      facility_registry.last_update_date: ''
      family_master.village_name: ''
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
    custom_color: "#1A73E8"
    single_value_title: Families Added
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      family_master.family_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: New families added
    listen:
      Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 19
    col: 18
    width: 6
    height: 4
  - title: No of Individuals not received any services
    name: No of Individuals not received any services
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.member_count]
    filters:
      health_screening.last_update_date: ''
      health_screening.role_toggle: ''
      health_screening.services_name: 'NULL'
    limit: 5000
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
    custom_color: "#1A73E8"
    single_value_title: Members with undelivered services
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members who have not received any services
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 0
    width: 6
    height: 4
  - title: No of Families not received service atleast once
    name: No of Families not received service atleast once
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_master.family_count]
    filters:
      health_screening.last_update_date: ''
      health_screening.role_toggle: ''
      health_screening.services_name: 'NULL'
    limit: 5000
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
    custom_color: "#1A73E8"
    single_value_title: Families with undelivered services
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of families who have not received any services
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 12
    width: 6
    height: 4
  - title: No of Streets not received any services
    name: No of Streets not received any services
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.street_count]
    filters:
      health_screening.services_name: 'NULL'
      health_screening.last_update_date: ''
      health_screening.role_toggle: ''
    limit: 5000
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
    custom_color: "#1A73E8"
    single_value_title: Streets with undelivered services
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of streets where no services are delivered
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 19
    col: 6
    width: 6
    height: 4
  - title: No of Individuals linked with Aadhar
    name: No of Individuals linked with Aadhar
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Aadhaar_linked_members]
    filters:
      drugs_and_services.health_screening_last_update_date: ''
      health_screening.role_toggle: ''
    limit: 5000
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
    custom_color: "#E52592"
    single_value_title: ''
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
    note_state: collapsed
    note_display: hover
    note_text: This includes the number of members who has linked their Aadhaar numbers
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 23
    col: 0
    width: 6
    height: 4
  - title: No of Individuals with UDID
    name: No of Individuals with UDID
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.UDID_linked_members]
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
    custom_color: "#9334E6"
    single_value_title: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Total number of members with UDID
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 23
    col: 6
    width: 6
    height: 4
  - title: No of Disability Beneficiary
    name: No of Disability Beneficiary
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.Disability_beneficiaries]
    filters:
      health_screening.role_toggle: ''
    limit: 5000
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
    custom_color: "#0f18e6"
    single_value_title: ''
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
    note_state: collapsed
    note_display: hover
    note_text: 'Total number of members with disability who have availed MTM services '
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 27
    col: 0
    width: 6
    height: 4
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.district_name, health_screening.Total_population,
        family_member_master.Aadhaar_linked_members, health_history.UDID_linked_members,
        health_history.Disability_beneficiaries]
      filters:
        family_member_master.gender: "-NULL"
        family_member_master.district_name: ''
        family_member_master.block_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
      sorts: [health_screening.Total_population desc]
      limit: 500
      column_limit: 50
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.Female_Population, family_member_master.Male_Population,
        family_member_master.Other_Population, family_member_master.district_name,
        family_member_master.Family_count]
      filters:
        family_member_master.resident_status: Resident,resident
      sorts: [family_member_master.Female_Population desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.district_name]
      filters:
        family_member_master.resident_status: '":migrated_out OR dead OR non_traceable
          OR resident",Dead,Death,Duplicate,Migrant,Migrated out,Non traceable,Non-traceable,Resident,resident'
      sorts: [health_screening.Total_population desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.district_name]
      filters:
        family_member_master.resident_status: Resident,resident
        family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.member_count, family_member_master.district_name,
        family_master.family_count, health_screening.street_count]
      filters:
        health_screening.services_name: 'NULL'
      sorts: [family_member_master.member_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_master
      type: table
      fields: [family_master.family_count, family_master.district_name]
      filters:
        family_master.reside_status: Permanent
      sorts: [family_master.family_count desc]
      limit: 500
      join_fields:
      - field_name: family_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Total_population,
      family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.Aadhaar_linked_members,
      health_history.UDID_linked_members, health_history.Disability_beneficiaries,
      family_member_master.Family_count, q2_health_screening.Total_population, q3_health_screening.Total_population,
      q5_family_master.family_count, family_master.family_count, family_member_master.member_count,
      health_screening.street_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.Female_Population: Female residential population
      family_member_master.Male_Population: Male residential population
      family_member_master.Other_Population: Other residential population
      family_member_master.Family_count: Total Families
      q2_health_screening.Total_population: Verified Population
      health_screening.Total_population: Total Population
      q3_health_screening.Total_population: Members added
      family_master.family_count: Families with undelivered services
      family_member_master.member_count: Members with undelivered services
      health_screening.street_count: Streets with undelivered services
      q5_family_master.family_count: Families Added
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#323cff"
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: family_member_master.Aadhaar_linked_members
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Aadhaar_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=582"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: family_member_master.aadhaar_number
          condition: ">0"
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
        label: Health History UDID Linked Members
        label_from_parameter:
        label_short: UDID Linked Members
        map_layer:
        name: health_history.UDID_linked_members
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: UDID Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.UDID_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=770"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.UDID
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
        label: Health History Disability Beneficiaries
        label_from_parameter:
        label_short: Disability Beneficiaries
        map_layer:
        name: health_history.Disability_beneficiaries
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Disability Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.Disability_beneficiaries
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=778"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.disability
          condition: 'Yes'
        - field: health_history.mtm_beneficiary_avail_service
          condition: "%yes%"
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
        label: Family Member Master Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: family_member_master.Female_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Female_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=474"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Female
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
        label: Family Member Master Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: family_member_master.Male_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Male_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=459"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  ) '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Male
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
        label: Family Member Master Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: family_member_master.Other_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Other_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=482"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Other,Transgender
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
        label: Family Member Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_member_master.Family_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=571"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.family_id  "
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q2_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: family_member_master.member_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=652"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
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
        label: Family  Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_master.family_count
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
        view: family_master
        view_label: Family  Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1864"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.street_id}  "
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
        label: Family Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: q5_family_master.family_count
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
        view: family_master
        view_label: Family Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Family Member Master District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: family_member_master.district_name
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.district_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=98"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.district_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 31
    col: 0
    width: 24
    height: 7
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Total_population, family_member_master.Aadhaar_linked_members,
        health_history.UDID_linked_members, health_history.Disability_beneficiaries,
        family_member_master.hud_name]
      filters:
        family_member_master.gender: "-NULL"
        family_member_master.district_name: ''
        family_member_master.block_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
      sorts: [health_screening.Total_population desc]
      limit: 5000
      column_limit: 50
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.Female_Population, family_member_master.Male_Population,
        family_member_master.Other_Population, family_member_master.Family_count,
        family_member_master.hud_name]
      filters:
        family_member_master.resident_status: Resident,resident
      sorts: [family_member_master.Female_Population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.hud_name]
      filters:
        family_member_master.resident_status: '":migrated_out OR dead OR non_traceable
          OR resident",Dead,Death,Duplicate,Migrant,Migrated out,Non traceable,Non-traceable,Resident,resident'
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.hud_name]
      filters:
        family_member_master.resident_status: Resident,resident
        family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.member_count, family_master.family_count, health_screening.street_count,
        family_member_master.hud_name]
      filters:
        health_screening.services_name: 'NULL'
      sorts: [family_member_master.member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_master
      type: table
      fields: [family_master.family_count, family_master.hud_name]
      filters:
        family_master.reside_status: Permanent
      sorts: [family_master.family_count desc]
      limit: 5000
      join_fields:
      - field_name: family_master.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    column_order: [family_member_master.hud_name, health_screening.Total_population,
      family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.Aadhaar_linked_members,
      health_history.UDID_linked_members, health_history.Disability_beneficiaries,
      family_member_master.Family_count, q2_health_screening.Total_population, q3_health_screening.Total_population,
      q5_family_master.family_count, family_master.family_count, family_member_master.member_count,
      health_screening.street_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.Female_Population: Female residential population
      family_member_master.Male_Population: Male residential population
      family_member_master.Other_Population: Other residential population
      family_member_master.Family_count: Total Families
      q2_health_screening.Total_population: Verified Population
      health_screening.Total_population: Total Population
      q3_health_screening.Total_population: Members added
      family_master.family_count: Families with undelivered services
      family_member_master.member_count: Members with undelivered services
      health_screening.street_count: Streets with undelivered services
      q5_family_master.family_count: Families Added
    series_column_widths:
      family_member_master.hud_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#323cff"
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: family_member_master.Aadhaar_linked_members
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Aadhaar_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=582"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: family_member_master.aadhaar_number
          condition: ">0"
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
        label: Health History UDID Linked Members
        label_from_parameter:
        label_short: UDID Linked Members
        map_layer:
        name: health_history.UDID_linked_members
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: UDID Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.UDID_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=770"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.UDID
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
        label: Health History Disability Beneficiaries
        label_from_parameter:
        label_short: Disability Beneficiaries
        map_layer:
        name: health_history.Disability_beneficiaries
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Disability Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.Disability_beneficiaries
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=778"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.disability
          condition: 'Yes'
        - field: health_history.mtm_beneficiary_avail_service
          condition: "%yes%"
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
        label: Family Member Master Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: family_member_master.Female_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Female_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=474"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Female
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
        label: Family Member Master Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: family_member_master.Male_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Male_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=459"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  ) '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Male
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
        label: Family Member Master Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: family_member_master.Other_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Other_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=482"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Other,Transgender
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
        label: Family Member Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_member_master.Family_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=571"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.family_id  "
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q2_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: family_member_master.member_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=652"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
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
        label: Family  Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_master.family_count
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
        view: family_master
        view_label: Family  Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1864"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.street_id}  "
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
        label: Family Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: q5_family_master.family_count
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
        view: family_master
        view_label: Family Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Family Member Master Hud Name
        label_from_parameter:
        label_short: Hud Name
        map_layer:
        name: family_member_master.hud_name
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.hud_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=150"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.hud_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 38
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Total_population, family_member_master.Aadhaar_linked_members,
        health_history.UDID_linked_members, health_history.Disability_beneficiaries,
        family_member_master.block_name]
      filters:
        family_member_master.gender: "-NULL"
        family_member_master.district_name: ''
        family_member_master.block_name: ''
        family_member_master.hud_name: ''
        family_member_master.last_update_date: ''
      sorts: [health_screening.Total_population desc]
      limit: 5000
      column_limit: 50
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.Female_Population, family_member_master.Male_Population,
        family_member_master.Other_Population, family_member_master.Family_count,
        family_member_master.block_name]
      filters:
        family_member_master.resident_status: Resident,resident
      sorts: [family_member_master.Female_Population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.block_name]
      filters:
        family_member_master.resident_status: '":migrated_out OR dead OR non_traceable
          OR resident",Dead,Death,Duplicate,Migrant,Migrated out,Non traceable,Non-traceable,Resident,resident'
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, family_member_master.block_name]
      filters:
        family_member_master.resident_status: Resident,resident
        family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      sorts: [health_screening.Total_population desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.member_count, family_master.family_count, health_screening.street_count,
        family_member_master.block_name]
      filters:
        health_screening.services_name: 'NULL'
      sorts: [family_member_master.member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_master
      type: table
      fields: [family_master.family_count, family_master.block_name]
      filters:
        family_master.reside_status: Permanent
      sorts: [family_master.family_count desc]
      limit: 5000
      join_fields:
      - field_name: family_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    column_order: [family_member_master.block_name, health_screening.Total_population,
      family_member_master.Male_Population, family_member_master.Female_Population,
      family_member_master.Other_Population, family_member_master.Aadhaar_linked_members,
      health_history.UDID_linked_members, health_history.Disability_beneficiaries,
      family_member_master.Family_count, q2_health_screening.Total_population, q3_health_screening.Total_population,
      q5_family_master.family_count, family_master.family_count, family_member_master.member_count,
      health_screening.street_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      family_member_master.Female_Population: Female residential population
      family_member_master.Male_Population: Male residential population
      family_member_master.Other_Population: Other residential population
      family_member_master.Family_count: Total Families
      q2_health_screening.Total_population: Verified Population
      health_screening.Total_population: Total Population
      q3_health_screening.Total_population: Members added
      family_master.family_count: Families with undelivered services
      family_member_master.member_count: Members with undelivered services
      health_screening.street_count: Streets with undelivered services
      q5_family_master.family_count: Families Added
    series_column_widths:
      family_member_master.block_name: 225
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#323cff"
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Aadhaar Linked Members
        label_from_parameter:
        label_short: Aadhaar Linked Members
        map_layer:
        name: family_member_master.Aadhaar_linked_members
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Aadhaar Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Aadhaar_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=582"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: family_member_master.aadhaar_number
          condition: ">0"
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
        label: Health History UDID Linked Members
        label_from_parameter:
        label_short: UDID Linked Members
        map_layer:
        name: health_history.UDID_linked_members
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: UDID Linked Members
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.UDID_linked_members
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=770"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.UDID
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
        label: Health History Disability Beneficiaries
        label_from_parameter:
        label_short: Disability Beneficiaries
        map_layer:
        name: health_history.Disability_beneficiaries
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Disability Beneficiaries
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.Disability_beneficiaries
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=778"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: health_history.disability
          condition: 'Yes'
        - field: health_history.mtm_beneficiary_avail_service
          condition: "%yes%"
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
        label: Family Member Master Female Population
        label_from_parameter:
        label_short: Female Population
        map_layer:
        name: family_member_master.Female_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Female Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Female_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=474"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Female
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
        label: Family Member Master Male Population
        label_from_parameter:
        label_short: Male Population
        map_layer:
        name: family_member_master.Male_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Male Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Male_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=459"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  ) '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Male
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
        label: Family Member Master Other Population
        label_from_parameter:
        label_short: Other Population
        map_layer:
        name: family_member_master.Other_Population
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Other Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Other_Population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=482"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: 'CONCAT(${TABLE}.family_id, ${TABLE}.member_id  )  '
        sql_case:
        filters:
        - field: family_member_master.gender
          condition: Other,Transgender
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
        label: Family Member Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_member_master.Family_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=571"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.family_id  "
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q2_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Health Screening Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: q3_health_screening.Total_population
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1607"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id}  "
        sql_case:
        filters:
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
        label: Family Member Master Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: family_member_master.member_count
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=652"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
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
        label: Family  Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: family_master.family_count
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
        view: family_master
        view_label: Family  Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
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
        label: Health Screening Street Count
        label_from_parameter:
        label_short: Street Count
        map_layer:
        name: health_screening.street_count
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Street Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.street_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1855"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${street_id} "
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
        label: Family Master Family Count
        label_from_parameter:
        label_short: Family Count
        map_layer:
        name: q5_family_master.family_count
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
        view: family_master
        view_label: Family Master
        dynamic: false
        week_start_day: monday
        original_view: family_master
        dimension_group:
        error:
        field_group_variant: Family Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_master
        suggest_dimension: family_master.family_count
        suggest_explore: family_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_master.view.lkml?line=301"
        permanent: true
        source_file: views/family_master.view.lkml
        source_file_path: looker-tnphr/views/family_master.view.lkml
        sql: "${TABLE}.family_id "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Family Member Master Block Name
        label_from_parameter:
        label_short: Block Name
        map_layer:
        name: family_member_master.block_name
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.block_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=67"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.block_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    - Districts: family_master.district_name
      Huds: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
    row: 45
    col: 0
    width: 24
    height: 7
  - title: Congenital Anomaly
    name: Congenital Anomaly
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.congenital_anomaly_members]
    limit: 5000
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
    custom_color: "#0f18e6"
    single_value_title: ''
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
    note_state: collapsed
    note_display: hover
    note_text: Count of members for which congenital anomaly is True
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 23
    col: 12
    width: 6
    height: 4
  - title: CMCHIS Beneficiaries
    name: CMCHIS Beneficiaries
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_master__family_insurances_insurance.family_master__family_insurances_insurance_id]
    filters:
      drugs_and_services.health_screening_last_update_date: ''
      health_screening.role_toggle: ''
      health_screening.age: ''
      facility_registry.PHC: ''
      health_screening.toggle_IR: ''
      facility_registry.HSC: ''
      facility_registry.facility_type_name: ''
      address_block_master.block_type: ''
      family_master__family_insurances_insurance.family_master__family_insurances_insurance_id: "-%c%,-%o%,-%N%,-%a%,-%b%,-%d%,-%e%,-%f%,-%g%,-%h%,-%i%,-%j%,-%k%,-%l%,-%m%,-%n%,-%p%,-%q%,-%r%,-%s%,-%t%,-%u%,-%v%,-%x%,-%y%,-%z%,-%w%"
    sorts: [family_master__family_insurances_insurance.family_master__family_insurances_insurance_id]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: cmchis_beneficiaries, label: CMCHIS beneficiaries,
        expression: 'count(${family_master__family_insurances_insurance.family_master__family_insurances_insurance_id})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    filter_expression: length(${family_master__family_insurances_insurance.family_master__family_insurances_insurance_id})=22
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.Unique_Screening: Population 1st time Screened
      health_screening.Total_Screening: Total Screened
    series_cell_visualizations:
      health_screening.Unique_Screening:
        is_active: false
    series_text_format:
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
    header_font_color: "#f4fff9"
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    x_axis_label: Last 7 days
    series_types: {}
    series_colors:
      health_screening.Total_Screening: "#E8710A"
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [family_master__family_insurances_insurance.family_master__family_insurances_insurance_id]
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Date: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 27
    col: 6
    width: 6
    height: 4
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Huds, Blocks]
    field: family_member_master.district_name
  - name: Huds
    title: Huds
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Districts, Blocks]
    field: family_member_master.hud_name
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Districts, Huds]
    field: family_member_master.block_name
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.last_update_date
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Role Name
    title: Role Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
