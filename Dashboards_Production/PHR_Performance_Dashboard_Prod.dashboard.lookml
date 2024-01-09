- dashboard: phr_performance_dashboard_prod
  title: PHR Performance Dashboard v1.0.2 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Yr8U6dnVfuQiYiJfZlC28n
  elements:
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      health_screening.user_directorate_name: ''
    sorts: [family_member_master.count desc]
    limit: 5000
    column_limit: 50
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
    note_text: Total count of members
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 0
    col: 0
    width: 8
    height: 3
  - title: Individual Screened Gender Wise
    name: Individual Screened Gender Wise
    model: tnphr
    explore: family_member_master
    type: looker_pie
    fields: [health_screening.Unique_Screening, health_screening.gender_concat]
    filters:
      health_screening.gender_concat: "-NULL"
    sorts: [health_screening.Unique_Screening desc]
    limit: 5000
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      Female: "#E52592"
      Other: "#F9AB00"
    series_labels:
      family_member_master.Other_Population: Others
      family_member_master.count: Total Population
      health_screening.Unique_Screening_Males: Males
      health_screening.Unique_Screening_Females: Females
      health_screening.Unique_Screening_Others: Others
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
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: health_screening.Unique_Screening_Males,
            id: health_screening.Unique_Screening_Males, name: Unique Screening Males},
          {axisId: health_screening.Unique_Screening_Females, id: health_screening.Unique_Screening_Females,
            name: Unique Screening Females}, {axisId: health_screening.Unique_Screening_Others,
            id: health_screening.Unique_Screening_Others, name: Unique Screening Others}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: hover
    note_text: This includes gender wise count of people who got screened (only once
      even he/she got screened multiple times)
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 0
    col: 8
    width: 7
    height: 6
  - title: School Target Unique Screened
    name: School Target Unique Screened
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [family_member_master.School_Health_Target, health_screening.Unique_Screening]
    filters:
      family_member_master.School_Health_Target: "-20 or Above,-Undefined"
      family_member_master.resident_status: Resident,resident
      family_member_master.last_update_date: ''
    sorts: [family_member_master.School_Health_Target]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.Unique_Screening,
            id: health_screening.Unique_Screening, name: Unique Screening}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Age
    series_types: {}
    series_colors:
      health_screening.Unique_Screening: "#e657ba"
    column_spacing_ratio: 0.5
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
      total_population:
        is_active: true
    hidden_fields: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'This includes the count of child population who got screened (only
      once even he/she got screened multiple times) across age tier 1 to 19 to target
      the school going children

      '
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 12
    col: 15
    width: 9
    height: 12
  - title: MTM Target Unique Screened
    name: MTM Target Unique Screened
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [family_member_master.MTM_Target, health_screening.Unique_Screening]
    filters:
      family_member_master.resident_status: Resident,resident
      family_member_master.MTM_Target: "-Below 18,-Undefined"
      family_member_master.last_update_date: ''
    sorts: [family_member_master.MTM_Target]
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
    x_axis_label: Age
    series_types: {}
    series_colors:
      health_screening.Unique_Screening: "#3a59cc"
    column_spacing_ratio:
    column_group_spacing_ratio:
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
    hidden_fields: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of MTM Beneficiaries who got screened (only
      once even he/she got screened multiple times) across age tier 18 and above
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 0
    col: 15
    width: 9
    height: 6
  - title: NCD Target Unique Screened
    name: NCD Target Unique Screened
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [family_member_master.age_interval2, health_screening.Unique_Screening]
    filters:
      family_member_master.age_interval2: "-Below 18"
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
    x_axis_label: Age
    font_size: '12'
    series_types: {}
    series_colors:
      health_screening.Unique_Screening: "#CCC54B"
    series_labels: {}
    column_spacing_ratio: 0.4
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
    note_text: "This includes the count of children who got screened (only once even\
      \ he/she got screened multiple times) across age tier 18-29 and 30+\n\n"
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 6
    col: 15
    width: 9
    height: 6
  - title: First time Screening VS Repeated Screening for last 7 days
    name: First time Screening VS Repeated Screening for last 7 days
    model: tnphr
    explore: family_member_master
    type: looker_line
    fields: [health_screening.Unique_Screening, health_screening.last_update_date,
      health_screening.Total_Screening]
    fill_fields: [health_screening.last_update_date]
    filters:
      health_screening.last_update_date: 7 days
    sorts: [health_screening.last_update_date desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    note_state: collapsed
    note_display: hover
    note_text: |+
      This includes the count of people who got screened (only once even he/she got screened multiple times) VS count of total screenings of members who got screened (even if there are multiple screenings per member) in the past 7 days



    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 6
    col: 8
    width: 7
    height: 6
  - name: Population Verified VS Non Verified Status
    title: Population Verified VS Non Verified Status
    note_state: collapsed
    note_display: hover
    note_text: |-
      <li>Population Verified :</li><br>
      Count of members who are verified ( i.e., the members having status as Resident, Migrated, Dead, Duplicated, etc., )<br>

      <br><li>Population Non Verified: </li><br>
      Count of members who are non verified ( i.e, members not having any status)
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status: -Dead,-Duplicate,-Migrated out,-Non
          traceable,-Resident,-"migrated_out",-resident,-":migrated_out OR dead OR
          non_traceable OR resident",-Death,-Migrant,-Non-traceable
      limit: 500
      column_limit: 50
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: progress_percentage
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: true
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [family_member_master.count]
      filters:
        family_member_master.resident_status_concat: "-NULL"
        family_member_master.resident_status: "-NULL"
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
      join_fields: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: verified_population,
            id: verified_population, name: Verified Population}, {axisId: non_verified_population,
            id: non_verified_population, name: Non Verified Population}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 8,
        type: linear}]
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
    series_colors:
      verified_population: "#E52592"
      non_verified_population: "#079c98"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    column_spacing_ratio: 0.5
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [q1_family_member_master.count, family_member_master.count]
    dynamic_fields: [{category: table_calculation, expression: "${q1_family_member_master.count}",
        label: Verified Population, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: verified_population,
        _type_hint: number}, {category: table_calculation, expression: "${family_member_master.count}",
        label: Non Verified Population, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: non_verified_population,
        _type_hint: number}]
    listen:
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 24
    col: 0
    width: 8
    height: 9
  - title: Name of Drugs issued
    name: Name of Drugs issued
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [health_screening.Drugs_count, health_screening__drugs.health_screening__drugs_drug_name]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      family_member_master.last_update_date: ''
      health_screening.user_directorate_name: ''
    sorts: [health_screening.Drugs_count desc]
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
    y_axes: [{label: Drug Count, orientation: bottom, series: [{axisId: family_member_master.count,
            id: family_member_master.count, name: Family member Master}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
      health_screening.Drugs_count: "#F9AB00"
    series_labels:
      family_member_master.count: Drug Count
    column_spacing_ratio: 0.3
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
    header_background_color: "#7CB342"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: hover
    note_text: 'This includes the names of the issued Drugs (members who have received
      drugs counted as only once even he/she have received multiple drugs i.e., drugs
      received per screening is calculated as one, not the number of drugs)

      '
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 102
    col: 0
    width: 24
    height: 12
  - title: Total Members added
    name: Total Members added
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_population]
    filters:
      family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      family_member_master.resident_status: Resident,resident
      family_member_master.last_update_date: ''
      family_member_master.village_name: ''
      health_screening.toggle_IR: ''
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
    note_text: New Members Added
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 6
    col: 0
    width: 4
    height: 3
  - title: Total Families added
    name: Total Families added
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
      District Name: family_master.district_name
      Hud Name: family_master.hud_name
      Block Name: family_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Date: family_master.last_update_date
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
    row: 6
    col: 4
    width: 4
    height: 3
  - title: Population RDMND Status
    name: Population RDMND Status
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [family_member_master.resident_status_resident, family_member_master.resident_status_death,
      family_member_master.resident_status_duplicate, family_member_master.resident_status_migrated,
      family_member_master.resident_status_non_traceable]
    filters:
      family_member_master.resident_status_concat: -NULL,-"null"
      family_member_master.last_update_date: ''
      family_member_master.village_name: ''
      health_screening.toggle_IR: ''
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
    x_axis_reversed: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: family_member_master.resident_status_resident,
            id: family_member_master.resident_status_resident, name: Resident}, {
            axisId: family_member_master.resident_status_death, id: family_member_master.resident_status_death,
            name: Death}, {axisId: family_member_master.resident_status_duplicate,
            id: family_member_master.resident_status_duplicate, name: Duplicate},
          {axisId: family_member_master.resident_status_migrated, id: family_member_master.resident_status_migrated,
            name: Migrated}, {axisId: family_member_master.resident_status_non_traceable,
            id: family_member_master.resident_status_non_traceable, name: Non Traceable}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Reside Status
    series_types: {}
    series_labels:
      family_member_master.resident_status_resident: Resident
      family_member_master.resident_status_death: Death
      family_member_master.resident_status_duplicate: Duplicate
      family_member_master.resident_status_migrated: Migrated
      family_member_master.resident_status_non_traceable: Non Traceable
    custom_color_enabled: true
    custom_color: "#1A73E8"
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
    note_text: Number of members who are verified ( i.e the member having reside status
      as Resident, Migrated, Dead, Duplicated, etc., )
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 18
    col: 0
    width: 8
    height: 6
  - title: PBS 10 conditions screening
    name: PBS 10 conditions screening
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.count, health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis]
    filters:
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis: Hypertension
        (BP),Cold / Running Nose,Diabetes (Sugar),Generalized Body pain,Fever with
        Joint Pain,Fever & Chills,Dry cough,Running nose,Cough <= 2 weeks with fever,Cough
        <= 2 weeks without fever
    sorts: [health_screening.count desc]
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
      health_screening.count: "#6530e8"
    series_labels:
      health_screening.count: Screening  Count
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      health_screening.referrel_count:
        is_active: false
      health_screening.count:
        is_active: false
    series_text_format:
      health_screening.count:
        align: center
      health_screening.referrel_count:
        align: center
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis:
        align: left
    header_background_color: "#12B5CB"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of total screenings of members who got screened
      (even if there are multiple screenings per member) for the top 10 priority diseases
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 33
    col: 15
    width: 9
    height: 9
  - title: Population mapped with streets
    name: Population mapped with streets
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_allocated_to_street]
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
    custom_color: "#1A73E8"
    single_value_title: Population mapped with streets
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members who are allocated to streets where
      street name is not null
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 15
    col: 0
    width: 8
    height: 3
  - title: Population given consent
    name: Population given consent
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Population_given_consent]
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
    custom_color: "#1A73E8"
    single_value_title: Population given consent
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of individual members whose consent status
      is RECEIVED
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 12
    col: 4
    width: 4
    height: 3
  - title: Name of Lab Test
    name: Name of Lab Test
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.Lab_test_count, health_lab_tests_master.lab_test_name]
    filters:
      health_lab_tests_master.lab_test_name: ''
      health_screening.Lab_test_count: ">0"
    sorts: [health_screening.Lab_test_count desc]
    limit: 100
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
    series_types: {}
    series_colors:
      health_screening.Lab_test_count: "#7CB342"
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the names and count of lab tests done by the members
      (Counted as once even if the member had gone through multiple tests)
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 63
    col: 0
    width: 24
    height: 19
  - title: Role based screening
    name: Role based screening
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.role_name, health_screening.screening_count]
    filters:
      family_master.last_update_date: ''
      health_screening.toggle_IR: ''
    sorts: [health_screening.screening_count desc]
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      health_screening.screening_count: "#35ADDC"
    column_spacing_ratio: 0.3
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This populates the count of total screenings of members who got screened
      (even if there are multiple screenings per member) by role names
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 82
    col: 0
    width: 24
    height: 20
  - title: Aadhar Linked Members
    name: Aadhar Linked Members
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.Aadhaar_linked_members]
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
    note_text: This includes the number of members who has linked their Aadhaar numbers
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 33
    col: 8
    width: 7
    height: 3
  - title: Disability beneficiaries
    name: Disability beneficiaries
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.Disability_beneficiaries]
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
    note_text: Total number of members with disability who have availed MTM services
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 39
    col: 8
    width: 7
    height: 3
  - title: UDID Linked Members
    name: UDID Linked Members
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
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 36
    col: 8
    width: 7
    height: 3
  - title: Families with undelivered services
    name: Families with undelivered services
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_master.family_count]
    filters:
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
    note_text: This includes the count of families where no services were delivered
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 36
    col: 0
    width: 8
    height: 3
  - title: Members with undelivered services
    name: Members with undelivered services
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.member_count]
    filters:
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
    note_text: This includes the count of members where no services were delivered
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 33
    col: 0
    width: 8
    height: 3
  - title: Facility wise Screening
    name: Facility wise Screening
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [health_screening.screening_count, facility_registry.facility_type_name,
      facility_registry.category_name]
    filters:
      facility_registry.category_name: GH,Rural HSC,Rural PHC,Urban HSC,Urban PHC,MCH
        Lab,MCH Hosp
    sorts: [health_screening.screening_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'concat(${facility_registry.facility_type_name},"
          " , "("," Category: ", ${facility_registry.category_name}, ")")', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: string}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    series_types: {}
    series_colors:
      health_screening.screening_count: "#F9AB00"
    column_spacing_ratio: 0.4
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: [facility_registry.category_name, facility_registry.facility_type_name]
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of total screenings of members who got screened
      (even if there are multiple screenings per member) facility wise
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: health_screening.last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 24
    col: 8
    width: 16
    height: 9
  - title: Family Residential Status
    name: Family Residential Status
    model: tnphr
    explore: family_master
    type: single_value
    fields: [family_master.family_count, family_master.reside_status]
    filters:
      family_master.reside_status: "-NULL"
    sorts: [family_master.family_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(${family_master.family_count})',
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    single_value_title: ''
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
    hidden_fields: [family_master.reside_status, family_master.family_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of families with residential status i.e., status
      like Permanent, Temporary and Migrated
    listen:
      District Name: family_master.district_name
      Hud Name: family_master.hud_name
      Block Name: family_master.block_name
      Directorate Name: facility_directorate_master.directorate_name
      Date: family_master.last_update_date
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
    row: 3
    col: 0
    width: 8
    height: 3
  - title: No of Individuals Referred split up
    name: No of Individuals Referred split up
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.Refferal_count_V2, health_screening.outcome_referral_type]
    filters:
      address_district_master.district_name: ''
      address_hud_master.hud_name: ''
      address_block_master.block_name: ''
      health_screening.outcome_referral_type: MainPHC,UrbanPHC,Addl. PHC,UpgradedPHC,Rural
        HSC,Urban HSC,Govt MCH,Attached MCH,Lab Private MCH,Headquarters GH,Non Taluk
        GH,Taluk GH
    sorts: [health_screening.Refferal_count_V2 desc]
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: No. of Individuals referred, orientation: bottom, series: [{
            axisId: health_screening.Refferal_count_V2, id: health_screening.Refferal_count_V2,
            name: Refferal Count V2}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Referred by
    series_types: {}
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
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: 'This includes count of members with referral place id''s (only once
      even if there are multiple referral place id''s per member), referred by different
      referral types '
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 12
    col: 8
    width: 7
    height: 12
  - title: Total Families Updated
    name: Total Families Updated
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_master.family_count]
    filters:
      family_member_master__update_register.family_member_master__update_register_user_id: "-system,-NULL"
      family_member_master.last_update_date: ''
      family_member_master.village_name: ''
      health_screening.toggle_IR: ''
      family_master.reside_status: Permanent
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
    single_value_title: Families Updated
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: "Families updated\n\n"
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 9
    col: 0
    width: 4
    height: 3
  - title: Streets not visited
    name: Streets not visited
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.streets_not_visited]
    filters:
      health_screening.user_directorate_name: ''
      family_member_master.street_name: "-NULL"
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
    single_value_title: Streets not visited
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
    note_text: This includes the count of streets where no screenings were taken place
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 39
    col: 0
    width: 8
    height: 3
  - title: Individual Screenings
    name: Individual Screenings
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Unique_Screening]
    filters:
      address_district_master.district_name: ''
      address_block_master.block_name: ''
      address_hud_master.hud_name: ''
      family_member_master.last_update_date: ''
      health_screening.user_directorate_name: ''
    limit: 5000
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: "#f1f9ff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Population Count, orientation: left, series: [{axisId: family_member_master.Male_Population,
            id: family_member_master.Male_Population, name: Male Population}, {axisId: family_member_master.Female_Population,
            id: family_member_master.Female_Population, name: Female Population},
          {axisId: family_member_master.Other_Population, id: family_member_master.Other_Population,
            name: Other Population}], showLabels: true, showValues: true, unpinAxis: false,
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he/she got screened multiple times)
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 42
    col: 0
    width: 8
    height: 3
  - title: Total Individuals Confirmed MTM Beneficiary
    name: Total Individuals Confirmed MTM Beneficiary
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    filters:
      family_member_master.last_update_date: ''
      health_screening.user_directorate_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: mtm_beneficiaries, label: MTM Beneficiaries,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes the number of members who got benefited with MTM schemes
      (counted only once even he/she got benefited multiple times for multiple scenarios
      i.e, diabetes mellitus, dialysis CAPD, hypertension, palliative care, physiotherapy
      etc)
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 45
    col: 0
    width: 8
    height: 3
  - title: Total Individuals received Drugs
    name: Total Individuals received Drugs
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.member_drug_Delivered]
    filters:
      family_member_master.last_update_date: ''
      health_screening.user_directorate_name: ''
    limit: 1000
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
    custom_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Drug Count, orientation: bottom, series: [{axisId: family_member_master.count,
            id: family_member_master.count, name: Family member Master}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
    table_theme: white
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    defaults_version: 1
    hidden_fields: []
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: This Includes only the count of members who have received drugs (counted
      as only once even he/she received multiple drugs multiple times)
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 48
    col: 0
    width: 8
    height: 3
  - title: Individual Screened for last 7 days
    name: Individual Screened for last 7 days
    model: tnphr
    explore: family_member_master
    type: looker_line
    fields: [health_screening.Unique_Screening, health_screening.last_update_date]
    fill_fields: [health_screening.last_update_date]
    filters:
      health_screening.last_update_date: 7 days
    sorts: [health_screening.last_update_date desc]
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
    show_null_points: true
    interpolation: linear
    x_axis_label: Last 7 days
    series_types: {}
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he/she got screened multiple times) in the past 7 days
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 51
    col: 0
    width: 12
    height: 6
  - title: MTM beneficiaries
    name: MTM beneficiaries
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Confirmed_Hypertension, health_screening.Controlled_Hypertension,
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus, health_screening.Confirmed_Hypertension_and_DiabetesMellitus,
      health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy, health_screening.MTM_dialysis_capd]
    filters:
      health_screening.district_name: "-NULL"
      health_screening.hud_name: "-NULL"
      health_screening.block_name: "-NULL"
    sorts: [health_screening.MTM_dialysis_capd desc]
    limit: 5000
    column_limit: 50
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: Count, orientation: left, series: [{axisId: health_screening.Confirmed_Diabetes_mellitus,
            id: health_screening.Confirmed_Diabetes_mellitus, name: Confirmed Diabetes},
          {axisId: health_screening.Controlled_Diabetes_Mellitus, id: health_screening.Controlled_Diabetes_Mellitus,
            name: Controlled Diabetes}, {axisId: health_screening.Confirmed_Hypertension,
            id: health_screening.Confirmed_Hypertension, name: Confirmed Hypertension},
          {axisId: health_screening.Controlled_Hypertension, id: health_screening.Controlled_Hypertension,
            name: Controlled Hypertension}, {axisId: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
            id: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus, name: Controlled
              both}, {axisId: health_screening.Confirmed_Hypertension_and_DiabetesMellitus,
            id: health_screening.Confirmed_Hypertension_and_DiabetesMellitus, name: Confirmed
              both}, {axisId: health_screening.MTM_palliative_care, id: health_screening.MTM_palliative_care,
            name: MTM Palliative Care}, {axisId: health_screening.MTM_physiotherapy,
            id: health_screening.MTM_physiotherapy, name: MTM Physiotherapy}, {axisId: health_screening.MTM_dialysis_capd,
            id: health_screening.MTM_dialysis_capd, name: MTM Dialysis Capd}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: MTM Beneficiaries
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
      health_screening.Controlled_Diabetes_Mellitus: "#1150c4"
      health_screening.Confirmed_Diabetes_mellitus: "#1150c4"
      health_screening.Confirmed_Hypertension: "#1c9147"
      health_screening.Controlled_Hypertension: "#1c9147"
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: "#d61fde"
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: "#d61fde"
      health_screening.MTM_palliative_care: "#edbc0e"
      health_screening.MTM_physiotherapy: "#80b1d3"
      health_screening.MTM_dialysis_capd: "#36B38D"
    series_labels:
      health_screening.district_name: District
      health_screening.hud_name: HUD
      health_history.block_name: Block
      address_village_master.village_name: Village
      health_screening.village_type: Village Type
      health_screening.Total_population: Population
      health_screening.Total_Screening: Screening
      health_screening.Confirmed_Diabetes_mellitus: Confirmed Diabetes
      health_screening.Controlled_Diabetes_Mellitus: Controlled Diabetes
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: Controlled both
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: Confirmed both
      diabetes_mellitus_percentage: Diabetes %
      hypertension_percentage: Hypertension %
      hypertension_and_diabetes_mellitus_percentage: Hypertension & Diabetes %
    column_spacing_ratio: 0.4
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [health_screening.district_name, health_screening.hud_name, health_history.block_name,
      address_village_master.village_name, health_screening.village_type, health_screening.Total_population,
      health_screening.Total_Screening, health_screening.Confirmed_Diabetes_mellitus,
      health_screening.Controlled_Diabetes_Mellitus, health_screening.DM_Percent,
      health_screening.Confirmed_Hypertension, health_screening.Controlled_Hypertension,
      health_screening.HT_Percent, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.HTDM_Percent]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      health_screening.hud_name: 100
      health_history.block_name: 100
      address_village_master.village_name: 100
      health_screening.village_type: 112
      health_screening.Total_Screening: 99
      health_screening.Total_population: 104
      health_screening.Confirmed_Diabetes_mellitus: 160
      health_screening.Controlled_Diabetes_Mellitus: 160
      health_screening.Confirmed_Hypertension: 189
      health_screening.Controlled_Hypertension: 188
      health_screening.HT_Percent: 134
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: 133
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: 134
      health_screening.HTDM_Percent: 205
      health_screening.district_name: 100
      health_screening.DM_Percent: 105
      grouped-column-health_screening.district_name: 189
      grouped-column-health_screening.hud_name: 75
      grouped-column-health_history.block_name: 75
      grouped-column-address_village_master.village_name: 79
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.district_name:
        align: left
      health_screening.Total_population:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.Confirmed_Diabetes_mellitus:
        align: center
      health_screening.Confirmed_Hypertension:
        align: center
      health_screening.Control_rate:
        align: center
      health_screening.village_type:
        align: center
      dm_percentage:
        align: center
      hypertension_percentage:
        align: center
      both:
        align: center
    series_collapsed:
      health_screening.district_name: true
      health_screening.hud_name: true
      health_history.block_name: true
      address_village_master.village_name: true
    header_background_color: "#1A73E8"
    conditional_formatting: []
    truncate_column_names: true
    theme: classic
    show_full_field_name: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#201de8"
    comparison_label: Total Population
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_fields: [hypertension_percentage, hypertension_and_diabetes_mellitus_percentage]
    defaults_version: 1
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: hover
    note_text: |-
      <li>Confirmed Diabetes Mellitus cases: Members with dm_screening is Known DM</li><br>
      <li>Confirmed Hypertension cases: Members with ht_screening is Known HT</li><br>
      <li>Confirmed Hypertension and DiabetesMellitus (Both) cases: Members with both dm_screening is Known DM and ht_screening is Known HT</li><br>

      <li>Controlled Diabetes Mellitus cases: Members with rbs < 140 and dm_screening is Known DM</li><br>
      <li>Controlled Hypertension cases: Members with dia_bp  < 90, sys_bp < 140 and ht_screening is Known HT</li><br>
      <li>Controlled Hypertension and DiabetesMellitus (Both) cases: Members with dia_bp  < 90, sys_bp < 140, rbs < 140, dm_screening is Known DM and ht_screening is Known HT</li><br>
      <li>MTM Palliative Care cases: Individual members who have availed additional services of Palliative Care</li><br>
      <li>MTM Physiotherapy cases: Individual members  who have availed additional services of Physiotherapy</li><br>
      <li>MTM Dialysis CAPD cases: Individual members  who have availed additional services of Dialysis CAPD</li><br>
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 42
    col: 8
    width: 16
    height: 9
  - title: Individual Screened Age wise
    name: Individual Screened Age wise
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [health_screening.Unique_Screening, family_member_master.age_interval3]
    fill_fields: [family_member_master.age_interval3]
    filters: {}
    sorts: [family_member_master.age_interval3]
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: health_screening.Unique_Screening,
            id: health_screening.Unique_Screening, name: Unique Screening}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Age
    font_size: '12'
    series_types: {}
    series_colors:
      health_screening.Unique_Screening: "#E8710A"
    series_labels: {}
    column_spacing_ratio: 0.4
    column_group_spacing_ratio:
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
    note_text: "This includes the count of people who got screened (only once even\
      \ he/she got screened multiple times) by calculating the age band using the\
      \ birthdate\n\n"
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 51
    col: 12
    width: 12
    height: 6
  - title: Congenital Anomaly
    name: Congenital Anomaly
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_history.congenital_anomaly_members]
    filters:
      health_screening.toggle_IR: ''
      health_screening.additional_services: ''
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: ''
      address_block_master.block_type: ''
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
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 9
    col: 4
    width: 4
    height: 3
  - title: Individual Screened Village Type Wise
    name: Individual Screened Village Type Wise
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.Unique_Screening, family_member_master.village_type]
    filters:
      health_screening.toggle_IR: ''
      health_screening.additional_services: ''
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: ''
      address_block_master.block_type: ''
    sorts: [health_screening.Unique_Screening desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.Unique_Screening,
            id: health_screening.Unique_Screening, name: Unique Screening}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
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
    note_text: "This includes the count of people who got screened (only once even\
      \ he/she got screened multiple times) by village types\n\n"
    listen:
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 57
    col: 12
    width: 12
    height: 6
  - title: UHC 16 condition screening
    name: UHC 16 condition screening
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Member_count, health_screening.services_name]
    filters:
      health_screening.services_name: "-NULL"
    sorts: [health_screening.Member_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    series_labels:
      health_screening.Unique_Screening: No. of Individuals Screened
      health_screening.Total_Screening: Total Screenings
    series_column_widths: {}
    series_cell_visualizations:
      health_screening.referrel_count:
        is_active: false
      health_screening.count:
        is_active: false
    series_text_format:
      health_screening.count:
        align: center
      health_screening.referrel_count:
        align: center
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis:
        align: center
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
    header_background_color: "#12B5CB"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
      Individuals/Visits: screening_counts.Individuals_Visits
    row: 57
    col: 0
    width: 12
    height: 6
  - name: By Staff
    title: By Staff
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, facility_registry.PHC, facility_registry.HSC]
      filters:
        family_member_master.district_name: "-NULL"
      sorts: [family_member_master.district_name]
      limit: 5000
      dynamic_fields: [{table_calculation: phc, label: PHC, expression: 'if(is_null(${facility_registry.PHC}),"-",${facility_registry.PHC})',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}, {table_calculation: hsc, label: HSC, expression: 'if(is_null(${facility_registry.HSC}),"-",${facility_registry.HSC})',
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population_verified, health_screening.Unique_Screening,
        health_screening.Total_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, family_member_master.block_name,
        health_screening.member_drug_Delivered]
      filters:
        health_screening.role_name: Mid Level Health Provider,-NULL
      sorts: [health_screening.Total_population_verified desc]
      limit: 5000
      dynamic_fields: [{table_calculation: mid_level_health_provider_mtm_beneficiaries_updated,
          label: "[Mid Level Health Provider] MTM Beneficiaries updated", expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mid_level_health_provider_population_verified, label: "[Mid\
            \ Level Health Provider] Population Verified", expression: "${health_screening.Total_population_verified}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mid_level_health_provider_individuals_screened, label: "[Mid\
            \ Level Health Provider] Individuals screened", expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mid_level_health_provider_total_screenings, label: "[Mid\
            \ Level Health Provider] Total Screenings", expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mid_level_health_provider_no_of_individuals_issued_drugs,
          label: "[Mid Level Health Provider] No of individuals issued drugs", expression: "${health_screening.member_drug_Delivered}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_population_verified, health_screening.Unique_Screening,
        health_screening.Total_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Total_population_verified,
        health_screening.Total_Screening, health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      filters:
        health_screening.role_name: Women Health Volunteer
      sorts: [health_screening.Total_population_verified desc]
      limit: 5000
      dynamic_fields: [{table_calculation: women_health_volunteer_population_verified,
          label: "[Women Health Volunteer] Population Verified", expression: "${health_screening.Total_population_verified}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: women_health_volunteer_individuals_screened, label: "[Women\
            \ Health Volunteer] Individuals screened", expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: women_health_volunteer_total_screenings, label: "[Women\
            \ Health Volunteer] Total Screenings", expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: women_health_volunteer_mtm_beneficiaries_updated, label: "[Women\
            \ Health Volunteer] MTM Beneficiaries updated", expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: women_health_volunteer_no_of_individuals_issued_drugs,
          label: "[Women Health Volunteer] No of individuals issued drugs", expression: "${health_screening.member_drug_Delivered}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_population_verified, health_screening.Total_Screening,
        health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population_verified, health_screening.Total_Screening,
        family_member_master.block_name, health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      filters:
        facility_directorate_master.directorate_name: DPH
        health_screening.role_name: NCD Staff Nurse
      sorts: [health_screening.Total_population_verified desc]
      limit: 5000
      dynamic_fields: [{table_calculation: population_verified_dph_mtm_staff_nurse,
          label: Population Verified (DPH MTM Staff Nurse), expression: "${health_screening.Total_population_verified}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: individuals_screened_dph_mtm_staff_nurse, label: Individuals
            screened (DPH MTM Staff Nurse), expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: total_screenings_dph_mtm_staff_nurse, label: Total Screenings
            (DPH MTM Staff Nurse), expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mtm_beneficiries_updated_dph_mtm_staff_nurse, label: MTM
            Beneficiries updated (DPH MTM Staff Nurse), expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: no_of_individuals_issued_drugs_dph_mtm_staff_nurse, label: No
            of individuals issued drugs (DPH MTM Staff Nurse), expression: "${health_screening.member_drug_Delivered}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_population_verified, health_screening.Total_Screening,
        health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Total_population_verified,
        health_screening.Total_Screening, health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      filters:
        facility_directorate_master.directorate_name: DMS
        health_screening.role_name: NCD Staff Nurse
      limit: 500
      dynamic_fields: [{table_calculation: population_verified_dms_mtm_staff_nurse,
          label: Population Verified (DMS MTM Staff Nurse), expression: "${health_screening.Total_population_verified}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: individuals_screened_dms_mtm_staff_nurse, label: Individuals
            screened (DMS MTM Staff Nurse), expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: total_screenings_dms_mtm_staff_nurse, label: Total Screenings
            (DMS MTM Staff Nurse), expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mtm_beneficiries_updated_dms_mtm_staff_nurse, label: MTM
            Beneficiries updated (DMS MTM Staff Nurse), expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: no_of_individuals_issued_drugs_dms_mtm_staff_nurse, label: No
            of individuals issued drugs (DMS MTM Staff Nurse), expression: "${health_screening.member_drug_Delivered}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_population_verified, health_screening.Total_Screening,
        health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Total_population_verified,
        health_screening.Total_Screening, health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      filters:
        facility_directorate_master.directorate_name: DME
        health_screening.role_name: NCD Staff Nurse
      sorts: [health_screening.Total_population_verified desc]
      limit: 500
      dynamic_fields: [{table_calculation: population_verified_dme_mtm_staff_nurse,
          label: Population Verified (DME MTM Staff Nurse), expression: "${health_screening.Total_population_verified}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: individuals_screened_dme_mtm_staff_nurse, label: Individuals
            screened (DME MTM Staff Nurse), expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: total_screenings_dme_mtm_staff_nurse, label: Total Screenings
            (DME MTM Staff Nurse), expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: mtm_beneficiries_updated_dme_mtm_staff_nurse, label: MTM
            Beneficiries updated (DME MTM Staff Nurse), expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: no_of_individuals_issued_drugs_dme_mtm_staff_nurse, label: No
            of individuals issued drugs (DME MTM Staff Nurse), expression: "${health_screening.member_drug_Delivered}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_population_verified, health_screening.Total_Screening,
        health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.member_drug_Delivered]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Unique_Screening,
        health_screening.Total_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      filters:
        health_screening.mtm_condition: 'palliative care^ ^ '
      sorts: [health_screening.Unique_Screening desc]
      limit: 500
      dynamic_fields: [{table_calculation: palliative_care_mtm_beneficiaries_updated,
          label: "[Palliative Care] MTM Beneficiaries updated", expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: palliative_care_individuals_screened, label: "[Palliative\
            \ Care] Individuals screened", expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: palliative_care_total_screenings, label: "[Palliative\
            \ Care] Total Screenings", expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        health_screening.Unique_Screening, health_screening.Total_Screening]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Total_Screening,
        health_screening.Unique_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      filters:
        health_screening.mtm_condition: 'physiotherapy^ ^ '
      sorts: [health_screening.Total_Screening desc]
      limit: 500
      dynamic_fields: [{table_calculation: physiotherapy_care_individuals_screened,
          label: "[Physiotherapy Care] Individuals screened", expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: physiotherapy_care_total_screenings, label: "[Physiotherapy\
            \ Care] Total Screenings", expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: physiotherapy_care_mtm_beneficiaries_updated, label: "[Physiotherapy\
            \ Care] MTM Beneficiaries updated", expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Total_Screening, health_screening.Unique_Screening,
        health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.block_name, health_screening.Unique_Screening,
        health_screening.Total_Screening, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      filters:
        health_screening.mtm_condition: 'dialysis^ ^ '
      sorts: [health_screening.Unique_Screening desc]
      limit: 500
      dynamic_fields: [{table_calculation: capd_bags_beneficiaries_mtm_beneficiaries_updated,
          label: "[CAPD Bags Beneficiaries] MTM Beneficiaries updated", expression: "${health_history.mtm_beneficiary_v2_count}+${health_screening.mtm_beneficiary_v1_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: capd_bags_beneficiaries_individuals_screened, label: "[CAPD\
            \ Bags Beneficiaries] Individuals screened", expression: "${health_screening.Unique_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: capd_bags_beneficiaries_total_screenings, label: "[CAPD\
            \ Bags Beneficiaries] Total Screenings", expression: "${health_screening.Total_Screening}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.Unique_Screening, health_screening.Total_Screening,
        health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, phc, hsc, mid_level_health_provider_population_verified,
      mid_level_health_provider_mtm_beneficiaries_updated, mid_level_health_provider_individuals_screened,
      mid_level_health_provider_total_screenings, mid_level_health_provider_no_of_individuals_issued_drugs,
      women_health_volunteer_population_verified, women_health_volunteer_individuals_screened,
      women_health_volunteer_total_screenings, women_health_volunteer_mtm_beneficiaries_updated,
      women_health_volunteer_no_of_individuals_issued_drugs, palliative_care_individuals_screened,
      palliative_care_total_screenings, palliative_care_mtm_beneficiaries_updated,
      physiotherapy_care_individuals_screened, physiotherapy_care_total_screenings,
      physiotherapy_care_mtm_beneficiaries_updated, dph_mtm_staff_nurse_population_verified,
      dph_mtm_staff_nurse_individuals_screened, dph_mtm_staff_nurse_total_screenings,
      dph_mtm_staff_nurse_mtm_beneficiaries_updated, dph_mtm_staff_nurse_no_of_individuals_issued_drugs,
      dms_mtm_staff_nurse_population_verified, dms_mtm_staff_nurse_individuals_screened,
      dms_mtm_staff_nurse_total_screenings, dms_mtm_staff_nurse_mtm_beneficiaries_updated,
      dms_mtm_staff_nurse_no_of_individuals_issued_drugs, dme_mtm_staff_nurse_population_verified,
      dme_mtm_staff_nurse_individuals_screened, dme_mtm_staff_nurse_total_screenings,
      dme_mtm_staff_nurse_no_of_individuals_issued_drugs, dme_mtm_staff_nurse_mtm_beneficiaries_updated,
      total_mtm_staff_nurse_population_verified, total_mtm_staff_nurse_individuals_screened,
      total_mtm_staff_nurse_total_screenings, total_mtm_staff_nurse_mtm_beneficiaries_updated,
      total_mtm_staff_nurse_no_of_individuals_issued_drugs, capd_bags_beneficiaries_individuals_screened_1,
      capd_bags_beneficiaries_total_screenings_1, capd_bags_beneficiaries_mtm_beneficiaries_updated_1]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.member_drug_Delivered: No of individuals issued drugs (Mid
        Level Health Provider)
      health_screening.Total_population_verified: Population Verified (Mid Level Health
        Provider)
      health_screening.Unique_Screening: Individuals screened (Mid Level Health Provider)
      mtm_beneficiries_updated: MTM Beneficiries updated (Mid Level Health Provider)
      health_screening.Total_Screening: Total Screenings (Mid Level Health Provider)
    series_column_widths:
      health_screening.role_name___null_health_screening.Total_population_verified: 75
      health_screening.role_name___null_health_screening.Unique_Screening: 75
      health_screening.role_name___null_health_screening.Total_Screening: 75
      health_screening.role_name___null_mtm_beneficiries_updated: 75
      facility_registry.HSC: 150
      population_verified_women_health_volunteer: 100
      health_screening.Total_population_verified: 100
      health_screening.Unique_Screening: 100
      health_screening.Total_Screening: 100
      health_screening.member_drug_Delivered: 100
      mtm_beneficiries_updated: 100
      individuals_screened_women_health_volunteer: 100
      total_screenings_women_health_volunteer: 100
      mtm_beneficiries_updated_women_health_volunteer: 100
      no_of_individuals_issued_drugs_women_health_volunteer: 100
      q3_health_screening.Total_population_verified: 100
      q3_health_screening.Total_Screening: 100
      q3_health_screening.Unique_Screening: 100
      population_verified_dph_mtm_staff_nurse: 100
      individuals_screened_dph_mtm_staff_nurse: 100
      total_screenings_dph_mtm_staff_nurse: 100
      mtm_beneficiries_updated_dph_mtm_staff_nurse: 100
      no_of_individuals_issued_drugs_dph_mtm_staff_nurse: 100
      mtm_beneficiries_updated_mid_level_health_provider: 100
      population_verified_mid_level_health_provider: 100
      individuals_screened_mid_level_health_provider: 100
      total_screenings_mid_level_health_provider: 100
      no_of_individuals_issued_drugs_mid_level_health_provider: 100
      population_verified_dms_mtm_staff_nurse: 100
      individuals_screened_dms_mtm_staff_nurse: 100
      total_screenings_dms_mtm_staff_nurse: 100
      mtm_beneficiries_updated_dms_mtm_staff_nurse: 100
      no_of_individuals_issued_drugs_dms_mtm_staff_nurse: 100
      family_member_master.district_name: 150
      family_member_master.hud_name: 150
      family_member_master.block_name: 150
      facility_registry.PHC: 150
      population_verified_dme_mtm_staff_nurse: 100
      individuals_screened_dme_mtm_staff_nurse: 100
      total_screenings_dme_mtm_staff_nurse: 100
      mtm_beneficiries_updated_dme_mtm_staff_nurse: 100
      no_of_individuals_issued_drugs_dme_mtm_staff_nurse: 100
      population_verified_dme_mtm_staff_nurse_1: 100
      population_verified_dms_mtm_staff_nurse_1: 103
      population_verified_dph_mtm_staff_nurse_1: 114
      population_verified_total_mtm_staff_nurse: 115
      individuals_screened_dme_mtm_staff_nurse_1: 93
      individuals_screened_dms_mtm_staff_nurse_1: 96
      individuals_screened_dph_mtm_staff_nurse_1: 94
      individuals_screened_total_mtm_staff_nurse: 104
      total_screenings_dme_mtm_staff_nurse_1: 89
      total_screenings_dms_mtm_staff_nurse_1: 82
      total_screenings_dph_mtm_staff_nurse_1: 97
      total_screenings_total_mtm_staff_nurse: 108
      mtm_beneficiries_updated_dme_mtm_staff_nurse_1: 100
      mtm_beneficiries_updated_dms_mtm_staff_nurse_1: 115
      mtm_beneficiries_updated_dph_mtm_staff_nurse_1: 109
      mtm_beneficiries_updated_total_mtm_staff_nurse: 118
      no_of_individuals_issued_drugs_dme_mtm_staff_nurse_1: 132
      no_of_individuals_issued_drugs_dms_mtm_staff_nurse_1: 131
      no_of_individuals_issued_drugs_dph_mtm_staff_nurse_1: 126
      mtm_beneficiries_updated_palliative_care: 135
      individuals_screened_palliative_care: 121
      total_screenings_palliative_care: 124
      individuals_screened_physiotherapy_care: 136
      total_screenings_physiotherapy_care: 133
      mtm_beneficiries_updated_physiotherapy_care: 129
      mtm_beneficiries_updated_capd_bags_beneficiries: 140
      individuals_screened_capd_bags_beneficiries: 152
      total_screenings_capd_bags_beneficiries: 132
    series_cell_visualizations:
      health_screening.Total_population_verified:
        is_active: false
    series_text_format:
      mid_level_health_provider_mtm_beneficiaries_updated:
        align: center
      mid_level_health_provider_population_verified:
        align: center
      mid_level_health_provider_individuals_screened:
        align: center
      mid_level_health_provider_total_screenings:
        align: center
      mid_level_health_provider_no_of_individuals_issued_drugs:
        align: center
      women_health_volunteer_population_verified:
        align: center
      women_health_volunteer_individuals_screened:
        align: center
      women_health_volunteer_total_screenings:
        align: center
      women_health_volunteer_mtm_beneficiaries_updated:
        align: center
      women_health_volunteer_no_of_individuals_issued_drugs:
        align: center
      palliative_care_mtm_beneficiaries_updated:
        align: center
      palliative_care_individuals_screened:
        align: center
      palliative_care_total_screenings:
        align: center
      physiotherapy_care_individuals_screened:
        align: center
      physiotherapy_care_total_screenings:
        align: center
      physiotherapy_care_mtm_beneficiaries_updated:
        align: center
      capd_bags_beneficiaries_mtm_beneficiaries_updated:
        align: center
      capd_bags_beneficiaries_individuals_screened:
        align: center
      capd_bags_beneficiaries_total_screenings:
        align: center
      dme_mtm_staff_nurse_population_verified:
        align: center
      dms_mtm_staff_nurse_population_verified:
        align: center
      dph_mtm_staff_nurse_population_verified:
        align: center
      total_mtm_staff_nurse_population_verified:
        align: center
      dme_mtm_staff_nurse_individuals_screened:
        align: center
      dms_mtm_staff_nurse_individuals_screened:
        align: center
      dph_mtm_staff_nurse_individuals_screened:
        align: center
      total_mtm_staff_nurse_individuals_screened:
        align: center
      dme_mtm_staff_nurse_total_screenings:
        align: center
      dms_mtm_staff_nurse_total_screenings:
        align: center
      dph_mtm_staff_nurse_total_screenings:
        align: center
      total_mtm_staff_nurse_total_screenings:
        align: center
      dme_mtm_staff_nurse_mtm_beneficiaries_updated:
        align: center
      dms_mtm_staff_nurse_mtm_beneficiaries_updated:
        align: center
      dph_mtm_staff_nurse_mtm_beneficiaries_updated:
        align: center
      total_mtm_staff_nurse_mtm_beneficiaries_updated:
        align: center
      dme_mtm_staff_nurse_no_of_individuals_issued_drugs:
        align: center
      dms_mtm_staff_nurse_no_of_individuals_issued_drugs:
        align: center
      dph_mtm_staff_nurse_no_of_individuals_issued_drugs:
        align: center
      family_member_master.district_name:
        align: center
      family_member_master.hud_name:
        align: center
      family_member_master.block_name:
        align: center
      facility_registry.PHC:
        align: center
      facility_registry.HSC:
        align: center
      phc:
        align: center
      hsc:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fdfff5"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, q2_health_screening.Total_Screening,
      q2_health_screening.Unique_Screening, q2_health_screening.mtm_beneficiary_v1_count,
      q2_health_history.mtm_beneficiary_v2_count, q2_mtm_beneficiries_updated, health_history.mtm_beneficiary_v2_count,
      q2_health_screening.member_drug_Delivered, q2_health_screening.Total_population_verified,
      health_screening.Total_population_verified, health_screening.Unique_Screening,
      health_screening.Total_Screening, health_screening.member_drug_Delivered, q3_health_screening.Total_population_verified,
      q3_health_screening.Total_Screening, q3_health_screening.Unique_Screening, q3_health_screening.mtm_beneficiary_v1_count,
      q3_health_history.mtm_beneficiary_v2_count, q3_health_screening.member_drug_Delivered,
      q4_health_screening.Total_population_verified, q4_health_screening.Total_Screening,
      q4_health_screening.Unique_Screening, q4_health_screening.mtm_beneficiary_v1_count,
      q4_health_history.mtm_beneficiary_v2_count, q4_health_screening.member_drug_Delivered,
      q5_health_screening.Total_population_verified, q5_health_screening.Total_Screening,
      q5_health_screening.Unique_Screening, q5_health_screening.mtm_beneficiary_v1_count,
      q5_health_history.mtm_beneficiary_v2_count, q5_health_screening.member_drug_Delivered,
      population_verified_dme_mtm_staff_nurse, population_verified_dms_mtm_staff_nurse,
      population_verified_dph_mtm_staff_nurse, individuals_screened_dme_mtm_staff_nurse,
      individuals_screened_dms_mtm_staff_nurse, individuals_screened_dph_mtm_staff_nurse,
      total_screenings_dme_mtm_staff_nurse, total_screenings_dms_mtm_staff_nurse,
      total_screenings_dph_mtm_staff_nurse, mtm_beneficiries_updated_dme_mtm_staff_nurse,
      no_of_individuals_issued_drugs_dme_mtm_staff_nurse, mtm_beneficiries_updated_dph_mtm_staff_nurse,
      no_of_individuals_issued_drugs_dph_mtm_staff_nurse, mtm_beneficiries_updated_dms_mtm_staff_nurse,
      no_of_individuals_issued_drugs_dms_mtm_staff_nurse, q6_health_screening.Unique_Screening,
      q6_health_screening.Total_Screening, q6_health_screening.mtm_beneficiary_v1_count,
      q6_health_history.mtm_beneficiary_v2_count, q7_health_screening.Total_Screening,
      q7_health_screening.Unique_Screening, q7_health_screening.mtm_beneficiary_v1_count,
      q7_health_history.mtm_beneficiary_v2_count, q8_health_screening.Unique_Screening,
      q8_health_screening.Total_Screening, q8_health_screening.mtm_beneficiary_v1_count,
      q8_health_history.mtm_beneficiary_v2_count, facility_registry.PHC, facility_registry.HSC,
      capd_bags_beneficiaries_total_screenings, capd_bags_beneficiaries_individuals_screened,
      capd_bags_beneficiaries_mtm_beneficiaries_updated]
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Member Drug Delivered
        label_from_parameter:
        label_short: Member Drug Delivered
        map_layer:
        name: health_screening.member_drug_Delivered
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
        field_group_variant: Member Drug Delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.member_drug_Delivered
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1897"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening__drugs.health_screening__drugs_drug_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mid_level_health_provider_mtm_beneficiaries_updated
        label: "[Mid Level Health Provider] MTM Beneficiaries updated"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mid_level_health_provider_population_verified
        label: "[Mid Level Health Provider] Population Verified"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mid_level_health_provider_individuals_screened
        label: "[Mid Level Health Provider] Individuals screened"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mid_level_health_provider_total_screenings
        label: "[Mid Level Health Provider] Total Screenings"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mid_level_health_provider_no_of_individuals_issued_drugs
        label: "[Mid Level Health Provider] No of individuals issued drugs"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: q2_health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q2_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q2_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q2_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q2_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Member Drug Delivered
        label_from_parameter:
        label_short: Member Drug Delivered
        map_layer:
        name: q2_health_screening.member_drug_Delivered
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
        field_group_variant: Member Drug Delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.member_drug_Delivered
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1897"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening__drugs.health_screening__drugs_drug_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: women_health_volunteer_population_verified
        label: "[Women Health Volunteer] Population Verified"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: women_health_volunteer_individuals_screened
        label: "[Women Health Volunteer] Individuals screened"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: women_health_volunteer_total_screenings
        label: "[Women Health Volunteer] Total Screenings"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: women_health_volunteer_mtm_beneficiaries_updated
        label: "[Women Health Volunteer] MTM Beneficiaries updated"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: women_health_volunteer_no_of_individuals_issued_drugs
        label: "[Women Health Volunteer] No of individuals issued drugs"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: q3_health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q3_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q3_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q3_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q3_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Member Drug Delivered
        label_from_parameter:
        label_short: Member Drug Delivered
        map_layer:
        name: q3_health_screening.member_drug_Delivered
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
        field_group_variant: Member Drug Delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.member_drug_Delivered
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1897"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening__drugs.health_screening__drugs_drug_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: population_verified_dph_mtm_staff_nurse
        label: Population Verified (DPH MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: individuals_screened_dph_mtm_staff_nurse
        label: Individuals screened (DPH MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: total_screenings_dph_mtm_staff_nurse
        label: Total Screenings (DPH MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mtm_beneficiries_updated_dph_mtm_staff_nurse
        label: MTM Beneficiries updated (DPH MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: no_of_individuals_issued_drugs_dph_mtm_staff_nurse
        label: No of individuals issued drugs (DPH MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: q4_health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q4_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q4_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q4_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q4_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Member Drug Delivered
        label_from_parameter:
        label_short: Member Drug Delivered
        map_layer:
        name: q4_health_screening.member_drug_Delivered
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
        field_group_variant: Member Drug Delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.member_drug_Delivered
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1897"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening__drugs.health_screening__drugs_drug_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: population_verified_dms_mtm_staff_nurse
        label: Population Verified (DMS MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: individuals_screened_dms_mtm_staff_nurse
        label: Individuals screened (DMS MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: total_screenings_dms_mtm_staff_nurse
        label: Total Screenings (DMS MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mtm_beneficiries_updated_dms_mtm_staff_nurse
        label: MTM Beneficiries updated (DMS MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: no_of_individuals_issued_drugs_dms_mtm_staff_nurse
        label: No of individuals issued drugs (DMS MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: q5_health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q5_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q5_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q5_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q5_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Member Drug Delivered
        label_from_parameter:
        label_short: Member Drug Delivered
        map_layer:
        name: q5_health_screening.member_drug_Delivered
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
        field_group_variant: Member Drug Delivered
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.member_drug_Delivered
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1897"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening__drugs.health_screening__drugs_drug_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: population_verified_dme_mtm_staff_nurse
        label: Population Verified (DME MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: individuals_screened_dme_mtm_staff_nurse
        label: Individuals screened (DME MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: total_screenings_dme_mtm_staff_nurse
        label: Total Screenings (DME MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: mtm_beneficiries_updated_dme_mtm_staff_nurse
        label: MTM Beneficiries updated (DME MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: no_of_individuals_issued_drugs_dme_mtm_staff_nurse
        label: No of individuals issued drugs (DME MTM Staff Nurse)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q6_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q6_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q6_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q6_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: palliative_care_mtm_beneficiaries_updated
        label: "[Palliative Care] MTM Beneficiaries updated"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: palliative_care_individuals_screened
        label: "[Palliative Care] Individuals screened"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: palliative_care_total_screenings
        label: "[Palliative Care] Total Screenings"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q7_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q7_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q7_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q7_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: physiotherapy_care_individuals_screened
        label: "[Physiotherapy Care] Individuals screened"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: physiotherapy_care_total_screenings
        label: "[Physiotherapy Care] Total Screenings"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: physiotherapy_care_mtm_beneficiaries_updated
        label: "[Physiotherapy Care] MTM Beneficiaries updated"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: q8_health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: q8_health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q8_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1988"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q8_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: capd_bags_beneficiaries_mtm_beneficiaries_updated
        label: "[CAPD Bags Beneficiaries] MTM Beneficiaries updated"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: capd_bags_beneficiaries_individuals_screened
        label: "[CAPD Bags Beneficiaries] Individuals screened"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: capd_bags_beneficiaries_total_screenings
        label: "[CAPD Bags Beneficiaries] Total Screenings"
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Facility registry PHC
        label_from_parameter:
        label_short: PHC
        map_layer:
        name: facility_registry.PHC
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
        view: facility_registry
        view_label: Facility registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: PHC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.PHC
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=171"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.facility_level = \"PHC\" THEN ${facility_type_name}\n\
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
        label: Facility registry HSC
        label_from_parameter:
        label_short: HSC
        map_layer:
        name: facility_registry.HSC
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
        view: facility_registry
        view_label: Facility registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: HSC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.HSC
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=180"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.facility_level = \"HSC\" THEN ${facility_type_name}\n\
          \        ELSE NULL\n        END "
        sql_case:
        filters:
        times_used: 0
      - type: string
        align: left
        measure: false
        dynamic: false
        can_pivot: false
        name: phc
        label: PHC
        value_format:
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: string
        align: left
        measure: false
        dynamic: false
        can_pivot: false
        name: hsc
        label: HSC
        value_format:
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      table_calculations:
      - label: "[DME MTM Staff Nurse] Population Verified \t\t\t"
        name: dme_mtm_staff_nurse_population_verified
        expression: if(${population_verified_dme_mtm_staff_nurse}>0,${population_verified_dme_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DMS MTM Staff Nurse] Population Verified \t\t\t"
        name: dms_mtm_staff_nurse_population_verified
        expression: if(${population_verified_dms_mtm_staff_nurse}>0,${population_verified_dms_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DPH MTM Staff Nurse] Population Verified \t\t\t"
        name: dph_mtm_staff_nurse_population_verified
        expression: if(${population_verified_dph_mtm_staff_nurse}>0,${population_verified_dph_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[Total MTM Staff Nurse] Population Verified \t\t\t\t"
        name: total_mtm_staff_nurse_population_verified
        expression: "${dme_mtm_staff_nurse_population_verified}+${dms_mtm_staff_nurse_population_verified}+${dph_mtm_staff_nurse_population_verified}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DME MTM Staff Nurse] Individuals screened \t"
        name: dme_mtm_staff_nurse_individuals_screened
        expression: if(${individuals_screened_dme_mtm_staff_nurse}>0,${individuals_screened_dme_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DMS MTM Staff Nurse] Individuals screened \t\t\t"
        name: dms_mtm_staff_nurse_individuals_screened
        expression: if(${individuals_screened_dms_mtm_staff_nurse}>0,${individuals_screened_dms_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DPH MTM Staff Nurse] Individuals screened \t\t\t"
        name: dph_mtm_staff_nurse_individuals_screened
        expression: if(${individuals_screened_dph_mtm_staff_nurse}>0,${individuals_screened_dph_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[Total MTM Staff Nurse] Individuals screened \t\t\t\t\t\t\t"
        name: total_mtm_staff_nurse_individuals_screened
        expression: "${dme_mtm_staff_nurse_individuals_screened}+${dms_mtm_staff_nurse_individuals_screened}+${dph_mtm_staff_nurse_individuals_screened}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DME MTM Staff Nurse] Total Screenings \t\t"
        name: dme_mtm_staff_nurse_total_screenings
        expression: if(${total_screenings_dme_mtm_staff_nurse}>0,${total_screenings_dme_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DMS MTM Staff Nurse] Total Screenings \t\t\t"
        name: dms_mtm_staff_nurse_total_screenings
        expression: if(${total_screenings_dms_mtm_staff_nurse}>0,${total_screenings_dms_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DPH MTM Staff Nurse] Total Screenings \t\t\t"
        name: dph_mtm_staff_nurse_total_screenings
        expression: if(${total_screenings_dph_mtm_staff_nurse}>0,${total_screenings_dph_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[Total MTM Staff Nurse] Total Screenings \t\t\t\t\t\t\t"
        name: total_mtm_staff_nurse_total_screenings
        expression: "${dme_mtm_staff_nurse_total_screenings}+ ${dms_mtm_staff_nurse_total_screenings}+\
          \ ${dph_mtm_staff_nurse_total_screenings}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DME MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t"
        name: dme_mtm_staff_nurse_mtm_beneficiaries_updated
        expression: if(${mtm_beneficiries_updated_dme_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dme_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DMS MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t"
        name: dms_mtm_staff_nurse_mtm_beneficiaries_updated
        expression: if(${mtm_beneficiries_updated_dms_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dms_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DPH MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t"
        name: dph_mtm_staff_nurse_mtm_beneficiaries_updated
        expression: if(${mtm_beneficiries_updated_dph_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dph_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[Total MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t\t\t\t\t"
        name: total_mtm_staff_nurse_mtm_beneficiaries_updated
        expression: " ${dme_mtm_staff_nurse_mtm_beneficiaries_updated}+${dms_mtm_staff_nurse_mtm_beneficiaries_updated}+${dph_mtm_staff_nurse_mtm_beneficiaries_updated}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DME MTM Staff Nurse] No of individuals issued drugs \t\t\t\t"
        name: dme_mtm_staff_nurse_no_of_individuals_issued_drugs
        expression: if(${no_of_individuals_issued_drugs_dme_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dme_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DMS MTM Staff Nurse] No of individuals issued drugs \t\t\t\t"
        name: dms_mtm_staff_nurse_no_of_individuals_issued_drugs
        expression: if(${no_of_individuals_issued_drugs_dms_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dms_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[DPH MTM Staff Nurse] No of individuals issued drugs \t\t\t\t"
        name: dph_mtm_staff_nurse_no_of_individuals_issued_drugs
        expression: if(${no_of_individuals_issued_drugs_dph_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dph_mtm_staff_nurse},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[Total MTM Staff Nurse] No of individuals issued drugs\t\t\t\t\t\t\
          \t"
        name: total_mtm_staff_nurse_no_of_individuals_issued_drugs
        expression: "${dme_mtm_staff_nurse_no_of_individuals_issued_drugs}+${dms_mtm_staff_nurse_no_of_individuals_issued_drugs}+${dph_mtm_staff_nurse_no_of_individuals_issued_drugs}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[CAPD Bags Beneficiaries] Individuals screened"
        name: capd_bags_beneficiaries_individuals_screened_1
        expression: if(${capd_bags_beneficiaries_individuals_screened}>0,${capd_bags_beneficiaries_individuals_screened},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[CAPD Bags Beneficiaries] Total Screenings"
        name: capd_bags_beneficiaries_total_screenings_1
        expression: if(${capd_bags_beneficiaries_total_screenings}>0,${capd_bags_beneficiaries_total_screenings},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "[CAPD Bags Beneficiaries] MTM Beneficiaries updated"
        name: capd_bags_beneficiaries_mtm_beneficiaries_updated_1
        expression: if(${capd_bags_beneficiaries_mtm_beneficiaries_updated}>0,${capd_bags_beneficiaries_mtm_beneficiaries_updated},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      pivots: []
    sorts: [q7_health_history.mtm_beneficiary_v2_count desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${population_verified_dme_mtm_staff_nurse}>0,${population_verified_dme_mtm_staff_nurse},0)',
        label: "[DME MTM Staff Nurse] Population Verified \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dme_mtm_staff_nurse_population_verified,
        _type_hint: number}, {category: table_calculation, expression: 'if(${population_verified_dms_mtm_staff_nurse}>0,${population_verified_dms_mtm_staff_nurse},0)',
        label: "[DMS MTM Staff Nurse] Population Verified \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dms_mtm_staff_nurse_population_verified,
        _type_hint: number}, {category: table_calculation, expression: 'if(${population_verified_dph_mtm_staff_nurse}>0,${population_verified_dph_mtm_staff_nurse},0)',
        label: "[DPH MTM Staff Nurse] Population Verified \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dph_mtm_staff_nurse_population_verified,
        _type_hint: number}, {category: table_calculation, expression: "${dme_mtm_staff_nurse_population_verified}+${dms_mtm_staff_nurse_population_verified}+${dph_mtm_staff_nurse_population_verified}",
        label: "[Total MTM Staff Nurse] Population Verified \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_staff_nurse_population_verified,
        _type_hint: number}, {category: table_calculation, expression: 'if(${individuals_screened_dme_mtm_staff_nurse}>0,${individuals_screened_dme_mtm_staff_nurse},0)',
        label: "[DME MTM Staff Nurse] Individuals screened \t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dme_mtm_staff_nurse_individuals_screened,
        _type_hint: number}, {category: table_calculation, expression: 'if(${individuals_screened_dms_mtm_staff_nurse}>0,${individuals_screened_dms_mtm_staff_nurse},0)',
        label: "[DMS MTM Staff Nurse] Individuals screened \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dms_mtm_staff_nurse_individuals_screened,
        _type_hint: number}, {category: table_calculation, expression: 'if(${individuals_screened_dph_mtm_staff_nurse}>0,${individuals_screened_dph_mtm_staff_nurse},0)',
        label: "[DPH MTM Staff Nurse] Individuals screened \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dph_mtm_staff_nurse_individuals_screened,
        _type_hint: number}, {category: table_calculation, expression: "${dme_mtm_staff_nurse_individuals_screened}+${dms_mtm_staff_nurse_individuals_screened}+${dph_mtm_staff_nurse_individuals_screened}",
        label: "[Total MTM Staff Nurse] Individuals screened \t\t\t\t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_staff_nurse_individuals_screened,
        _type_hint: number}, {category: table_calculation, expression: 'if(${total_screenings_dme_mtm_staff_nurse}>0,${total_screenings_dme_mtm_staff_nurse},0)',
        label: "[DME MTM Staff Nurse] Total Screenings \t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dme_mtm_staff_nurse_total_screenings,
        _type_hint: number}, {category: table_calculation, expression: 'if(${total_screenings_dms_mtm_staff_nurse}>0,${total_screenings_dms_mtm_staff_nurse},0)',
        label: "[DMS MTM Staff Nurse] Total Screenings \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dms_mtm_staff_nurse_total_screenings,
        _type_hint: number}, {category: table_calculation, expression: 'if(${total_screenings_dph_mtm_staff_nurse}>0,${total_screenings_dph_mtm_staff_nurse},0)',
        label: "[DPH MTM Staff Nurse] Total Screenings \t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dph_mtm_staff_nurse_total_screenings,
        _type_hint: number}, {category: table_calculation, expression: "${dme_mtm_staff_nurse_total_screenings}+\
          \ ${dms_mtm_staff_nurse_total_screenings}+ ${dph_mtm_staff_nurse_total_screenings}",
        label: "[Total MTM Staff Nurse] Total Screenings \t\t\t\t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_mtm_staff_nurse_total_screenings,
        _type_hint: number}, {category: table_calculation, expression: 'if(${mtm_beneficiries_updated_dme_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dme_mtm_staff_nurse},0)',
        label: "[DME MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dme_mtm_staff_nurse_mtm_beneficiaries_updated,
        _type_hint: number}, {category: table_calculation, expression: 'if(${mtm_beneficiries_updated_dms_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dms_mtm_staff_nurse},0)',
        label: "[DMS MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dms_mtm_staff_nurse_mtm_beneficiaries_updated,
        _type_hint: number}, {category: table_calculation, expression: 'if(${mtm_beneficiries_updated_dph_mtm_staff_nurse}>0,${mtm_beneficiries_updated_dph_mtm_staff_nurse},0)',
        label: "[DPH MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dph_mtm_staff_nurse_mtm_beneficiaries_updated,
        _type_hint: number}, {category: table_calculation, expression: " ${dme_mtm_staff_nurse_mtm_beneficiaries_updated}+${dms_mtm_staff_nurse_mtm_beneficiaries_updated}+${dph_mtm_staff_nurse_mtm_beneficiaries_updated}",
        label: "[Total MTM Staff Nurse] MTM Beneficiaries updated \t\t\t\t\t\t\t\t",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, table_calculation: total_mtm_staff_nurse_mtm_beneficiaries_updated,
        _type_hint: number}, {category: table_calculation, expression: 'if(${no_of_individuals_issued_drugs_dme_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dme_mtm_staff_nurse},0)',
        label: "[DME MTM Staff Nurse] No of individuals issued drugs \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dme_mtm_staff_nurse_no_of_individuals_issued_drugs,
        _type_hint: number}, {category: table_calculation, expression: 'if(${no_of_individuals_issued_drugs_dms_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dms_mtm_staff_nurse},0)',
        label: "[DMS MTM Staff Nurse] No of individuals issued drugs \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dms_mtm_staff_nurse_no_of_individuals_issued_drugs,
        _type_hint: number}, {category: table_calculation, expression: 'if(${no_of_individuals_issued_drugs_dph_mtm_staff_nurse}>0,${no_of_individuals_issued_drugs_dph_mtm_staff_nurse},0)',
        label: "[DPH MTM Staff Nurse] No of individuals issued drugs \t\t\t\t", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: dph_mtm_staff_nurse_no_of_individuals_issued_drugs,
        _type_hint: number}, {category: table_calculation, expression: "${dme_mtm_staff_nurse_no_of_individuals_issued_drugs}+${dms_mtm_staff_nurse_no_of_individuals_issued_drugs}+${dph_mtm_staff_nurse_no_of_individuals_issued_drugs}",
        label: "[Total MTM Staff Nurse] No of individuals issued drugs\t\t\t\t\t\t\
          \t", value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, table_calculation: total_mtm_staff_nurse_no_of_individuals_issued_drugs,
        _type_hint: number}, {category: table_calculation, expression: 'if(${capd_bags_beneficiaries_individuals_screened}>0,${capd_bags_beneficiaries_individuals_screened},0)',
        label: "[CAPD Bags Beneficiaries] Individuals screened", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: capd_bags_beneficiaries_individuals_screened_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${capd_bags_beneficiaries_total_screenings}>0,${capd_bags_beneficiaries_total_screenings},0)',
        label: "[CAPD Bags Beneficiaries] Total Screenings", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: capd_bags_beneficiaries_total_screenings_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${capd_bags_beneficiaries_mtm_beneficiaries_updated}>0,${capd_bags_beneficiaries_mtm_beneficiaries_updated},0)',
        label: "[CAPD Bags Beneficiaries] MTM Beneficiaries updated", value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: capd_bags_beneficiaries_mtm_beneficiaries_updated_1,
        _type_hint: number}]
    listen:
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Block Type: address_block_master.block_type_concat
      Directorate Name: facility_directorate_master.directorate_name
      Date: drugs_and_services.health_screening_last_update_date
      Age: health_screening.age
      Drugs issued from: facility_owner_master.owner_name
      Facility/Residence: health_screening.role_toggle
      PHC: facility_registry.PHC
      HSC: facility_registry.HSC
      Facility Type Name: facility_registry.facility_type_name
      Disease id: health_screening.Disease_id
      Service Name: health_screening.Services
      Role Name: health_screening.role_name
      Gender: family_member_master.gender
    row: 121
    col: 0
    width: 24
    height: 7
  - title: CMCHIS Beneficiaries
    name: CMCHIS Beneficiaries
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_master__family_insurances_insurance.family_master__family_insurances_insurance_id]
    filters:
      facility_directorate_master.directorate_name: ''
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
      District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    row: 12
    col: 0
    width: 4
    height: 3
  - name: PHR
    title: PHR
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [family_member_master.district_name, family_member_master.hud_name,
        family_member_master.block_name, facility_registry.facility_type_name, facility_registry.PHC,
        facility_registry.HSC, health_screening.Unique_Screening, health_screening.Total_Screening,
        family_member_master.Population_age_above_18, health_screening.Unique_Screening_above_18,
        family_member_master.resident_status_death_no_html, family_member_master.resident_status_resident_no_html,
        health_screening.Total_population_verified, family_member_master.UHID_tagged]
      filters:
        family_member_master.block_name: ''
        facility_registry.PHC_HSC_not_null_Filter: '0'
      sorts: [health_screening.Unique_Screening desc]
      limit: 5000
      dynamic_fields: [{table_calculation: of_screened_18, label: "% of Screened (18+)",
          expression: "(${health_screening.Unique_Screening_above_18}/${family_member_master.Population_age_above_18})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: resident_verified, label: "% Resident\
            \ Verified", expression: "(${family_member_master.resident_status_resident_no_html}/${health_screening.Total_population_verified})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      hidden_fields: [facility_registry.facility_type_name]
      join_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.MTM_Diabetes_hypertension, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy, health_screening.MTM_dialysis_capd, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count, health_screening.Confirmed_Hypertension_no_html,
        health_screening.Controlled_Hypertension_no_html, health_screening.Confirmed_Diabetes_mellitus_no_html,
        health_screening.Controlled_Diabetes_Mellitus_no_html, health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html,
        health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html, family_member_master.block_name,
        facility_registry.facility_type_name]
      sorts: [health_screening.MTM_Diabetes_hypertension desc]
      limit: 5000
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiary_at_least_one_condition,
          label: Confirmed MTM Beneficiary (at least one condition), expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: confirmed_hypertension, label: "% Confirmed Hypertension",
          expression: "(${health_screening.Confirmed_Hypertension_no_html}/${confirmed_mtm_beneficiary_at_least_one_condition})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: confirmed_diabetes, label: "% Confirmed\
            \ Diabetes", expression: "(${health_screening.Confirmed_Diabetes_mellitus_no_html}/${confirmed_mtm_beneficiary_at_least_one_condition})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: confirmed_both, label: "% Confirmed\
            \  Both", expression: "(${health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html}/${confirmed_mtm_beneficiary_at_least_one_condition})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: controlled_hypertension, label: "%\
            \ Controlled  Hypertension", expression: "(${health_screening.Controlled_Hypertension_no_html}/${health_screening.Confirmed_Hypertension_no_html})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: controlled_diabetes, label: "%\
            \ Controlled Diabetes", expression: "(${health_screening.Controlled_Diabetes_Mellitus_no_html}/${health_screening.Confirmed_Diabetes_mellitus_no_html})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: controlled_both, label: "% Controlled\
            \  Both", expression: "(${health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html}/${health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html})*100",
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
      - field_name: facility_registry.facility_type_name
        source_field_name: facility_registry.facility_type_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name, facility_registry.facility_type_name]
      filters:
        facility_directorate_master.directorate_name: DME
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 500
      dynamic_fields: [{table_calculation: dme, label: dme, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_history.mtm_beneficiary_v2_count, health_screening.mtm_beneficiary_v1_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
      - field_name: facility_registry.facility_type_name
        source_field_name: facility_registry.facility_type_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name, facility_registry.facility_type_name]
      filters:
        facility_directorate_master.directorate_name: DMS
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 500
      dynamic_fields: [{table_calculation: dms, label: dms, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        dms]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
      - field_name: facility_registry.facility_type_name
        source_field_name: facility_registry.facility_type_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        facility_directorate_master.directorate_name: DPH
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: dph, label: dph, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: dph_2, label: DPH, expression: 'if(${dph}>0,${dph},0)',
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        dph]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        facility_directorate_master.directorate_name: PVT
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: pvt, label: pvt, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: pvt_2, label: PVT, expression: 'if(${pvt}>0,${pvt},0)',
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        pvt]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      limit: 500
      dynamic_fields: [{table_calculation: total, label: Total, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, family_member_master.block_name,
        health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      family_member_master.district_name: left
      family_member_master.hud_name: left
      family_member_master.block_name: left
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, family_member_master.hud_name,
      family_member_master.block_name, phc, hsc, family_member_master.UHID_tagged,
      family_member_master.resident_status_resident_no_html, resident_verified_1,
      family_member_master.resident_status_death_no_html, health_screening.Unique_Screening,
      health_screening.Total_Screening, family_member_master.Population_age_above_18,
      health_screening.Unique_Screening_above_18, of_screened_18, health_screening.Confirmed_Hypertension_no_html,
      confirmed_hypertension, health_screening.Controlled_Hypertension_no_html, controlled_hypertension_1,
      health_screening.Confirmed_Diabetes_mellitus_no_html, confirmed_diabetes, health_screening.Controlled_Diabetes_Mellitus_no_html,
      controlled_diabetes_1, health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html,
      confirmed_both, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html,
      controlled_both_1, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_dialysis_capd, confirmed_mtm_beneficiary_at_least_one_condition,
      dme_1, dms_1, dph_1, pvt_1, total_1]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      facility_registry.facility_level: PHC
      q2_facility_registry.facility_level: HSC
      family_member_master.resident_status_resident_no_html: Resident Population Verified
      family_member_master.resident_status_death_no_html: Death Verified
      health_screening.Unique_Screening: Total individuals Screenings (at least once)
      health_screening.Total_Screening: Total Screenings (all touch points)
      family_member_master.Population_age_above_18: 18+ Population
      health_screening.Unique_Screening_above_18: 18+ Screened at least once (in last
        1 year)
      health_screening.Confirmed_Hypertension_no_html: Confirmed Hypertension
      health_screening.Controlled_Hypertension_no_html: Controlled Hypertension
      health_screening.Confirmed_Diabetes_mellitus_no_html: Confirmed Diabetes
      health_screening.Controlled_Diabetes_Mellitus_no_html: Controlled Diabetes
      health_screening.MTM_Diabetes_hypertension: Both Confirmed
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html: Confirmed  Both
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html: Controlled
        Both
      family_member_master.UHID_tagged: PHR Population (UHID tagged)
    series_column_widths:
      health_screening.Unique_Screening: 130
      family_member_master.resident_status_resident_no_html: 133
      health_screening.Unique_Screening_above_18: 149
      health_screening.MTM_Diabetes_hypertension: 108
      health_screening.MTM_palliative_care: 95
      health_screening.MTM_physiotherapy: 123
      health_screening.MTM_dialysis_capd: 94
      confirmed_mtm_beneficiary_at_least_one_condition: 162
      health_screening.Controlled_Diabetes_Mellitus_no_html: 95
      health_screening.Controlled_Hypertension_no_html: 110
      confirmed_hypertension: 140
      health_screening.Confirmed_Hypertension_no_html: 117
      health_screening.Confirmed_Diabetes_mellitus_no_html: 110
      confirmed_diabetes: 129
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html: 97
      confirmed_both: 101
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html: 78
      of_screened_18: 110
      controlled_hypertension: 140
      controlled_diabetes: 124
      controlled_both: 118
      facility_registry.block_name: 111
      controlled_hypertension_1: 140
      controlled_diabetes_1: 140
      controlled_both_1: 140
    series_cell_visualizations:
      health_screening.Unique_Screening:
        is_active: false
    series_text_format:
      phc:
        align: center
      hsc:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fafff5"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [health_screening.Total_population_verified, health_screening.mtm_beneficiary_v1_count,
      health_history.mtm_beneficiary_v2_count, health_screening.MTM_Diabetes_hypertension,
      q3_health_screening.mtm_beneficiary_v1_count, q3_health_history.mtm_beneficiary_v2_count,
      q4_health_screening.mtm_beneficiary_v1_count, q4_health_history.mtm_beneficiary_v2_count,
      q5_health_screening.mtm_beneficiary_v1_count, q5_health_history.mtm_beneficiary_v2_count,
      q6_health_screening.mtm_beneficiary_v1_count, q6_health_history.mtm_beneficiary_v2_count,
      q7_health_screening.mtm_beneficiary_v1_count, q7_health_history.mtm_beneficiary_v2_count,
      dme, dms, dph, dph_2, pvt, pvt_2, total, facility_registry.PHC, facility_registry.HSC,
      facility_registry.facility_type_name, q2_health_screening.mtm_beneficiary_v1_count,
      q2_health_history.mtm_beneficiary_v2_count, resident_verified, controlled_hypertension,
      controlled_diabetes, controlled_both]
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
        label: Health Screening Unique Screening
        label_from_parameter:
        label_short: Unique Screening
        map_layer:
        name: health_screening.Unique_Screening
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
        field_group_variant: Unique Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1303"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
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
        label: Health Screening Total Screening
        label_from_parameter:
        label_short: Total Screening
        map_layer:
        name: health_screening.Total_Screening
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
        field_group_variant: Total Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_Screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1353"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
        label: Family Member Master Population Age Above 18
        label_from_parameter:
        label_short: Population Age Above 18
        map_layer:
        name: family_member_master.Population_age_above_18
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
        field_group_variant: Population Age Above 18
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.Population_age_above_18
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=476"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.age
          condition: ">=18"
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
        label: Health Screening Unique Screening Above 18
        label_from_parameter:
        label_short: Unique Screening Above 18
        map_layer:
        name: health_screening.Unique_Screening_above_18
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
        field_group_variant: Unique Screening Above 18
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Unique_Screening_above_18
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1311"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.age
          condition: ">=18"
        - field: health_screening.last_update_date
          condition: 1 year
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
        label: Family Member Master Death Count no html
        label_from_parameter:
        label_short: Death Count no html
        map_layer:
        name: family_member_master.resident_status_death_no_html
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
        view: family_member_master
        view_label: Family Member Master
        dynamic: false
        week_start_day: monday
        original_view: family_member_master
        dimension_group:
        error:
        field_group_variant: Death Count no html
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_death_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=419"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Dead,Death
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
        label: Family Member Master Resident Count no html
        label_from_parameter:
        label_short: Resident Count no html
        map_layer:
        name: family_member_master.resident_status_resident_no_html
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
        field_group_variant: Resident Count no html
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.resident_status_resident_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=427"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: family_member_master.resident_status
          condition: Resident,resident
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
        label: Health Screening Total Population Verified
        label_from_parameter:
        label_short: Total Population Verified
        map_layer:
        name: health_screening.Total_population_verified
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
        field_group_variant: Total Population Verified
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Total_population_verified
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1702"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: |-
          Case
                    When ${family_member_master.resident_status} != 'NULL' then ${family_member_master.member_id}
                    END
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
        label: Family Member Master UHID Tagged
        label_from_parameter:
        label_short: UHID Tagged
        map_layer:
        name: family_member_master.UHID_tagged
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
        field_group_variant: UHID Tagged
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.UHID_tagged
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=613"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.member_id"
        sql_case:
        filters:
        - field: family_member_master.unique_health_id
          condition: "-NULL"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: of_screened_18
        label: "% of Screened (18+)"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Health Screening MTM Diabetes Hypertension
        label_from_parameter:
        label_short: MTM Diabetes Hypertension
        map_layer:
        name: health_screening.MTM_Diabetes_hypertension
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
        field_group_variant: MTM Diabetes Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_Diabetes_hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1627"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_diabetes_mellitus
          condition: "%yes%"
        - field: health_screening.additional_services_hypertension
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
        label: Health Screening MTM Palliative Care
        label_from_parameter:
        label_short: MTM Palliative Care
        map_layer:
        name: health_screening.MTM_palliative_care
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
        field_group_variant: MTM Palliative Care
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_palliative_care
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1648"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_palliative_care
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
        label: Health Screening MTM Physiotherapy
        label_from_parameter:
        label_short: MTM Physiotherapy
        map_layer:
        name: health_screening.MTM_physiotherapy
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
        field_group_variant: MTM Physiotherapy
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_physiotherapy
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1665"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_physiotherapy
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
        label: Health Screening MTM Dialysis Capd
        label_from_parameter:
        label_short: MTM Dialysis Capd
        map_layer:
        name: health_screening.MTM_dialysis_capd
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
        field_group_variant: MTM Dialysis Capd
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_dialysis_capd
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1642"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_dialysis_capd
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
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
        label: Health Screening Confirmed Hypertension No HTML
        label_from_parameter:
        label_short: Confirmed Hypertension No HTML
        map_layer:
        name: health_screening.Confirmed_Hypertension_no_html
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
        field_group_variant: Confirmed Hypertension No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1490"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
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
        label: Health Screening Controlled Hypertension No HTML
        label_from_parameter:
        label_short: Controlled Hypertension No HTML
        map_layer:
        name: health_screening.Controlled_Hypertension_no_html
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
        field_group_variant: Controlled Hypertension No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1531"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dia_bp
          condition: "<90"
        - field: health_screening.screening_values_sys_bp
          condition: "<140"
        - field: health_screening.screening_values_ht_screening
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
        label: Health Screening Confirmed Diabetes Mellitus No HTML
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus No HTML
        map_layer:
        name: health_screening.Confirmed_Diabetes_mellitus_no_html
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
        field_group_variant: Confirmed Diabetes Mellitus No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Diabetes_mellitus_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1473"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dm_screening
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
        label: Health Screening Controlled Diabetes Mellitus No HTML
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus No HTML
        map_layer:
        name: health_screening.Controlled_Diabetes_Mellitus_no_html
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
        field_group_variant: Controlled Diabetes Mellitus No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Diabetes_Mellitus_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1552"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_rbs
          condition: "<140"
        - field: health_screening.screening_values_dm_screening
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
        label: Health Screening Confirmed Hypertension and DiabetesMellitus No HTML
        label_from_parameter:
        label_short: Confirmed Hypertension and DiabetesMellitus No HTML
        map_layer:
        name: health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html
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
        field_group_variant: Confirmed Hypertension and DiabetesMellitus No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension_and_DiabetesMellitus_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1509"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
          condition: "%Known HT%"
        - field: health_screening.screening_values_dm_screening
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
        label: Health Screening Controlled Hypertension and Diabetes Mellitus No HTML
        label_from_parameter:
        label_short: Controlled Hypertension and Diabetes Mellitus No HTML
        map_layer:
        name: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html
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
        field_group_variant: Controlled Hypertension and Diabetes Mellitus No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus_no_html
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1575"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dia_bp
          condition: "<90"
        - field: health_screening.screening_values_sys_bp
          condition: "<140"
        - field: health_screening.screening_values_ht_screening
          condition: "%Known HT%"
        - field: health_screening.screening_values_rbs
          condition: "<140"
        - field: health_screening.screening_values_dm_screening
          condition: "%Known DM%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiary_at_least_one_condition
        label: Confirmed MTM Beneficiary (at least one condition)
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_hypertension
        label: "% Confirmed Hypertension"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_diabetes
        label: "% Confirmed Diabetes"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_both
        label: "% Confirmed  Both"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
        sorted:
          desc: true
          sort_index: 0
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: controlled_hypertension
        label: "% Controlled  Hypertension"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: controlled_diabetes
        label: "% Controlled Diabetes"
        value_format: "#,##0.00"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: controlled_both
        label: "% Controlled  Both"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q2_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q2_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: dme
        label: dme
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q3_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q3_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: dms
        label: dms
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q4_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q4_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: dph
        label: dph
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: dph_2
        label: DPH
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q5_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q5_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: pvt
        label: pvt
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: pvt_2
        label: PVT
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
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
        label: Health Screening Mtm Beneficiary V1 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V1 Count
        map_layer:
        name: q6_health_screening.mtm_beneficiary_v1_count
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
        field_group_variant: Mtm Beneficiary V1 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.mtm_beneficiary_v1_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=2002"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.additional_services
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
        label: Health History Mtm Beneficiary V2 Count
        label_from_parameter:
        label_short: Mtm Beneficiary V2 Count
        map_layer:
        name: q6_health_history.mtm_beneficiary_v2_count
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
        view: health_history
        view_label: Health History
        dynamic: false
        week_start_day: monday
        original_view: health_history
        dimension_group:
        error:
        field_group_variant: Mtm Beneficiary V2 Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.mtm_beneficiary_v2_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=722"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary
          condition: "%yes%,-%2021-07-07%00:00:00%"
        times_used: 0
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: total
        label: Total
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
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
        label: Facility registry Facility Type Name
        label_from_parameter:
        label_short: Facility Type Name
        map_layer:
        name: facility_registry.facility_type_name
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
        view: facility_registry
        view_label: Facility registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Type Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_type_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=248"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_type_name "
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
        label: Facility registry PHC
        label_from_parameter:
        label_short: PHC
        map_layer:
        name: facility_registry.PHC
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
        view: facility_registry
        view_label: Facility registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: PHC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.PHC
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=171"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.facility_level = \"PHC\" THEN ${facility_type_name}\n\
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
        label: Facility registry HSC
        label_from_parameter:
        label_short: HSC
        map_layer:
        name: facility_registry.HSC
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
        view: facility_registry
        view_label: Facility registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: HSC
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.HSC
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=180"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "CASE\n        WHEN ${TABLE}.facility_level = \"HSC\" THEN ${facility_type_name}\n\
          \        ELSE NULL\n        END "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: DME
        name: dme_1
        expression: if(${dme}>0,${dme},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: DMS
        name: dms_1
        expression: if(${dms}>0,${dms},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      - label: DPH
        name: dph_1
        expression: if(${dph}>0,${dph},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      - label: PVT
        name: pvt_1
        expression: if(${pvt}>0,${pvt},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "#,##0"
        is_numeric: true
      - label: Total
        name: total_1
        expression: "${dme_1}+${dms_1}+${dph_1}+${pvt_1}"
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: PHC
        name: phc
        expression: if(is_null(${facility_registry.PHC}),"-",${facility_registry.PHC})
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
        pivoted: false
      - label: HSC
        name: hsc
        expression: if(is_null(${facility_registry.HSC}),"-",${facility_registry.HSC})
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
        pivoted: false
      - label: "% Resident Verified"
        name: resident_verified_1
        expression: if(${resident_verified}>0,${resident_verified},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: "% Controlled Hypertension"
        name: controlled_hypertension_1
        expression: if(${controlled_hypertension}>0,${controlled_hypertension},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: "% Controlled Diabetes"
        name: controlled_diabetes_1
        expression: if(${controlled_diabetes}>0,${controlled_diabetes},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: "% Controlled Both"
        name: controlled_both_1
        expression: if(${controlled_both}>0,${controlled_both},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      pivots: []
    sorts: [confirmed_both desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${dme}>0,${dme},0)',
        label: DME, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: dme_1, _type_hint: number}, {category: table_calculation,
        expression: 'if(${dms}>0,${dms},0)', label: DMS, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: dms_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${dph}>0,${dph},0)',
        label: DPH, value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        table_calculation: dph_1, _type_hint: number}, {category: table_calculation,
        expression: 'if(${pvt}>0,${pvt},0)', label: PVT, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: pvt_1,
        _type_hint: number}, {category: table_calculation, expression: "${dme_1}+${dms_1}+${dph_1}+${pvt_1}",
        label: Total, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\\
          ,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: total_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(is_null(${facility_registry.PHC}),"-",${facility_registry.PHC})',
        label: PHC, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: phc, _type_hint: string}, {category: table_calculation,
        expression: 'if(is_null(${facility_registry.HSC}),"-",${facility_registry.HSC})',
        label: HSC, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: hsc, _type_hint: string}, {category: table_calculation,
        expression: 'if(${resident_verified}>0,${resident_verified},0)', label: "%\
          \ Resident Verified", value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: resident_verified_1,
        _type_hint: number}, {category: table_calculation, expression: 'if(${controlled_hypertension}>0,${controlled_hypertension},0)',
        label: "% Controlled Hypertension", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: controlled_hypertension_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${controlled_diabetes}>0,${controlled_diabetes},0)',
        label: "% Controlled Diabetes", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: controlled_diabetes_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${controlled_both}>0,${controlled_both},0)',
        label: "% Controlled Both", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: controlled_both_1, _type_hint: number}]
    listen:
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    - District Name: family_member_master.district_name
      Hud Name: family_member_master.hud_name
      Block Name: family_member_master.block_name
      Gender: family_member_master.gender
    row: 114
    col: 0
    width: 24
    height: 7
  filters:
  - name: District Name
    title: District Name
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
    listens_to_filters: [Hud Name, Block Name]
    field: family_member_master.district_name
  - name: Hud Name
    title: Hud Name
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
    listens_to_filters: [District Name, Block Name]
    field: family_member_master.hud_name
  - name: Block Name
    title: Block Name
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
    listens_to_filters: [District Name, Hud Name]
    field: family_member_master.block_name
  - name: Block Type
    title: Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - Corporation
      - Municipality
      - Rural Block
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: address_block_master.block_type_concat
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
    explore: family_member_master
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
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
    field: drugs_and_services.health_screening_last_update_date
  - name: Age
    title: Age
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
    field: health_screening.age
  - name: Drugs issued from
    title: Drugs issued from
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options:
      - Govt
      - Pvt
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: facility_owner_master.owner_name
  - name: Facility/Residence
    title: Facility/Residence
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_toggle
  - name: PHC
    title: PHC
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
    field: facility_registry.PHC
  - name: HSC
    title: HSC
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
    field: facility_registry.HSC
  - name: Facility Type Name
    title: Facility Type Name
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
    field: facility_registry.facility_type_name
  - name: Disease id
    title: Disease id
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
    field: health_screening.Disease_id
  - name: Service Name
    title: Service Name
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
    field: health_screening.Services
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
  - name: Gender
    title: Gender
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
    field: family_member_master.gender
  - name: Individuals/Visits
    title: Individuals/Visits
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: screening_counts.Individuals_Visits
