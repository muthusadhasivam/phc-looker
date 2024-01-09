- dashboard: facility_performance_v2_1_0
  title: Facility Performance v2.1.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 0MlAZfdjiWUGbXZ5FZDWdq
  elements:
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
      <center>Facility Performance - Use to understand the performances of facilities in TN</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - title: Top 10 Facility Performance
    name: Top 10 Facility Performance
    model: tnphr-prod-kpi
    explore: screening
    type: looker_bar
    fields: [screening.user_facility_name, screening.Total_screenings]
    filters:
      screening.user_facility_name: "-NULL"
    sorts: [screening.Total_screenings desc]
    limit: 5000
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      screening.Total_screenings: "#7CB342"
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
    defaults_version: 1
    listen:
      Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 5
    col: 0
    width: 6
    height: 12
  - name: Facility Synced
    type: text
    title_text: Facility Synced
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 20
    width: 4
    height: 3
  - name: Family Facility
    type: text
    title_text: Family Facility
    subtitle_text: ''
    body_text: ''
    row: 11
    col: 20
    width: 4
    height: 3
  - name: Individual Facility
    type: text
    title_text: Individual Facility
    subtitle_text: ''
    body_text: ''
    row: 8
    col: 20
    width: 4
    height: 3
  - name: Drug Delivered
    type: text
    title_text: Drug Delivered
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 20
    width: 4
    height: 3
  - title: Last 24 hours
    name: Last 24 hours
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.Facility_Drugs_delivered_last_24_hours, drugs.Facility_Drugs_delivered_last_48_hours]
    limit: 500
    dynamic_fields: [{table_calculation: last_24_hours, label: Last 24 hours, expression: "${drugs.Facility_Drugs_delivered_last_24_hours}-${drugs.Facility_Drugs_delivered_last_48_hours}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [drugs.Facility_Drugs_delivered_last_48_hours]
    listen:
      Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    row: 14
    col: 6
    width: 4
    height: 3
  - title: Last 30 days
    name: Last 30 days
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.Facility_Drugs_delivered_last_30_days, drugs.Facility_Drugs_delivered_last_60_days]
    limit: 500
    dynamic_fields: [{table_calculation: last_30_days, label: Last 30 days, expression: "${drugs.Facility_Drugs_delivered_last_30_days}-${drugs.Facility_Drugs_delivered_last_60_days}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [drugs.Facility_Drugs_delivered_last_60_days]
    listen:
      Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    row: 14
    col: 10
    width: 4
    height: 3
  - title: Average drugs delivered per day
    name: Average drugs delivered per day
    model: tnphr-prod-kpi
    explore: drugs
    type: single_value
    fields: [drugs.Average_Facility_Drugs, drugs.Average_Facility_Drugs_60_days]
    limit: 500
    dynamic_fields: [{table_calculation: average_drugs_delivered_per_day, label: Average
          drugs delivered per day, expression: "${drugs.Average_Facility_Drugs}-${drugs.Average_Facility_Drugs_60_days}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [drugs.Average_Facility_Drugs_60_days]
    listen:
      Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    row: 14
    col: 14
    width: 6
    height: 3
  - title: Last 24 hours
    name: Last 24 hours (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Facility_Individual_screening_last_24_hours, screening.Facility_Individual_screening_last_48_hours]
    filters:
      screening.citizen_village_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: last_24_hours, label: Last 24 hours, expression: "${screening.Facility_Individual_screening_last_24_hours}-${screening.Facility_Individual_screening_last_48_hours}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.Facility_Individual_screening_last_48_hours]
    listen:
      Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 8
    col: 6
    width: 4
    height: 3
  - title: Last 30 days
    name: Last 30 days (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Facility_Individual_screening_last_30_days, screening.Facility_Individual_screening_last_60_days]
    filters:
      screening.citizen_village_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: last_30_days, label: Last 30 days, expression: "${screening.Facility_Individual_screening_last_30_days}-${screening.Facility_Individual_screening_last_60_days}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.Facility_Individual_screening_last_60_days]
    listen:
      Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 8
    col: 10
    width: 4
    height: 3
  - title: Average screenings per day
    name: Average screenings per day
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Facility_avg_Individual_screening, screening.Facility_avg_Individual_screening_last_60_days]
    filters:
      screening.citizen_village_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: average_screenings_per_day, label: Average
          screenings per day, expression: "${screening.Facility_avg_Individual_screening}-${screening.Facility_avg_Individual_screening_last_60_days}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.Facility_avg_Individual_screening_last_60_days]
    listen:
      Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    row: 8
    col: 14
    width: 6
    height: 3
  - title: Last 24 Hours
    name: Last 24 Hours
    model: tnphr-prod-kpi
    explore: user
    type: single_value
    fields: [user.facility_synced_in_last_24_hours, user.facility_synced_in_last_48_hours]
    limit: 500
    dynamic_fields: [{table_calculation: last_24_hours, label: Last 24 hours, expression: "${user.facility_synced_in_last_48_hours}-${user.facility_synced_in_last_24_hours}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Last 24 hours
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    hidden_fields: [user.facility_synced_in_last_48_hours]
    listen:
      Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    row: 5
    col: 6
    width: 4
    height: 3
  - title: Last 30 days
    name: Last 30 days (3)
    model: tnphr-prod-kpi
    explore: user
    type: single_value
    fields: [user.facility_synced_in_last_60_days, user.facility_synced_in_last_30_days]
    limit: 500
    dynamic_fields: [{table_calculation: last_30_days, label: Last 30 Days, expression: "${user.facility_synced_in_last_60_days}-${user.facility_synced_in_last_30_days}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [user.facility_synced_in_last_60_days]
    listen:
      Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    row: 5
    col: 10
    width: 4
    height: 3
  - title: Average Synced per day
    name: Average Synced per day
    model: tnphr-prod-kpi
    explore: user
    type: single_value
    fields: [user.Average_facilities_synced_last_60_days, user.Average_facilities_synced]
    limit: 500
    dynamic_fields: [{table_calculation: average_synced_per_day, label: Average Synced
          per day, expression: "${user.Average_facilities_synced_last_60_days}-${user.Average_facilities_synced}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [user.Average_facilities_synced_last_60_days]
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
      Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    row: 5
    col: 14
    width: 6
    height: 3
  - title: Last 24 Hours
    name: Last 24 Hours (2)
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.facility_family_last_24_hours, family.facility_family_last_48_hours]
    limit: 5000
    dynamic_fields: [{table_calculation: last_24_hours, label: Last 24 hours, expression: "${family.facility_family_last_48_hours}-${family.facility_family_last_24_hours}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [family.facility_family_last_48_hours]
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
      Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    row: 11
    col: 6
    width: 4
    height: 3
  - title: Last 30 days
    name: Last 30 days (4)
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.facility_family_last_30_days, family.change_facility_family_last_60_days]
    limit: 5000
    dynamic_fields: [{table_calculation: last_30_days, label: Last 30 days, expression: "${family.change_facility_family_last_60_days}-${family.facility_family_last_30_days}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [family.change_facility_family_last_60_days]
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
      Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    row: 11
    col: 10
    width: 4
    height: 3
  - title: Average screenings per day
    name: Average screenings per day (2)
    model: tnphr-prod-kpi
    explore: family
    type: single_value
    fields: [family.change_Facility_avg_family_screening, family.Facility_avg_family_screening]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screenings_per_day, label: Average
          screenings per day, expression: "${family.change_Facility_avg_family_screening}-${family.Facility_avg_family_screening}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [family.change_Facility_avg_family_screening]
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
      Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    row: 11
    col: 14
    width: 6
    height: 3
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Facility_Individual_screening_last_24_hours,
        screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
        screening.citizen_district_gid, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.unique_drugs_count]
      filters:
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
      sorts: [screening.citizen_district_name desc]
      limit: 5000
      hidden_fields: [screening.citizen_district_gid]
      join_fields: []
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.user_district_gid, user.facility_synced_in_last_24_hours, user.facility_synced_in_last_30_days,
        user.Average_facilities_synced, user.user_hud_gid]
      filters:
        user.user_district_gid: NOT NULL
        user.user_hud_gid: NOT NULL
      sorts: [user.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: user.user_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: user.user_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.family_district_gid, family.facility_family_last_24_hours, family.facility_family_last_30_days,
        family.Facility_avg_family_screening, family.family_hud_gid]
      filters:
        family.family_district_gid: NOT NULL
        family.family_hud_gid: NOT NULL
      sorts: [family.facility_family_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: family.family_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: family.family_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_gid, drugs.Facility_Drugs_delivered_last_24_hours,
        drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs,
        drugs.citizen_hud_gid]
      filters:
        drugs.citizen_district_gid: NOT NULL
        drugs.citizen_hud_gid: NOT NULL
      sorts: [drugs.Facility_Drugs_delivered_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: drugs.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_gid, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_hud_gid]
      filters:
        mtm_beneficiary.citizen_district_gid: NOT NULL
        mtm_beneficiary.citizen_hud_gid: NOT NULL
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: mtm_beneficiary.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, facility_synced_in_last_24_hours, facility_synced_in_last_30_days,
      average_facilities_synced, screening.Facility_Individual_screening_last_24_hours,
      screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
      family.facility_family_last_24_hours, family.facility_family_last_30_days, family.Facility_avg_family_screening,
      facility_drugs_delivered_last_24_hours, facility_drugs_delivered_last_30_days,
      average_facilities_synced_1, screening.unique_drugs_count, mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.unique_drugs_count: No. of individuals received drugs
      mtm_beneficiary.total_confirmed_MTM_beneficiary: Confirmed  MTM Beneficiaries
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_block_name: Community Block
    series_cell_visualizations:
      screening.Facility_Individual_screening_last_24_hours:
        is_active: false
      facility_synced_in_last_24_hours:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_gid:
        align: center
      facility_synced_in_last_24_hours:
        align: center
        bg_color: "#a4bced"
      facility_synced_in_last_30_days:
        align: center
        bg_color: "#a4bced"
      average_facilities_synced:
        bg_color: "#a4bced"
        align: center
      facility_drugs_delivered_last_24_hours:
        align: center
        bg_color: "#bce8e0"
      facility_drugs_delivered_last_30_days:
        align: center
        bg_color: "#bce8e0"
      average_facilities_synced_1:
        bg_color: "#bce8e0"
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: left
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
        label: Screening Facility Individual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Individual Screening Last 24 Hours
        map_layer:
        name: screening.Facility_Individual_screening_last_24_hours
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
        field_group_variant: Facility Individual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=871"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 1 days ago for 1 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Individual Screening Last 30 Days
        map_layer:
        name: screening.Facility_Individual_screening_last_30_days
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
        field_group_variant: Facility Individual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=893"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days ago for 30 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: screening.Facility_avg_Individual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_avg_Individual_screening
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=915"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${Facility_Individual_screening_last_30_days}/30"
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
        label: Screening Unique Drugs Count
        label_from_parameter:
        label_short: Unique Drugs Count
        map_layer:
        name: screening.unique_drugs_count
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
        field_group_variant: Unique Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_drugs_count
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
        - field: screening.is_citizen_1st_time_drug
          condition: 'yes'
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
        label: User Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: user.facility_synced_in_last_24_hours
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=165"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 1 days ago for 1 days
        - field: user.user_facility_name
          condition: "-NULL"
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
        label: User Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: user.facility_synced_in_last_30_days
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_30_days
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=187"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 30 days ago for 30 days
        - field: user.user_facility_name
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
        label: User Average Facilities Synced
        label_from_parameter:
        label_short: Average Facilities Synced
        map_layer:
        name: user.Average_facilities_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Average Facilities Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.Average_facilities_synced
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=209"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        label: Family Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: family.facility_family_last_24_hours
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_24_hours
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=207"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 1 days ago for 1 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: family.facility_family_last_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=226"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${families_count} "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: family.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Facility_avg_family_screening
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=244"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Drugs Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_24_hours
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=303"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
        - field: drugs.user_facility_name
          condition: "-NULL"
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
        label: Drugs Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_30_days
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=325"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        - field: drugs.user_facility_name
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
        label: Drugs Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: drugs.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Average_Facility_Drugs
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=347"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=334"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=131"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_district_name "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=125"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=168"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=162"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: screening.citizen_block_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: screening.citizen_block_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Facility Synced in last 24 hours
        name: facility_synced_in_last_24_hours
        expression: |-
          if(${user.facility_synced_in_last_24_hours}
          >0,${user.facility_synced_in_last_24_hours}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: |-
          if(${user.facility_synced_in_last_30_days}
          >0,${user.facility_synced_in_last_30_days}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced
        expression: if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 24 hours
        name: facility_drugs_delivered_last_24_hours
        expression: if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 30 days
        name: facility_drugs_delivered_last_30_days
        expression: if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced_1
        expression: if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)
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
    hidden_fields: [user.facility_synced_in_last_24_hours, user.facility_synced_in_last_30_days,
      user.Average_facilities_synced, drugs.Facility_Drugs_delivered_last_24_hours,
      drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "if(${user.facility_synced_in_last_24_hours}\n\
          >0,${user.facility_synced_in_last_24_hours}\n,0)", label: Facility Synced
          in last 24 hours, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: "if(${user.facility_synced_in_last_30_days}\n\
          >0,${user.facility_synced_in_last_30_days}\n,0)", label: Facility Synced
          in last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced, _type_hint: number}, {category: table_calculation,
        expression: 'if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)',
        label: Facility Drugs Delivered last 24 hours, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)',
        label: Facility Drugs Delivered last 30 days, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced_1, _type_hint: number}]
    listen:
    - Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    - Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    - Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    - Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    - Community  Block Type: mtm_beneficiary.citizen_block_type
      Community  Facility Name: mtm_beneficiary.citizen_facility_name
      Role Name: mtm_beneficiary.role_name
      " Date": mtm_beneficiary.record_update_date
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
    row: 26
    col: 0
    width: 24
    height: 9
  - name: 'District Wise '
    title: 'District Wise '
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.citizen_district_name, screening.Facility_Individual_screening_last_24_hours,
        screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
        screening.citizen_district_gid, screening.unique_drugs_count]
      filters:
        screening.citizen_district_gid: NOT NULL
      sorts: [screening.citizen_district_name desc]
      limit: 5000
      hidden_fields: [screening.citizen_district_gid]
      join_fields: []
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.user_district_gid, user.facility_synced_in_last_24_hours, user.facility_synced_in_last_30_days,
        user.Average_facilities_synced]
      filters:
        user.user_district_gid: NOT NULL
      sorts: [user.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: user.user_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.family_district_gid, family.facility_family_last_24_hours, family.facility_family_last_30_days,
        family.Facility_avg_family_screening]
      filters:
        family.family_district_gid: NOT NULL
      sorts: [family.facility_family_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: family.family_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_gid, drugs.Facility_Drugs_delivered_last_24_hours,
        drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs]
      filters:
        drugs.citizen_district_gid: NOT NULL
      sorts: [drugs.Facility_Drugs_delivered_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_gid, mtm_beneficiary.total_confirmed_MTM_beneficiary]
      filters:
        mtm_beneficiary.citizen_district_gid: NOT NULL
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, facility_synced_in_last_24_hours, facility_synced_in_last_30_days,
      average_facilities_synced, screening.Facility_Individual_screening_last_24_hours,
      screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
      family.facility_family_last_24_hours, family.facility_family_last_30_days, family.Facility_avg_family_screening,
      facility_drugs_delivered_last_24_hours, facility_drugs_delivered_last_30_days,
      average_facilities_synced_1, screening.unique_drugs_count, mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.unique_drugs_count: No. of individuals received drugs
      mtm_beneficiary.total_confirmed_MTM_beneficiary: Confirmed  MTM Beneficiaries
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_block_name: Community Block
    series_cell_visualizations:
      screening.Facility_Individual_screening_last_24_hours:
        is_active: false
      facility_synced_in_last_24_hours:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_gid:
        align: center
      facility_synced_in_last_24_hours:
        align: center
        bg_color: "#a4bced"
      facility_synced_in_last_30_days:
        align: center
        bg_color: "#a4bced"
      average_facilities_synced:
        bg_color: "#a4bced"
        align: center
      facility_drugs_delivered_last_24_hours:
        align: center
        bg_color: "#bce8e0"
      facility_drugs_delivered_last_30_days:
        align: center
        bg_color: "#bce8e0"
      average_facilities_synced_1:
        bg_color: "#bce8e0"
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: left
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
        label: Screening Facility Individual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Individual Screening Last 24 Hours
        map_layer:
        name: screening.Facility_Individual_screening_last_24_hours
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
        field_group_variant: Facility Individual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=871"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 1 days ago for 1 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Individual Screening Last 30 Days
        map_layer:
        name: screening.Facility_Individual_screening_last_30_days
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
        field_group_variant: Facility Individual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=893"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days ago for 30 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: screening.Facility_avg_Individual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_avg_Individual_screening
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=915"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${Facility_Individual_screening_last_30_days}/30"
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
        label: Screening Unique Drugs Count
        label_from_parameter:
        label_short: Unique Drugs Count
        map_layer:
        name: screening.unique_drugs_count
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
        field_group_variant: Unique Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_drugs_count
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
        - field: screening.is_citizen_1st_time_drug
          condition: 'yes'
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
        label: User Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: user.facility_synced_in_last_24_hours
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=165"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 1 days ago for 1 days
        - field: user.user_facility_name
          condition: "-NULL"
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
        label: User Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: user.facility_synced_in_last_30_days
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_30_days
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=187"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 30 days ago for 30 days
        - field: user.user_facility_name
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
        label: User Average Facilities Synced
        label_from_parameter:
        label_short: Average Facilities Synced
        map_layer:
        name: user.Average_facilities_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Average Facilities Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.Average_facilities_synced
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=209"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        label: Family Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: family.facility_family_last_24_hours
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_24_hours
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=207"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 1 days ago for 1 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: family.facility_family_last_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=226"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${families_count} "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: family.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Facility_avg_family_screening
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=244"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Drugs Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_24_hours
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=303"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
        - field: drugs.user_facility_name
          condition: "-NULL"
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
        label: Drugs Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_30_days
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=325"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        - field: drugs.user_facility_name
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
        label: Drugs Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: drugs.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Average_Facility_Drugs
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=347"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=334"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=131"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_district_name "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=125"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=168"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=162"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: screening.citizen_block_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: screening.citizen_block_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Facility Synced in last 24 hours
        name: facility_synced_in_last_24_hours
        expression: |-
          if(${user.facility_synced_in_last_24_hours}
          >0,${user.facility_synced_in_last_24_hours}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: |-
          if(${user.facility_synced_in_last_30_days}
          >0,${user.facility_synced_in_last_30_days}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced
        expression: if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 24 hours
        name: facility_drugs_delivered_last_24_hours
        expression: if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 30 days
        name: facility_drugs_delivered_last_30_days
        expression: if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced_1
        expression: if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)
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
    hidden_fields: [user.facility_synced_in_last_24_hours, user.facility_synced_in_last_30_days,
      user.Average_facilities_synced, drugs.Facility_Drugs_delivered_last_24_hours,
      drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "if(${user.facility_synced_in_last_24_hours}\n\
          >0,${user.facility_synced_in_last_24_hours}\n,0)", label: Facility Synced
          in last 24 hours, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: "if(${user.facility_synced_in_last_30_days}\n\
          >0,${user.facility_synced_in_last_30_days}\n,0)", label: Facility Synced
          in last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced, _type_hint: number}, {category: table_calculation,
        expression: 'if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)',
        label: Facility Drugs Delivered last 24 hours, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)',
        label: Facility Drugs Delivered last 30 days, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced_1, _type_hint: number}]
    listen:
    - Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    - Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    - Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    - Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    - Community  Block Type: mtm_beneficiary.citizen_block_type
      Community  Facility Name: mtm_beneficiary.citizen_facility_name
      Role Name: mtm_beneficiary.role_name
      " Date": mtm_beneficiary.record_update_date
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
    row: 17
    col: 0
    width: 24
    height: 9
  - name: 'Block Wise '
    title: 'Block Wise '
    merged_queries:
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.citizen_district_name, screening.Facility_Individual_screening_last_24_hours,
        screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
        screening.citizen_district_gid, screening.citizen_hud_name, screening.citizen_hud_gid,
        screening.unique_drugs_count, screening.citizen_block_name, screening.citizen_block_gid]
      filters:
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
        screening.citizen_block_gid: NOT NULL
      sorts: [screening.citizen_district_name desc]
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
      hidden_fields: [screening.citizen_district_gid]
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
      join_fields: []
    - model: tnphr-prod-kpi
      explore: user
      type: table
      fields: [user.user_district_name, user.user_district_gid, user.facility_synced_in_last_24_hours,
        user.facility_synced_in_last_30_days, user.Average_facilities_synced, user.user_hud_gid,
        user.user_block_gid]
      sorts: [user.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: user.user_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: user.user_district_name
        source_field_name: screening.citizen_district_name
      - field_name: user.user_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: user.user_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: family
      type: table
      fields: [family.family_district_gid, family.facility_family_last_24_hours, family.facility_family_last_30_days,
        family.Facility_avg_family_screening, family.family_hud_gid, family.family_block_gid]
      sorts: [family.facility_family_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: family.family_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: family.family_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: family.family_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: drugs
      type: table
      fields: [drugs.citizen_district_gid, drugs.Facility_Drugs_delivered_last_24_hours,
        drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs,
        drugs.citizen_hud_gid, drugs.citizen_block_gid]
      sorts: [drugs.Facility_Drugs_delivered_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: drugs.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: drugs.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: drugs.citizen_block_gid
        source_field_name: screening.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: table
      fields: [mtm_beneficiary.citizen_district_gid, mtm_beneficiary.total_confirmed_MTM_beneficiary,
        mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
      limit: 5000
      join_fields:
      - field_name: mtm_beneficiary.citizen_district_gid
        source_field_name: screening.citizen_district_gid
      - field_name: mtm_beneficiary.citizen_hud_gid
        source_field_name: screening.citizen_hud_gid
      - field_name: mtm_beneficiary.citizen_block_gid
        source_field_name: screening.citizen_block_gid
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", screening.citizen_district_name, screening.citizen_district_gid,
      screening.citizen_hud_name, screening.citizen_hud_gid, screening.citizen_block_name,
      screening.citizen_block_gid, facility_synced_in_last_24_hours, facility_synced_in_last_30_days,
      average_facilities_synced, screening.Facility_Individual_screening_last_24_hours,
      screening.Facility_Individual_screening_last_30_days, screening.Facility_avg_Individual_screening,
      family.facility_family_last_24_hours, family.facility_family_last_30_days, family.Facility_avg_family_screening,
      facility_drugs_delivered_last_24_hours, facility_drugs_delivered_last_30_days,
      average_facilities_synced_1, screening.unique_drugs_count, mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      screening.citizen_district_name: Community District
      screening.citizen_district_gid: Community District Gid
      screening.citizen_hud_name: Community Hud
      screening.citizen_hud_gid: Community Hud Gid
      screening.unique_drugs_count: No. of individuals received drugs
      mtm_beneficiary.total_confirmed_MTM_beneficiary: Confirmed  MTM Beneficiaries
      screening.citizen_block_gid: Community Block Gid
      screening.citizen_block_name: Community Block
    series_cell_visualizations:
      screening.Facility_Individual_screening_last_24_hours:
        is_active: false
      facility_synced_in_last_24_hours:
        is_active: false
    series_text_format:
      screening.citizen_district_gid:
        align: center
      screening.unique_drugs_count:
        align: center
      screening.citizen_hud_gid:
        align: center
      screening.citizen_block_gid:
        align: center
      facility_synced_in_last_24_hours:
        align: center
        bg_color: "#a4bced"
      facility_synced_in_last_30_days:
        align: center
        bg_color: "#a4bced"
      average_facilities_synced:
        bg_color: "#a4bced"
        align: center
      facility_drugs_delivered_last_24_hours:
        align: center
        bg_color: "#bce8e0"
      facility_drugs_delivered_last_30_days:
        align: center
        bg_color: "#bce8e0"
      average_facilities_synced_1:
        bg_color: "#bce8e0"
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#1A73E8"
    header_text_alignment: left
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
        label: Screening Facility Individual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Individual Screening Last 24 Hours
        map_layer:
        name: screening.Facility_Individual_screening_last_24_hours
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
        field_group_variant: Facility Individual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_24_hours
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=871"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 1 days ago for 1 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Individual Screening Last 30 Days
        map_layer:
        name: screening.Facility_Individual_screening_last_30_days
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
        field_group_variant: Facility Individual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_Individual_screening_last_30_days
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=893"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.screened_date
          condition: 30 days ago for 30 days
        - field: screening.user_facility_name
          condition: "-NULL"
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
        label: Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: screening.Facility_avg_Individual_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Facility_avg_Individual_screening
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=915"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${Facility_Individual_screening_last_30_days}/30"
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
        label: Screening Unique Drugs Count
        label_from_parameter:
        label_short: Unique Drugs Count
        map_layer:
        name: screening.unique_drugs_count
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
        field_group_variant: Unique Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_drugs_count
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
        - field: screening.is_citizen_1st_time_drug
          condition: 'yes'
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
        label: User Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: user.facility_synced_in_last_24_hours
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_24_hours
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=165"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 1 days ago for 1 days
        - field: user.user_facility_name
          condition: "-NULL"
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
        label: User Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: user.facility_synced_in_last_30_days
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
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.facility_synced_in_last_30_days
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=187"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${TABLE}.user_facility_gid "
        sql_case:
        filters:
        - field: user.user_last_sync_date
          condition: 30 days ago for 30 days
        - field: user.user_facility_name
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
        label: User Average Facilities Synced
        label_from_parameter:
        label_short: Average Facilities Synced
        map_layer:
        name: user.Average_facilities_synced
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: user
        view_label: User
        dynamic: false
        week_start_day: monday
        original_view: user
        dimension_group:
        error:
        field_group_variant: Average Facilities Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: user
        suggest_dimension: user.Average_facilities_synced
        suggest_explore: user
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fuser.view.lkml?line=209"
        permanent: true
        source_file: tnphr_views/user.view.lkml
        source_file_path: looker-tnphr/tnphr_views/user.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
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
        label: Family Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: family.facility_family_last_24_hours
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_24_hours
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=207"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${TABLE}.families_count "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 1 days ago for 1 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: family.facility_family_last_30_days
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
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.facility_family_last_30_days
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=226"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${families_count} "
        sql_case:
        filters:
        - field: family.family_created_date
          condition: 30 days
        - field: family.family_facility_gid
          condition: NOT NULL
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
        label: Family  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: family.Facility_avg_family_screening
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: family
        view_label: Family
        dynamic: false
        week_start_day: monday
        original_view: family
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family
        suggest_dimension: family.Facility_avg_family_screening
        suggest_explore: family
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Ffamily.view.lkml?line=244"
        permanent: true
        source_file: tnphr_views/family.view.lkml
        source_file_path: looker-tnphr/tnphr_views/family.view.lkml
        sql: "${facility_family_last_30_days}/30"
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
        label: Drugs Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_24_hours
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_24_hours
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=303"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 1 days ago for 1 days
        - field: drugs.user_facility_name
          condition: "-NULL"
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
        label: Drugs Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: drugs.Facility_Drugs_delivered_last_30_days
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
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Facility_Drugs_delivered_last_30_days
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=325"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${TABLE}.total_drugs_count "
        sql_case:
        filters:
        - field: drugs.citizen_screened_date
          condition: 30 days ago for 30 days
        - field: drugs.user_facility_name
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
        label: Drugs Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: drugs.Average_Facility_Drugs
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: number
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: 0.0#
        view: drugs
        view_label: Drugs
        dynamic: false
        week_start_day: monday
        original_view: drugs
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs
        suggest_dimension: drugs.Average_Facility_Drugs
        suggest_explore: drugs
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fdrugs.view.lkml?line=347"
        permanent: true
        source_file: tnphr_views/drugs.view.lkml
        source_file_path: looker-tnphr/tnphr_views/drugs.view.lkml
        sql: "${Facility_Drugs_delivered_last_30_days}/30 "
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
        label: Mtm Beneficiary Total Confirmed MTM Beneficiary
        label_from_parameter:
        label_short: Total Confirmed MTM Beneficiary
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Total Confirmed MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=334"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
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
        label: Screening Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: screening.citizen_district_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=131"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_district_name "
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
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
        label: Screening Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: screening.citizen_district_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_district_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=125"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: screening.citizen_hud_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=168"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: screening.citizen_hud_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_hud_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=162"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: screening.citizen_block_name
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_name
        suggest_explore: screening
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
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
        label: Screening Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: screening.citizen_block_gid
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
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.citizen_block_gid
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Facility Synced in last 24 hours
        name: facility_synced_in_last_24_hours
        expression: |-
          if(${user.facility_synced_in_last_24_hours}
          >0,${user.facility_synced_in_last_24_hours}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: |-
          if(${user.facility_synced_in_last_30_days}
          >0,${user.facility_synced_in_last_30_days}
          ,0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced
        expression: if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 24 hours
        name: facility_drugs_delivered_last_24_hours
        expression: if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility Drugs Delivered last 30 days
        name: facility_drugs_delivered_last_30_days
        expression: if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average Facilities Synced
        name: average_facilities_synced_1
        expression: if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)
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
    hidden_fields: [user.facility_synced_in_last_24_hours, user.facility_synced_in_last_30_days,
      user.Average_facilities_synced, drugs.Facility_Drugs_delivered_last_24_hours,
      drugs.Facility_Drugs_delivered_last_30_days, drugs.Average_Facility_Drugs]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "if(${user.facility_synced_in_last_24_hours}\n\
          >0,${user.facility_synced_in_last_24_hours}\n,0)", label: Facility Synced
          in last 24 hours, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: "if(${user.facility_synced_in_last_30_days}\n\
          >0,${user.facility_synced_in_last_30_days}\n,0)", label: Facility Synced
          in last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: facility_synced_in_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${user.Average_facilities_synced}>0,${user.Average_facilities_synced},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced, _type_hint: number}, {category: table_calculation,
        expression: 'if(${drugs.Facility_Drugs_delivered_last_24_hours}>0,${drugs.Facility_Drugs_delivered_last_24_hours},0)',
        label: Facility Drugs Delivered last 24 hours, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_24_hours,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Facility_Drugs_delivered_last_30_days}>0,${drugs.Facility_Drugs_delivered_last_30_days},0)',
        label: Facility Drugs Delivered last 30 days, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: facility_drugs_delivered_last_30_days,
        _type_hint: number}, {category: table_calculation, expression: 'if(${drugs.Average_Facility_Drugs}>0,${drugs.Average_Facility_Drugs},0)',
        label: Average Facilities Synced, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: average_facilities_synced_1, _type_hint: number}]
    listen:
    - Community  Block Type: screening.citizen_block_type
      Community  Facility Name: screening.citizen_facility_name
      Role Name: screening.role_name
      " Date": screening.screened_date
      Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
    - Role Name: user.user_role_name
      " Date": user.user_last_sync_date
      Institution District: user.user_district_name
      Institution Hud: user.user_hud_name
      Institution Block: user.user_block_name
    - Community  Block Type: family.family_block_type
      Community  Facility Name: family.family_facility_name
      Role Name: family.user_role
      " Date": family.family_created_date
      Community District: family.family_district_name
      Community Hud: family.family_hud_name
      Community Block: family.family_block_name
    - Community  Block Type: drugs.citizen_block_type
      Community  Facility Name: drugs.citizen_facility_name
      Role Name: drugs.role_name
      " Date": drugs.citizen_screened_date
      Community District: drugs.citizen_district_name
      Community Hud: drugs.citizen_hud_name
      Community Block: drugs.citizen_block_name
    - Community  Block Type: mtm_beneficiary.citizen_block_type
      Community  Facility Name: mtm_beneficiary.citizen_facility_name
      Role Name: mtm_beneficiary.role_name
      " Date": mtm_beneficiary.record_update_date
      Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
    row: 35
    col: 0
    width: 24
    height: 9
  filters:
  - name: " Date"
    title: " Date"
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
    listens_to_filters: [Community Hud, Community  Block Type, Community  Facility
        Name, Community Block]
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
    listens_to_filters: [Community  Block Type, Community  Facility Name, Community
        Block, Community District]
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
    listens_to_filters: [Community Hud, Community  Block Type, Community  Facility
        Name, Community District]
    field: screening.citizen_block_name
  - name: Community  Block Type
    title: Community  Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Hud, Community  Facility Name, Community Block,
      Community District]
    field: screening.citizen_block_type
  - name: Community  Facility Name
    title: Community  Facility Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community Hud, Community  Block Type, Community Block, Community
        District]
    field: screening.citizen_facility_name
  - name: Institution District
    title: Institution District
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: user
    listens_to_filters: [Institution Block Name, Institution Hud Name, Institution
        Hud, Institution Block]
    field: user.user_district_name
  - name: Institution Hud
    title: Institution Hud
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: user
    listens_to_filters: [Institution Block Name, Institution District, Institution
        Block]
    field: user.user_hud_name
  - name: Institution Block
    title: Institution Block
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: user
    listens_to_filters: [Institution Hud Name, Institution District, Institution Hud]
    field: user.user_block_name
  - name: Role Name
    title: Role Name
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
    field: screening.role_name
