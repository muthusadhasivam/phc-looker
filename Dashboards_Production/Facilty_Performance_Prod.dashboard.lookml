- dashboard: facilty_performance_prod
  title: Facilty Performance v1.0.1 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FfwGA1gNItJoUxbOuLblIV
  elements:
  - title: 'Facilty Performance '
    name: 'Facilty Performance '
    model: tnphr
    explore: facility_registry
    type: single_value
    fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_48_hours]
    filters:
      facility_registry.last_update_date: 24 hours
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.facility_synced_in_last_24_hours}-${facility_registry.facility_synced_in_last_48_hours}",
        label: 'Last 24 hours ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: last_24_hours, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.facility_synced_in_last_48_hours]
    note_state: collapsed
    note_display: hover
    note_text: Count of users who have logged in last 24 hours per facility
    listen:
      Districts: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Blocks: facility_registry.block_name
      Facility Name: facility_registry.facility_name
      " Date": user_master.last_login_date
      Role Name: user_role_master.role_name
    row: 3
    col: 7
    width: 4
    height: 2
  - title: Synced in last 30 days
    name: Synced in last 30 days
    model: tnphr
    explore: facility_registry
    type: single_value
    fields: [facility_registry.facility_synced_in_last_30_days, facility_registry.facility_synced_in_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.facility_synced_in_last_30_days}-${facility_registry.facility_synced_in_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
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
    custom_color: ''
    single_value_title: Last 30 days
    value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
    comparison_label: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: "#1e60e8", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.facility_synced_in_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Count of users who have logged in last 30 days per facility
    listen:
      Districts: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Blocks: facility_registry.block_name
      Facility Name: facility_registry.facility_name
      " Date": user_master.last_login_date
      Role Name: user_role_master.role_name
    row: 3
    col: 11
    width: 4
    height: 2
  - title: Last 24 hours
    name: Last 24 hours
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_Inidividual_screening_last_24_hours, health_screening.Facility_Inidividual_screening_last_48_hours]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Inidividual_screening_last_24_hours}-${health_screening.Facility_Inidividual_screening_last_48_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
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
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [health_screening.Facility_Inidividual_screening_last_48_hours]
    note_state: collapsed
    note_display: hover
    note_text: Count of users who got screened (only once even he/she got screened
      multiple times) in last 24 hours per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 5
    col: 7
    width: 4
    height: 2
  - title: last 30 days
    name: last 30 days
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_Inidividual_screening_last_30_days, health_screening.Facility_Inidividual_screening_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Inidividual_screening_last_30_days}-${health_screening.Facility_Inidividual_screening_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
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
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d8dee0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    hidden_fields: [health_screening.Facility_Inidividual_screening_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Count of users who got screened (only once even he/she got screened
      multiple times) in last 30 days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 5
    col: 11
    width: 4
    height: 2
  - title: Average  Synced
    name: Average  Synced
    model: tnphr
    explore: facility_registry
    type: single_value
    fields: [facility_registry.Average_facility_synced, facility_registry.average_facility_synced_last_60_days]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${facility_registry.Average_facility_synced}-${facility_registry.average_facility_synced_last_60_days}",
        label: Average Synced per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_synced_per_day, _type_hint: number}]
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
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [facility_registry.average_facility_synced_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Average number of users logged in last 30 days per facility
    listen:
      Districts: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Blocks: facility_registry.block_name
      Facility Name: facility_registry.facility_name
      " Date": user_master.last_login_date
      Role Name: user_role_master.role_name
    row: 3
    col: 15
    width: 6
    height: 2
  - title: Top 10 Facility Performance
    name: Top 10 Facility Performance
    model: tnphr
    explore: facility_registry
    type: looker_bar
    fields: [user_master.facility_name, user_master.facility_id_count]
    filters:
      user_master.facility_name: "-NULL"
    sorts: [user_master.facility_id_count desc]
    limit: 10
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
    y_axes: [{label: families, orientation: bottom, series: [{axisId: user_master.facility_id_count,
            id: user_master.facility_id_count, name: Facility ID Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      user_master.Facility_id_count: "#7CB342"
      user_master.facility_id_count: "#7CB342"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: hover
    note_text: Chart Shows top 10 performances of the facilities
    listen:
      Districts: facility_registry.district_name
      HUDs: facility_registry.hud_name
      Blocks: facility_registry.block_name
      Facility Name: facility_registry.facility_name
      " Date": user_master.last_login_date
      Role Name: user_role_master.role_name
    row: 3
    col: 0
    width: 7
    height: 8
  - title: Family  last 24 hours
    name: Family  last 24 hours
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.facility_family_last_24_hours, health_screening.facility_family_last_48_hours]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.facility_family_last_24_hours}-${health_screening.facility_family_last_48_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.facility_family_last_48_hours]
    note_state: collapsed
    note_display: hover
    note_text: Count of families who have logged in last 24 hours per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 7
    width: 4
    height: 2
  - title: Family  last 30 days
    name: Family  last 30 days
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.facility_family_last_30_days, health_screening.change_facility_family_last_60_days]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.facility_family_last_30_days}-${health_screening.change_facility_family_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
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
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_facility_family_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Count of families who have logged in last 30 days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 11
    width: 4
    height: 2
  - title: Family average
    name: Family average
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_avg_family_screening, health_screening.change_Facility_avg_family_screening]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_avg_family_screening}-${health_screening.change_Facility_avg_family_screening}",
        label: Average screenings per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screenings_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average screenings per day
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e6c5e1",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_avg_family_screening]
    note_state: collapsed
    note_display: hover
    note_text: Average of count of families who have logged in last 30 days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 7
    col: 15
    width: 6
    height: 2
  - title: Average Individual
    name: Average Individual
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_avg_Inidividual_screening, health_screening.Facility_avg_Inidividual_screening_last_60_days]
    limit: 10
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_avg_Inidividual_screening}-${health_screening.Facility_avg_Inidividual_screening_last_60_days}",
        label: Average screenings per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_screenings_per_day, _type_hint: number}]
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
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.Facility_avg_Inidividual_screening_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Average of count of users who got screened (only once even he/she got
      screened multiple times) in last 30 days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 5
    col: 15
    width: 6
    height: 2
  - name: "<H3>Facility <br> Synced</H3>"
    type: text
    title_text: "<H3>Facility <br> Synced</H3>"
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 21
    width: 3
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/DPHLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/NHMLogo.png" width="90" height="90" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://devadmin.tnphr.in/assets/images/TamilNadu_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/UHC_Logo.png" width="90" height="90" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img src="https://devadmin.tnphr.in/assets/images/MTM_logo.png" width="90" height="90" />
    row: 0
    col: 0
    width: 24
    height: 3
  - name: "<H3>  Individual  <br> Facility </H3>"
    type: text
    title_text: "<H3>  Individual  <br> Facility </H3>"
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 21
    width: 3
    height: 2
  - name: "<H3> Family <br> Facility </H3>"
    type: text
    title_text: "<H3> Family <br> Facility </H3>"
    subtitle_text: ''
    body_text: ''
    row: 7
    col: 21
    width: 3
    height: 2
  - title: Facility Drugs delivered
    name: Facility Drugs delivered
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.change_Facility_Drugs_delivered_last_24_hours]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Drugs_delivered_last_24_hours}-${health_screening.change_Facility_Drugs_delivered_last_24_hours}",
        label: 'Last 24 hours ', value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_24_hours,
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_Drugs_delivered_last_24_hours]
    note_state: collapsed
    note_display: hover
    note_text: Count of drugs delivered in last 24 hours per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 9
    col: 7
    width: 4
    height: 2
  - title: Facility drugs delivered  last 30 days
    name: Facility drugs delivered  last 30 days
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Facility_Drugs_delivered_last_30_days, health_screening.Change_Facility_Drugs_delivered_last_60_days]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Facility_Drugs_delivered_last_30_days}-${health_screening.Change_Facility_Drugs_delivered_last_60_days}",
        label: Last 30 days, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: last_30_days,
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
    single_value_title: Last 30 days
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.Change_Facility_Drugs_delivered_last_60_days]
    note_state: collapsed
    note_display: hover
    note_text: Count of drugs delivered in last 30 Days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 9
    col: 11
    width: 4
    height: 2
  - title: Average Drugs Delivered
    name: Average Drugs Delivered
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Average_Facility_Drugs, health_screening.change_Facility_avg_family_screening]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Average_Facility_Drugs}-${health_screening.change_Facility_avg_family_screening}",
        label: Average drugs delivered per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_drugs_delivered_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Drugs delivered per day
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bce8e0",
        font_color: "#000000", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: health_screening.screening_count,
            id: health_screening.screening_count, name: Screening Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    series_types: {}
    series_colors:
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    hidden_fields: [health_screening.change_Facility_avg_family_screening]
    note_state: collapsed
    note_display: hover
    note_text: Average number of drugs delivered in last 30 days per facility
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    row: 9
    col: 15
    width: 6
    height: 2
  - name: "<H3> Drug <br> Delivered </H3>"
    type: text
    title_text: "<H3> Drug <br> Delivered </H3>"
    subtitle_text: ''
    body_text: ''
    row: 9
    col: 21
    width: 3
    height: 2
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, family_member_master.district_name,
        health_screening.member_drug_Delivered, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      sorts: [health_screening.facility_family_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiaries, label: Confirmed
            MTM Beneficiaries, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    - model: tnphr
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.district_name]
      filters:
        facility_registry.district_name: "-NULL"
      sorts: [facility_registry.facility_synced_in_last_24_hours desc]
      limit: 500
      join_fields:
      - field_name: facility_registry.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Facility_Inidividual_screening_last_24_hours,
      health_screening.Facility_Inidividual_screening_last_30_days, health_screening.Facility_avg_Inidividual_screening,
      health_screening.facility_family_last_24_hours, health_screening.facility_family_last_30_days,
      health_screening.Facility_avg_family_screening, health_screening.Facility_Drugs_delivered_last_24_hours,
      health_screening.Facility_Drugs_delivered_last_30_days, health_screening.Average_Facility_Drugs,
      facility_synced_in_last_24_hrs, facility_synced_in_last_30_days, average_facility_synced,
      health_screening.member_drug_Delivered, confirmed_mtm_beneficiaries]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Families synched in last 24
        hrs
      health_screening.Facility_avg_family_screening: Average synched families
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered in
        last 24 Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs delivered in last
        30 days
      health_screening.Average_Facility_Drugs: Average drugs delivered
      health_screening.facility_family_last_30_days: Families synched in last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individuals Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Individual screenings
        in last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Individual screenings
        in last 30 days
      facility_registry.facility_synced_in_last_24_hours: Facilities synced in last
        24 Hrs
      facility_registry.facility_synced_in_last_30_days: Facilities synced in last
        30 days
      facility_registry.Average_facility_synced: Average facilities synced
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_column_widths:
      family_member_master.district_name: 250
      health_screening.Facility_Inidividual_screening_last_24_hours: 224
      health_screening.Facility_Inidividual_screening_last_30_days: 230
      health_screening.Facility_avg_Inidividual_screening: 198
      health_screening.facility_family_last_24_hours: 201
      health_screening.facility_family_last_30_days: 210
      health_screening.Facility_avg_family_screening: 174
      health_screening.Facility_Drugs_delivered_last_24_hours: 194
      health_screening.Facility_Drugs_delivered_last_30_days: 200
      health_screening.Average_Facility_Drugs: 166
      facility_synced_in_last_24_hrs: 188
      facility_synced_in_last_30_days: 196
      average_facility_synced: 160
      health_screening.member_drug_Delivered: 212
      confirmed_mtm_beneficiaries: 196
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    series_text_format:
      facility_synced_in_last_24_hrs:
        align: center
      facility_synced_in_last_30_days:
        align: center
      average_facility_synced:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_font_color: "#fffbf8"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [facility_synced_in_last_24_hrs, facility_synced_in_last_30_days,
          average_facility_synced]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1215"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1194"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1234"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1252"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1272"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1156"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1176"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1121"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1139"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1884"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1975"
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
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiaries
        label: Confirmed MTM Beneficiaries
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
        sql_case:
        filters:
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
      table_calculations:
      - label: Facility synced in last 24 hrs
        name: facility_synced_in_last_24_hrs
        expression: if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average facility synced
        name: average_facility_synced
        expression: if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
      facility_registry.Average_facility_synced]
    sorts: [facility_synced_in_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)',
        label: Facility synced in last 24 hrs, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_24_hrs, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)',
        label: Facility synced in last 30 days, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_30_days, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)',
        label: Average facility synced, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_facility_synced, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    - Facility Name: facility_registry.facility_name
      Role Name: user_role_master.role_name
    row: 11
    col: 0
    width: 24
    height: 7
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, health_screening.member_drug_Delivered,
        health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.hud_name]
      sorts: [health_screening.facility_family_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiaries, label: Confirmed
            MTM Beneficiaries, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    - model: tnphr
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.hud_name]
      sorts: [facility_registry.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: facility_registry.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, health_screening.Facility_Inidividual_screening_last_24_hours,
      health_screening.Facility_Inidividual_screening_last_30_days, health_screening.Facility_avg_Inidividual_screening,
      health_screening.facility_family_last_24_hours, health_screening.facility_family_last_30_days,
      health_screening.Facility_avg_family_screening, health_screening.Facility_Drugs_delivered_last_24_hours,
      health_screening.Facility_Drugs_delivered_last_30_days, health_screening.Average_Facility_Drugs,
      facility_synced_in_last_24_hrs, facility_synced_in_last_30_days, average_facility_synced,
      health_screening.member_drug_Delivered, confirmed_mtm_beneficiaries]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Families synched in last 24
        hrs
      health_screening.Facility_avg_family_screening: Average synched families
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered in
        last 24 Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs delivered in last
        30 days
      health_screening.Average_Facility_Drugs: Average drugs delivered
      health_screening.facility_family_last_30_days: Families synched in last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individuals Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Individual screenings
        in last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Individual screenings
        in last 30 days
      facility_registry.facility_synced_in_last_24_hours: Facilities synced in last
        24 Hrs
      facility_registry.facility_synced_in_last_30_days: Facilities synced in last
        30 days
      facility_registry.Average_facility_synced: Average facilities synced
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_column_widths:
      family_member_master.district_name: 250
      health_screening.Facility_Inidividual_screening_last_24_hours: 224
      health_screening.Facility_Inidividual_screening_last_30_days: 230
      health_screening.Facility_avg_Inidividual_screening: 198
      health_screening.facility_family_last_24_hours: 201
      health_screening.facility_family_last_30_days: 210
      health_screening.Facility_avg_family_screening: 174
      health_screening.Facility_Drugs_delivered_last_24_hours: 194
      health_screening.Facility_Drugs_delivered_last_30_days: 200
      health_screening.Average_Facility_Drugs: 166
      facility_synced_in_last_24_hrs: 188
      facility_synced_in_last_30_days: 196
      average_facility_synced: 160
      health_screening.member_drug_Delivered: 212
      confirmed_mtm_beneficiaries: 196
      family_member_master.hud_name: 250
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    series_text_format:
      facility_synced_in_last_24_hrs:
        align: center
      facility_synced_in_last_30_days:
        align: center
      average_facility_synced:
        align: center
      confirmed_mtm_beneficiaries:
        align: center
      health_screening.member_drug_Delivered:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_font_color: "#fffbf8"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [facility_synced_in_last_24_hrs, facility_synced_in_last_30_days,
          average_facility_synced]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1215"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1194"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1234"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1252"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1272"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1156"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1176"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1121"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1139"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1884"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1975"
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
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiaries
        label: Confirmed MTM Beneficiaries
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
        sql_case:
        filters:
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
      table_calculations:
      - label: Facility synced in last 24 hrs
        name: facility_synced_in_last_24_hrs
        expression: if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average facility synced
        name: average_facility_synced
        expression: if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
      facility_registry.Average_facility_synced]
    sorts: [facility_synced_in_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)',
        label: Facility synced in last 24 hrs, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_24_hrs, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)',
        label: Facility synced in last 30 days, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_30_days, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)',
        label: Average facility synced, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_facility_synced, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    - Facility Name: facility_registry.facility_name
      Role Name: user_role_master.role_name
    row: 18
    col: 0
    width: 24
    height: 7
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.facility_family_last_24_hours, health_screening.Facility_avg_family_screening,
        health_screening.Facility_Drugs_delivered_last_24_hours, health_screening.Facility_Drugs_delivered_last_30_days,
        health_screening.Average_Facility_Drugs, health_screening.Facility_avg_Inidividual_screening,
        health_screening.facility_family_last_30_days, health_screening.Facility_Inidividual_screening_last_24_hours,
        health_screening.Facility_Inidividual_screening_last_30_days, health_screening.member_drug_Delivered,
        health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name]
      sorts: [health_screening.facility_family_last_24_hours desc]
      limit: 5000
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiaries, label: Confirmed
            MTM Beneficiaries, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    - model: tnphr
      explore: facility_registry
      type: table
      fields: [facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
        facility_registry.Average_facility_synced, facility_registry.block_name]
      sorts: [facility_registry.facility_synced_in_last_24_hours desc]
      limit: 5000
      join_fields:
      - field_name: facility_registry.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, health_screening.Facility_Inidividual_screening_last_24_hours,
      health_screening.Facility_Inidividual_screening_last_30_days, health_screening.Facility_avg_Inidividual_screening,
      health_screening.facility_family_last_24_hours, health_screening.facility_family_last_30_days,
      health_screening.Facility_avg_family_screening, health_screening.Facility_Drugs_delivered_last_24_hours,
      health_screening.Facility_Drugs_delivered_last_30_days, health_screening.Average_Facility_Drugs,
      facility_synced_in_last_24_hrs, facility_synced_in_last_30_days, average_facility_synced,
      health_screening.member_drug_Delivered, confirmed_mtm_beneficiaries]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.facility_family_last_24_hours: Families synched in last 24
        hrs
      health_screening.Facility_avg_family_screening: Average synched families
      health_screening.Facility_Drugs_delivered_last_24_hours: Drugs delivered in
        last 24 Hrs
      health_screening.Facility_Drugs_delivered_last_30_days: Drugs delivered in last
        30 days
      health_screening.Average_Facility_Drugs: Average drugs delivered
      health_screening.facility_family_last_30_days: Families synched in last 30 days
      health_screening.Facility_avg_Inidividual_screening: Average Individuals Screening
      health_screening.Facility_Inidividual_screening_last_24_hours: Individual screenings
        in last 24 Hrs
      health_screening.Facility_Inidividual_screening_last_30_days: Individual screenings
        in last 30 days
      facility_registry.facility_synced_in_last_24_hours: Facilities synced in last
        24 Hrs
      facility_registry.facility_synced_in_last_30_days: Facilities synced in last
        30 days
      facility_registry.Average_facility_synced: Average facilities synced
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_column_widths:
      family_member_master.district_name: 250
      health_screening.Facility_Inidividual_screening_last_24_hours: 224
      health_screening.Facility_Inidividual_screening_last_30_days: 230
      health_screening.Facility_avg_Inidividual_screening: 198
      health_screening.facility_family_last_24_hours: 201
      health_screening.facility_family_last_30_days: 210
      health_screening.Facility_avg_family_screening: 174
      health_screening.Facility_Drugs_delivered_last_24_hours: 194
      health_screening.Facility_Drugs_delivered_last_30_days: 200
      health_screening.Average_Facility_Drugs: 166
      facility_synced_in_last_24_hrs: 188
      facility_synced_in_last_30_days: 196
      average_facility_synced: 160
      health_screening.member_drug_Delivered: 212
      confirmed_mtm_beneficiaries: 196
      family_member_master.hud_name: 250
      family_member_master.block_name: 250
    series_cell_visualizations:
      health_screening.facility_individual_last_30_days:
        is_active: false
    series_text_format:
      facility_synced_in_last_24_hrs:
        align: center
      facility_synced_in_last_30_days:
        align: center
      average_facility_synced:
        align: center
      confirmed_mtm_beneficiaries:
        align: center
      health_screening.member_drug_Delivered:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_font_color: "#fffbf8"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#a4bced",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [facility_synced_in_last_24_hrs, facility_synced_in_last_30_days,
          average_facility_synced]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    type: looker_grid
    series_types: {}
    hide_totals: false
    hide_row_totals: false
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
        label: Health Screening Facility Family Last 24 Hours
        label_from_parameter:
        label_short: Facility Family Last 24 Hours
        map_layer:
        name: health_screening.facility_family_last_24_hours
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
        field_group_variant: Facility Family Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1215"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hour
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening  Facility Average Family Screening
        label_from_parameter:
        label_short: " Facility Average Family Screening"
        map_layer:
        name: health_screening.Facility_avg_family_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: " Facility Average Family Screening"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_family_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1194"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Drugs Delivered Last 24 Hours
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 24 Hours
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_24_hours
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
        field_group_variant: Facility Drugs Delivered Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1234"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Drugs Delivered Last 30 Days
        label_from_parameter:
        label_short: Facility Drugs Delivered Last 30 Days
        map_layer:
        name: health_screening.Facility_Drugs_delivered_last_30_days
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
        field_group_variant: Facility Drugs Delivered Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Drugs_delivered_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1252"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Average Facility Drugs
        label_from_parameter:
        label_short: Average Facility Drugs
        map_layer:
        name: health_screening.Average_Facility_Drugs
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Average Facility Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Average_Facility_Drugs
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1272"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Facility Individual Average Screening
        label_from_parameter:
        label_short: Facility Individual Average Screening
        map_layer:
        name: health_screening.Facility_avg_Inidividual_screening
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        original_view: health_screening
        dimension_group:
        error:
        field_group_variant: Facility Individual Average Screening
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_avg_Inidividual_screening
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1156"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${Facility_Inidividual_screening_last_30_days}/30"
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
        label: Health Screening Facility Family Last 30 Days
        label_from_parameter:
        label_short: Facility Family Last 30 Days
        map_layer:
        name: health_screening.facility_family_last_30_days
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
        field_group_variant: Facility Family Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.facility_family_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1176"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.family_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 24 Hours
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 24 Hours
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_24_hours
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
        field_group_variant: Facility Inidividual Screening Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_24_hours
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1121"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 24 hours
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        label: Health Screening Facility Inidividual Screening Last 30 Days
        label_from_parameter:
        label_short: Facility Inidividual Screening Last 30 Days
        map_layer:
        name: health_screening.Facility_Inidividual_screening_last_30_days
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
        field_group_variant: Facility Inidividual Screening Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Facility_Inidividual_screening_last_30_days
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1139"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id} "
        sql_case:
        filters:
        - field: health_screening.last_update_date
          condition: 30 days
        - field: health_screening.screening_id
          condition: "-NULL"
        - field: health_screening.member_facility_id
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1884"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1975"
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
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiaries
        label: Confirmed MTM Beneficiaries
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
        label: Registry Facility Synced In Last 24 Hours
        label_from_parameter:
        label_short: Facility Synced In Last 24 Hours
        map_layer:
        name: facility_registry.facility_synced_in_last_24_hours
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 24 Hours
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_24_hours
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=363"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 24 hours
        - field: facility_registry.facility_id
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
        label: Registry Facility Synced In Last 30 Days
        label_from_parameter:
        label_short: Facility Synced In Last 30 Days
        map_layer:
        name: facility_registry.facility_synced_in_last_30_days
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Facility Synced In Last 30 Days
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.facility_synced_in_last_30_days
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=387"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${TABLE}.facility_id "
        sql_case:
        filters:
        - field: facility_registry.last_update_date
          condition: 30 days
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
        label: Registry Average Facility Synced
        label_from_parameter:
        label_short: Average Facility Synced
        map_layer:
        name: facility_registry.Average_facility_synced
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
        view: facility_registry
        view_label: Registry
        dynamic: false
        week_start_day: monday
        original_view: facility_registry
        dimension_group:
        error:
        field_group_variant: Average Facility Synced
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: facility_registry
        suggest_dimension: facility_registry.Average_facility_synced
        suggest_explore: facility_registry
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffacility_registry.view.lkml?line=419"
        permanent: true
        source_file: views/facility_registry.view.lkml
        source_file_path: looker-tnphr/views/facility_registry.view.lkml
        sql: "${facility_synced_in_last_30_days}/30 "
        sql_case:
        filters:
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
      table_calculations:
      - label: Facility synced in last 24 hrs
        name: facility_synced_in_last_24_hrs
        expression: if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Facility synced in last 30 days
        name: facility_synced_in_last_30_days
        expression: if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Average facility synced
        name: average_facility_synced
        expression: if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      facility_registry.facility_synced_in_last_24_hours, facility_registry.facility_synced_in_last_30_days,
      facility_registry.Average_facility_synced]
    sorts: [facility_synced_in_last_30_days desc]
    dynamic_fields: [{category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_24_hours}>0,${facility_registry.facility_synced_in_last_24_hours},0)',
        label: Facility synced in last 24 hrs, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_24_hrs, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.facility_synced_in_last_30_days}>0,${facility_registry.facility_synced_in_last_30_days},0)',
        label: Facility synced in last 30 days, value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: facility_synced_in_last_30_days, _type_hint: number}, {
        category: table_calculation, expression: 'if(${facility_registry.Average_facility_synced}>0,${facility_registry.Average_facility_synced},0)',
        label: Average facility synced, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_facility_synced, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Facility Name: facility_registry.facility_name
      " Date": family_member_master.last_update_date
      Role Name: health_screening.role_name
    - Facility Name: facility_registry.facility_name
      Role Name: user_role_master.role_name
    row: 25
    col: 0
    width: 24
    height: 7
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
    listens_to_filters: [HUDs, Blocks]
    field: family_member_master.district_name
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
    listens_to_filters: [Districts, HUDs]
    field: family_member_master.block_name
  - name: Facility Name
    title: Facility Name
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
    field: facility_registry.facility_name
  - name: Role Name
    title: Role Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - Accredited Social Health Activist
      - Data Entry Opertor
      - Dental Assistant
      - Dental Surgeon
      - Data Base Admin
      - District Training Team Medical Officer - DTTMO
      - DPO NCD
      - Field Worker
      - Field Staff (Mazdoor)
      - HUD Admin
      - DMS Coordinator
      - District Epidemiologist
      - Health Officer
      - Lab Technician
      - ICTC Counsellor
      - DDHS Admin
      - Medical Officer
      - Mass Interviewer
      - Mentor Staff Nurse
      - Mid Level Health Provider
      - Health Inspector
      - Municipality Health Officer
      - MMU Cleaner
      - DME Coordinator
      - Non Medical Supervisor -NMS
      - NCD Staff Nurse
      - Multi Purpose Worker-Male
      - RBSK MO
      - Palliative Staff Nurse
      - DBC - Mazdoor
      - Consultant
      - School Medical Officer
      - Pharmacist
      - Sector Health Nurse-SHN
      - Staff Nurse
      - Urban PHC MO
      - State Supervisor
      - Physiotherapist
      - Zonal Health Officer
      - Statistical Assistant
      - Community Volunteers
      - Chief Medical Officer
      - Urban Health Nurse
      - RCH Staff Nurse
      - PHR Staff
      - Auxilary Nurse Midwife - ANM
      - Assistant Program Manager - APM
      - Block Health Supervisor - BHS
      - Block Account Assistant
      - Community Health Nurse - CHN
      - Village Health Nurse (Regular)
      - Block Medical Officer - BMO
      - Volunteer
      - Women Health Volunteer
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.last_update_date
