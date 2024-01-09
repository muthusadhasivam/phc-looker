- dashboard: mtm_performance_prod
  title: MTM Performance v1.0.8 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: AXlPzCvE0p5O6cZualGWTA
  elements:
  - title: Total Confirmed MTM Beneficiary
    name: Total Confirmed MTM Beneficiary
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    limit: 500
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
    note_state: expanded
    note_display: hover
    note_text: This includes the number of members who got benefited with MTM schemes
      (counted only once even he/she got benefited multiple times for multiple scenarios
      i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative care, physiotherapy
      etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 21
    col: 0
    width: 6
    height: 6
  - title: Total Population
    name: Total Population
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [family_member_master.gender, family_member_master.count]
    filters:
      family_member_master.gender: "-NULL"
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
    note_text: Total count of members
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    row: 3
    col: 0
    width: 6
    height: 6
  - title: Top 10 Drugs Issued
    name: Top 10 Drugs Issued
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.Drugs_count, health_screening__drugs.health_screening__drugs_drug_name]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
    sorts: [health_screening.Drugs_count desc]
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
    y_axes: [{label: Drug Count, orientation: bottom, series: [{axisId: family_member_master.count,
            id: family_member_master.count, name: Family member Master}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
      health_screening.Drugs_count: "#F9AB00"
    series_labels:
      family_member_master.count: Drug Count
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
    enable_conditional_formatting: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: This Includes the Top 10 highest issued Drugs (members who have received
      drugs counted as only once even he/she have received multiple drugs i.e., drugs
      received per screening is calculated as one, not the number of drugs)
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 15
    col: 18
    width: 6
    height: 6
  - title: District's wise MTM Beneficiary
    name: District's wise MTM Beneficiary
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      family_member_master.district_name]
    sorts: [health_screening.mtm_beneficiary_v1_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: mtm_beneficiary, label: MTM Beneficiary,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.district_name: Districts
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_column_widths:
      health_screening.Total_Screening: 276
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    series_text_format:
      mtm_beneficiary:
        align: right
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes District Wise number of members who got benefited with
      MTM schemes (counted only once even he/she got benefited multiple times for
      multiple scenarios i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative
      care, physiotherapy etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 53
    col: 18
    width: 6
    height: 6
  - title: Individuals with Drugs issued
    name: Individuals with Drugs issued
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.member_drug_Delivered]
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
    note_state: expanded
    note_display: hover
    note_text: This Includes only the count of members who have received drugs (counted
      as only once even he/she received multiple drugs multiple times)
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 17
    col: 0
    width: 6
    height: 2
  - title: 'District''s wise Drugs Issued '
    name: 'District''s wise Drugs Issued '
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.district_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Members Issued with Drugs
      family_member_master.Drugs_count: Total Drugs Issued
      health_screening.district_name: Districts
      health_screening.Drugs_count: Drugs issued
      health_screening.member_drug_Delivered: Individuals with Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: circle
    series_colors: {}
    series_point_styles: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: 'This Includes District Wise count of members who have received drugs
      (counted as only once even he/she received multiple drugs multiple times) '
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 53
    col: 0
    width: 6
    height: 6
  - title: Block's wise Drugs Issued
    name: Block's wise Drugs Issued
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.block_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.block_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Members Issued with Drugs
      family_member_master.Drugs_count: Total Drugs Issued
      health_screening.Drugs_count: Drugs issued
      health_screening.block_name: Blocks
      health_screening.member_drug_Delivered: Individuals with Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: Count, orientation: left, series: [{axisId: family_member_master.Drugs_count,
            id: family_member_master.Drugs_count, name: Total Drugs Issued}, {axisId: family_member_master.count,
            id: family_member_master.count, name: Members Issued with Drugs}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: 'This Includes Block Wise count of members who have received drugs
      (counted as only once even he/she received multiple drugs multiple times) '
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 65
    col: 0
    width: 6
    height: 6
  - title: Hud's wise Drugs Issued
    name: Hud's wise Drugs Issued
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.hud_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.hud_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Member Drug Issues Count
      family_member_master.Drugs_count: Drugs Issued Count
      health_screening.Drugs_count: Drugs issued
      health_screening.hud_name: HUDs
      health_screening.member_drug_Delivered: Individuals with Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: 'This Includes HUD Wise count of members who have received drugs (counted
      as only once even he/she received multiple drugs multiple times) '
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 59
    col: 0
    width: 6
    height: 6
  - title: 'Block''s wise MTM Beneficiary '
    name: 'Block''s wise MTM Beneficiary '
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      family_member_master.block_name]
    sorts: [health_screening.mtm_beneficiary_v1_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: mtm_beneficiary, label: MTM Beneficiary,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.block_name: Blocks
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    series_text_format:
      mtm_beneficiary:
        align: right
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes Block Wise number of members who got benefited with MTM
      schemes (counted only once even he/she got benefited multiple times for multiple
      scenarios i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative care,
      physiotherapy etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 65
    col: 18
    width: 6
    height: 6
  - title: Village's wise MTM Beneficiary
    name: Village's wise MTM Beneficiary
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      family_member_master.village_name]
    sorts: [health_screening.mtm_beneficiary_v1_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: mtm_beneficiary, label: MTM Beneficiary,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.village_name: Villages
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    series_text_format:
      mtm_beneficiary:
        align: right
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: [health_history.mtm_beneficiary_v2_count, health_screening.mtm_beneficiary_v1_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes Village Wise number of members who got benefited with
      MTM schemes (counted only once even he/she got benefited multiple times for
      multiple scenarios i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative
      care, physiotherapy etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 71
    col: 18
    width: 6
    height: 6
  - title: Hud's wise MTM Beneficiary
    name: Hud's wise MTM Beneficiary
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      family_member_master.hud_name]
    sorts: [health_screening.mtm_beneficiary_v1_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: mtm_beneficiary, label: MTM Beneficiary,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: MTM Beneficiary
      health_screening.Total_Screening: MTM Beneficiaries
      health_screening.hud_name: HUDs
      health_screening.mtm_v1_v2: MTM Beneficiary
    series_cell_visualizations:
      family_member_master.count:
        is_active: false
      health_screening.Total_Screening:
        is_active: true
    series_text_format:
      mtm_beneficiary:
        align: right
    header_background_color: "#7CB342"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
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
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    note_state: collapsed
    note_display: hover
    note_text: This includes HUD Wise number of members who got benefited with MTM
      schemes (counted only once even he/she got benefited multiple times for multiple
      scenarios i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative care,
      physiotherapy etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 59
    col: 18
    width: 6
    height: 6
  - title: Village's wise Drugs Issued
    name: Village's wise Drugs Issued
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.village_name, health_screening.member_drug_Delivered]
    filters:
      health_screening.village_name: ''
    sorts: [health_screening.member_drug_Delivered desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      family_member_master.count: Member Drug Issues Count
      family_member_master.Drugs_count: Drugs Issued Count
      health_screening.Drugs_count: Drugs issued
      health_screening.village_name: Villages
      health_screening.member_drug_Delivered: Individuals with Drugs issued
    series_cell_visualizations:
      family_member_master.count:
        is_active: true
      family_member_master.Drugs_count:
        is_active: true
    header_background_color: "#F9AB00"
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
    series_types: {}
    point_style: none
    series_colors:
      family_member_master.count: "#7CB342"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: 'This Includes Village Wise count of members who have received drugs
      (counted as only once even he/she received multiple drugs multiple times) '
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 71
    col: 0
    width: 6
    height: 6
  - title: Total Screenings
    name: Total Screenings
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Total_Screening]
    limit: 5000
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
        font_color: "#f8fcff", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    note_state: expanded
    note_display: hover
    note_text: Count of total screenings of members who got screened (even if there
      are multiple screenings per member)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 9
    col: 0
    width: 6
    height: 3
  - title: Individual Screenings
    name: Individual Screenings
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Unique_Screening]
    filters:
      address_district_master.district_name: ''
      address_hud_master.hud_name: ''
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
    note_state: expanded
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he/she got screened multiple times)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 12
    col: 0
    width: 6
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
    width: 24
    height: 3
  - title: Top 10 MTM Benefited Blocks
    name: Top 10 MTM Benefited Blocks
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [family_member_master.block_name, health_screening.mtm_beneficiary_v1_count,
      health_history.mtm_beneficiary_v2_count]
    filters:
      family_member_master.block_name: "-NULL"
    sorts: [mtm_beneficiary desc]
    limit: 5000
    dynamic_fields: [{table_calculation: mtm_beneficiary, label: MTM Beneficiary,
        expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
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
    y_axes: [{label: MTM beneficiaries, orientation: bottom, series: [{axisId: confirmed_mtm_beneficiaries,
            id: confirmed_mtm_beneficiaries, name: Confirmed MTM Beneficiaries}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      family_member_master.count: "#7CB342"
      health_screening.Drugs_count: "#7CB342"
      confirmed_mtm_beneficiaries: "#7CB342"
      mtm_beneficiary: "#7CB342"
    series_labels:
      family_member_master.count: Drug Count
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
    enable_conditional_formatting: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: This includes the Top 10 Blocks with highest number of members who
      got benefited with MTM schemes (counted only once even he/she got benefited
      multiple times for multiple scenarios i.e,  diabetes mellitus, dialysis CAPD,
      hypertension, palliative care, physiotherapy etc)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 21
    col: 18
    width: 6
    height: 6
  - title: Top 5 Blocks Screened
    name: Top 5 Blocks Screened
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [address_block_master.block_name, address_district_master.district_name,
      health_screening.Total_Screening]
    filters:
      address_district_master.district_name: ''
      address_hud_master.hud_name: ''
    sorts: [health_screening.Total_Screening desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: block_name, label: Block Name, expression: 'concat(${address_block_master.block_name},"
          " , "(","District-", ${address_district_master.district_name}, ")")', value_format: !!null '',
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
    limit_displayed_rows: true
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
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: Screening Count, orientation: left, series: [{axisId: health_screening.Total_Screening,
            id: health_screening.Total_Screening, name: Total Screening}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Blocks
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      family_member_master.Female_Population: "#FF8168"
      family_member_master.Other_Population: "#9334E6"
      health_screening.Total_Screening: "#4a67f0"
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
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_fields: [address_block_master.block_name, address_district_master.district_name]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Top 5 Blocks with highest count of total screenings of members who
      got screened (even if there are multiple screenings per member)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 9
    col: 18
    width: 6
    height: 6
  - name: Screening Count in Past 6 weeks + 2 weeks Projection
    title: Screening Count in Past 6 weeks + 2 weeks Projection
    note_state: expanded
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he/she got screened multiple times) in past 6 weeks and Projected count in next
      2 weeks
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week, health_screening.Unique_Screening]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}, {table_calculation: slope, label: slope, expression: 'slope(ln(${health_screening.Unique_Screening}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: intercept,
          label: intercept, expression: 'intercept(ln(${health_screening.Unique_Screening}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: line_equation,
          label: line_equation, expression: 'exp(${intercept} + ${slope} * ${day_index})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}, {table_calculation: final, label: final, expression: 'if(${day_index}>=3,${health_screening.Unique_Screening},${line_equation})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: monotone
      color_application:
        collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
        palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
        options:
          steps: 5
      y_axes: [{label: Total Screening, orientation: left, series: [{axisId: final,
              id: final, name: final}], showLabels: true, showValues: true, unpinAxis: false,
          tickDensity: default, tickDensityCustom: 5, type: linear}]
      x_axis_label: Weeks
      label_value_format: ''
      series_types: {}
      series_colors:
        family_member_master.Female_Population: "#FF8168"
        family_member_master.Other_Population: "#9334E6"
        health_screening.Total_Screening: "#215AC8"
      reference_lines: []
      trend_lines: []
      swap_axes: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: true
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
      value_labels: legend
      label_type: labPer
      inner_radius: 40
      hidden_fields: [day_index, slope, intercept, line_equation, todays_date_format,
        calculation_12, health_screening.Unique_Screening]
      defaults_version: 1
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
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
      show_null_points: true
      interpolation: linear
      series_types: {}
      defaults_version: 1
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
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
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Screening Count, orientation: left, series: [{axisId: health_screening.Total_Screening,
            id: health_screening.Total_Screening, name: Screening Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      final: "#F9AB00"
    series_labels:
      final: Projected Screening Count
      health_screening.Total_Screening: Screening Count
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    row: 9
    col: 6
    width: 12
    height: 6
  - name: Drugs Issued Count with Past 6 weeks + 2 weeks Projection
    title: Drugs Issued Count with Past 6 weeks + 2 weeks Projection
    note_state: expanded
    note_display: hover
    note_text: This Includes only the count of members who have received drugs (counted
      as only once even he/she received multiple drugs multiple times) in past 6 weeks
      and Projected count in next 2 weeks
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week, health_screening.member_drug_Delivered]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: number}, {table_calculation: slope, label: slope, expression: 'slope(ln(${health_screening.member_drug_Delivered}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: intercept,
          label: intercept, expression: 'intercept(ln(${health_screening.member_drug_Delivered}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: line_equation,
          label: line_equation, expression: 'exp(${intercept} + ${slope} * ${day_index})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}, {table_calculation: final, label: final, expression: 'if(${day_index}>=3,${health_screening.member_drug_Delivered},${line_equation})',
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: monotone
      color_application:
        collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
        palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
        options:
          steps: 5
      y_axes: [{label: Total Screening, orientation: left, series: [{axisId: final,
              id: final, name: final}], showLabels: true, showValues: true, unpinAxis: false,
          tickDensity: default, tickDensityCustom: 5, type: linear}]
      x_axis_label: Weeks
      label_value_format: ''
      series_types: {}
      series_colors:
        family_member_master.Female_Population: "#FF8168"
        family_member_master.Other_Population: "#9334E6"
        health_screening.Total_Screening: "#215AC8"
      reference_lines: []
      trend_lines: []
      swap_axes: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: true
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
      value_labels: legend
      label_type: labPer
      inner_radius: 40
      hidden_fields: [day_index, slope, intercept, line_equation, todays_date_format,
        calculation_12, health_screening.member_drug_Delivered]
      defaults_version: 1
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
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
      show_null_points: true
      interpolation: linear
      series_types: {}
      defaults_version: 1
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
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
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Drugs Count, orientation: left, series: [{axisId: health_screening.Drugs_count,
            id: health_screening.Drugs_count, name: Drugs Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      final: "#15bbe8"
      health_screening.Drugs_count: "#F9AB00"
      health_screening.member_drug_Delivered: "#F9AB00"
    series_labels:
      final: Projected Drugs Count
      health_screening.Total_Screening: Screening Count
      health_screening.member_drug_Delivered: Drugs issued
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today]
    listen:
    - Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    - Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    row: 15
    col: 6
    width: 12
    height: 6
  - name: Confirmed MTM Count in Past 6 weeks + 2 weeks Projection
    title: Confirmed MTM Count in Past 6 weeks + 2 weeks Projection
    note_state: expanded
    note_display: hover
    note_text: This includes the number of members who got benefited with MTM schemes
      (counted only once even he/she got benefited multiple times for multiple scenarios
      i.e,  diabetes mellitus, dialysis CAPD, hypertension, palliative care, physiotherapy
      etc) in past 6 weeks and Projected count in next 2 weeks
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: slope, label: slope, expression: 'slope(ln(${mtm_beneficiary}),
            ${day_index})', value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}, {table_calculation: intercept,
          label: intercept, expression: 'intercept(ln(${mtm_beneficiary}), ${day_index})',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
          _type_hint: number}, {table_calculation: line_equation, label: line_equation,
          expression: 'exp(${intercept} + ${slope} * ${day_index})', value_format: !!null '',
          value_format_name: decimal_0, _kind_hint: measure, _type_hint: number},
        {table_calculation: mtm_beneficiary, label: MTM Beneficiary, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number},
        {table_calculation: final, label: final, expression: 'if(${day_index}>=3,${mtm_beneficiary},${line_equation})',
          value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
          _type_hint: number}, {table_calculation: day_index, label: day_index, expression: 'diff_days(${health_screening.last_update_week},now())',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
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
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      interpolation: monotone
      color_application:
        collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
        palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
        options:
          steps: 5
      y_axes: [{label: Total Screening, orientation: left, series: [{axisId: final,
              id: final, name: final}], showLabels: true, showValues: true, unpinAxis: false,
          tickDensity: default, tickDensityCustom: 5, type: linear}]
      x_axis_label: Weeks
      label_value_format: ''
      series_types: {}
      series_colors:
        family_member_master.Female_Population: "#FF8168"
        family_member_master.Other_Population: "#9334E6"
        health_screening.Total_Screening: "#215AC8"
      reference_lines: []
      trend_lines: []
      swap_axes: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: true
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
      value_labels: legend
      label_type: labPer
      inner_radius: 40
      hidden_fields: [day_index, slope, intercept, line_equation, todays_date_format,
        calculation_12, mtm_beneficiaries, health_screening.mtm_beneficiary_v1_count,
        health_history.mtm_beneficiary_v2_count]
      defaults_version: 1
    - model: tnphr
      explore: family_member_master
      type: looker_line
      fields: [health_screening.last_update_week]
      fill_fields: [health_screening.last_update_week]
      filters:
        health_screening.last_update_week: 7 week , 2 week from now
      sorts: [health_screening.last_update_week desc]
      limit: 500
      dynamic_fields: [{table_calculation: today, label: today, expression: now(),
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: date}]
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
      show_null_points: true
      interpolation: linear
      series_types: {}
      defaults_version: 1
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
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
      join_fields:
      - field_name: health_screening.last_update_week
        source_field_name: health_screening.last_update_week
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Drugs Count, orientation: left, series: [{axisId: health_screening.Drugs_count,
            id: health_screening.Drugs_count, name: Drugs Count}, {axisId: final,
            id: final, name: Projected Screening Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Weeks
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      final: "#F9AB00"
      mtm_beneficiaries: "#32b260"
      mtm_beneficiary: "#7CB342"
    series_labels:
      final: Projected MTM beneficiaries Count
      health_screening.Total_Screening: Screening Count
      health_screening.mtm_v1_v2: MTM Beneficiary
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    type: looker_line
    hidden_fields: [day_index, slope, intercept, line_equation, today, health_screening.mtm_beneficiary_v1_count,
      health_history.mtm_beneficiary_v2_count]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
    row: 21
    col: 6
    width: 12
    height: 6
  - title: Unique Screenings Gender Wise
    name: Unique Screenings Gender Wise
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [health_screening.Unique_Screening_Males, health_screening.Unique_Screening_Females,
      health_screening.Unique_Screening_Others]
    filters:
      family_member_master.gender: "-NULL"
      facility_directorate_master.directorate_name: ''
      family_member_master.block_name: ''
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
    y_axes: [{label: Unique Screenings, orientation: left, series: [{axisId: health_screening.Unique_Screening_Males,
            id: health_screening.Unique_Screening_Males, name: Unique Screening Males},
          {axisId: health_screening.Unique_Screening_Females, id: health_screening.Unique_Screening_Females,
            name: Unique Screening Females}, {axisId: health_screening.Unique_Screening_Others,
            id: health_screening.Unique_Screening_Others, name: Unique Screening Others}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    series_types: {}
    series_colors: {}
    series_labels:
      family_member_master.Other_Population: Others
      family_member_master.count: Total Population
      health_screening.Unique_Screening_Males: Males
      health_screening.Unique_Screening_Females: Females
      health_screening.Unique_Screening_Others: Others
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
    value_labels: legend
    label_type: labPer
    note_state: collapsed
    note_display: hover
    note_text: This includes gender wise count of people who got screened (only once
      even he/she got screened multiple times)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 3
    col: 6
    width: 12
    height: 6
  - title: Age Wise Unique Screenings
    name: Age Wise Unique Screenings
    model: tnphr
    explore: family_member_master
    type: looker_pie
    fields: [family_member_master.age_interval2, health_screening.Unique_Screening]
    fill_fields: [family_member_master.age_interval2]
    filters:
      family_member_master.gender: "-NULL"
      facility_directorate_master.directorate_name: ''
      family_member_master.block_name: ''
    sorts: [family_member_master.age_interval2]
    limit: 5000
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: a3f9463f-88e2-450e-9363-9525c96ecd6d
      options:
        steps: 5
    series_colors: {}
    series_labels: {}
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
    font_size: 12
    hidden_points_if_no: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he/she got screened multiple times) by calculating the age band using the birthdate
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 3
    col: 18
    width: 6
    height: 6
  - title: Total Drugs issued
    name: Total Drugs issued
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening__drugs.health_screening__drugs_drug_name, health_screening.Drugs_count]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      health_screening.district_name: ''
      health_screening.block_name: ''
      health_screening.hud_name: ''
      family_member_master.last_update_date: ''
      health_screening.role_toggle: ''
      facility_directorate_master.directorate_name: ''
    sorts: [health_screening.Drugs_count desc]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{table_calculation: total_drugs_issued, label: Total Drugs Issued,
        expression: 'sum(${health_screening.Drugs_count})', value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#030d1a"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#121212", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    hidden_fields: [health_screening.Drugs_count, health_screening__drugs.health_screening__drugs_drug_name]
    hide_totals: false
    hide_row_totals: false
    note_state: expanded
    note_display: hover
    note_text: This Includes the count of members who have received drugs (counted
      as only once even he/she have received multiple drugs i.e., drugs received per
      screening is calculated as one, not the number of drugs)
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 15
    col: 0
    width: 6
    height: 2
  - title: No of Beneficiaries received Drugs
    name: No of Beneficiaries received Drugs
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
    limit: 500
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
    note_state: expanded
    note_display: hover
    note_text: Total confirmed individual MTM Beneficiaries who have received drugs
      (only once even if the beneficiary has received multiple drugs multiple times
      in multiple screenings)
    listen:
      Owner Name: facility_owner_master.owner_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 19
    col: 0
    width: 6
    height: 2
  - title: Role based Screenings
    name: Role based Screenings
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.role_name, health_screening.Total_Screening]
    filters:
      family_member_master.block_name: ''
      facility_directorate_master.directorate_name: ''
      family_master.last_update_date: ''
      health_screening.role_toggle: ''
      drugs_and_services.health_screening_last_update_date: ''
    sorts: [health_screening.Total_Screening desc]
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
      health_screening.screening_count: "#7CB342"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This populates the count of total screenings of members who got screened
      (even if there are multiple screenings per member) by role names
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 27
    col: 0
    width: 24
    height: 26
  - title: Number of Referred
    name: Number of Referred
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [facility_registry.facility_type_name, facility_registry.category_name,
      health_screening.Refferal_count_V2]
    filters:
      facility_registry.category_name: GH,Rural HSC,Rural PHC,Urban HSC,Urban PHC,MCH
        Lab,MCH Hosp
      family_member_master.last_update_date: ''
      family_member_master.block_name: ''
    sorts: [health_screening.Refferal_count_V2 desc]
    limit: 5000
    column_limit: 50
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
    series_labels:
      health_screening.Refferal_count_V2: No. of Referred
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
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 77
    col: 0
    width: 12
    height: 7
  - name: District's Wise Screening Count
    title: District's Wise Screening Count
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
        health_screening.Total_population, health_screening.screening_count, health_screening.Unique_Screening,
        family_member_master.district_name]
      filters:
        health_screening.district_name: "-NULL"
        family_member_master.last_update_date: ''
        health_screening.screening_count: ">0"
        family_member_master.district_name: ''
        family_member_master.hud_name: ''
        health_screening.user_directorate_name: ''
        family_member_master.block_name: ''
        health_screening.role_name: ''
        health_screening.role_toggle: ''
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
      header_text_alignment: center
      header_font_size: '14'
      rows_font_size: '13'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        family_member_master.count: Total Population
        health_screening.screening_count: Total Screenings
        health_screening.district_name: Districts
        health_screening.Population_age_gt_45: Population>45
        health_screening.Population_age_between_18_and_45: Population(18-45)
        health_screening.Population_age_between_18_and_29: Population (18-29)
        health_screening.Population_age_gt_30: Population > 30
      series_column_widths:
        health_screening.district_name: 230
      series_cell_visualizations:
        family_member_master.count:
          is_active: false
        health_screening.Total_Screening:
          is_active: true
        health_screening.screening_count:
          is_active: false
      header_font_color: "#f5fcff"
      header_background_color: "#1A73E8"
      series_value_format:
        health_screening.Population_age_gt_45: ''
        health_screening.screening_count: ''
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
      series_types: {}
      point_style: none
      series_colors:
        family_member_master.count: "#7CB342"
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      custom_color: "#1A73E8"
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.district_name]
      filters:
        health_screening.drugs_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 500
      dynamic_fields: [{table_calculation: no_of_beneficiaries_received_drugs, label: No.
            of beneficiaries received drugs, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, family_member_master.district_name,
        health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [screening_counts.Member_count, family_member_master.district_name]
      filters:
        screening_counts.number_of_screenings: '1'
      sorts: [screening_counts.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Total_population,
      health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
      health_screening.Unique_Screening, screening_counts.Member_count, population_repeated_screened,
      health_screening.screening_count, no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.screening_count: Total Screened
      screening_counts.Member_count: Population 1st time screened
    series_cell_visualizations:
      health_screening.Population_age_between_18_and_29:
        is_active: false
    series_text_format:
      health_screening.Population_age_between_18_and_29:
        align: center
      health_screening.Population_age_gt_30:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.screening_count:
        align: center
      health_screening.Unique_Screening:
        align: center
      no_of_beneficiaries_received_drugs:
        align: center
      screening_counts.Member_count:
        align: center
      population_repeated_screened: {}
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f4fff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
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
        label: Health Screening Population Age Between 18 and 29
        label_from_parameter:
        label_short: Population Age Between 18 and 29
        map_layer:
        name: health_screening.Population_age_between_18_and_29
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
        field_group_variant: Population Age Between 18 and 29
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_between_18_and_29
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1732"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id} "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=18 AND <=29"
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
        label: Health Screening Population Age Gt 30
        label_from_parameter:
        label_short: Population Age Gt 30
        map_layer:
        name: health_screening.Population_age_gt_30
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
        field_group_variant: Population Age Gt 30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_gt_30
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1725"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=30"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1695"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1366"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        name: no_of_beneficiaries_received_drugs
        label: No. of beneficiaries received drugs
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
        label: Screening Counts Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: screening_counts.Member_count
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
        view: screening_counts
        view_label: Screening Counts
        dynamic: false
        week_start_day: monday
        original_view: screening_counts
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening_counts
        suggest_dimension: screening_counts.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2FScreening_counts.view.lkml?line=27"
        permanent: true
        source_file: views/Screening_counts.view.lkml
        source_file_path: looker-tnphr/views/Screening_counts.view.lkml
        sql: "${TABLE}.member_id "
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
      table_calculations:
      - label: Population repeated screened
        name: population_repeated_screened
        expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}"
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
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}",
        label: Population repeated screened, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: population_repeated_screened, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 53
    col: 6
    width: 12
    height: 6
  - title: Number of Screened
    name: Number of Screened
    model: tnphr
    explore: family_member_master
    type: looker_column
    fields: [facility_registry.facility_type_name, facility_registry.category_name,
      health_screening.Unique_Screening]
    filters:
      facility_registry.category_name: GH,Rural HSC,Rural PHC,Urban HSC,Urban PHC,MCH
        Lab,MCH Hosp
      family_member_master.last_update_date: ''
      family_member_master.block_name: ''
    sorts: [health_screening.Unique_Screening desc]
    limit: 5000
    column_limit: 50
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
    series_labels:
      health_screening.Refferal_count_V2: No. of Referred
      health_screening.Unique_Screening: No. of Individuals Screened
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
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 77
    col: 12
    width: 12
    height: 7
  - name: Hud's wise Screening Count
    title: Hud's wise Screening Count
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
        health_screening.Total_population, health_screening.screening_count, health_screening.Unique_Screening,
        family_member_master.hud_name]
      filters:
        health_screening.district_name: "-NULL"
        family_member_master.last_update_date: ''
        health_screening.screening_count: ">0"
        family_member_master.district_name: ''
        family_member_master.hud_name: ''
        health_screening.user_directorate_name: ''
        family_member_master.block_name: ''
        health_screening.role_name: ''
        health_screening.role_toggle: ''
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
      header_text_alignment: center
      header_font_size: '14'
      rows_font_size: '13'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        family_member_master.count: Total Population
        health_screening.screening_count: Total Screenings
        health_screening.district_name: Districts
        health_screening.Population_age_gt_45: Population>45
        health_screening.Population_age_between_18_and_45: Population(18-45)
        health_screening.Population_age_between_18_and_29: Population (18-29)
        health_screening.Population_age_gt_30: Population > 30
      series_column_widths:
        health_screening.district_name: 230
      series_cell_visualizations:
        family_member_master.count:
          is_active: false
        health_screening.Total_Screening:
          is_active: true
        health_screening.screening_count:
          is_active: false
      header_font_color: "#f5fcff"
      header_background_color: "#1A73E8"
      series_value_format:
        health_screening.Population_age_gt_45: ''
        health_screening.screening_count: ''
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
      series_types: {}
      point_style: none
      series_colors:
        family_member_master.count: "#7CB342"
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      custom_color: "#1A73E8"
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.hud_name]
      filters:
        health_screening.drugs_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: no_of_beneficiaries_received_drugs, label: No.
            of beneficiaries received drugs, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [screening_counts.Member_count, family_member_master.hud_name]
      filters:
        screening_counts.number_of_screenings: '1'
      sorts: [screening_counts.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.hud_name
        source_field_name: family_member_master.hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.hud_name, health_screening.Total_population,
      health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
      health_screening.Unique_Screening, screening_counts.Member_count, population_repeated_screened,
      health_screening.screening_count, no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.screening_count: Total Screened
      screening_counts.Member_count: Population 1st time screened
    series_cell_visualizations:
      health_screening.Population_age_between_18_and_29:
        is_active: false
    series_text_format:
      health_screening.Population_age_between_18_and_29:
        align: center
      health_screening.Population_age_gt_30:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.screening_count:
        align: center
      health_screening.Unique_Screening:
        align: center
      no_of_beneficiaries_received_drugs:
        align: center
      screening_counts.Member_count:
        align: center
      population_repeated_screened: {}
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f4fff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
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
        label: Health Screening Population Age Between 18 and 29
        label_from_parameter:
        label_short: Population Age Between 18 and 29
        map_layer:
        name: health_screening.Population_age_between_18_and_29
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
        field_group_variant: Population Age Between 18 and 29
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_between_18_and_29
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1732"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id} "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=18 AND <=29"
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
        label: Health Screening Population Age Gt 30
        label_from_parameter:
        label_short: Population Age Gt 30
        map_layer:
        name: health_screening.Population_age_gt_30
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
        field_group_variant: Population Age Gt 30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_gt_30
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1725"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=30"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1695"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1366"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        name: no_of_beneficiaries_received_drugs
        label: No. of beneficiaries received drugs
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
        label: Screening Counts Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: screening_counts.Member_count
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
        view: screening_counts
        view_label: Screening Counts
        dynamic: false
        week_start_day: monday
        original_view: screening_counts
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening_counts
        suggest_dimension: screening_counts.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2FScreening_counts.view.lkml?line=27"
        permanent: true
        source_file: views/Screening_counts.view.lkml
        source_file_path: looker-tnphr/views/Screening_counts.view.lkml
        sql: "${TABLE}.member_id "
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
      table_calculations:
      - label: Population repeated screened
        name: population_repeated_screened
        expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}"
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
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}",
        label: Population repeated screened, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: population_repeated_screened, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 59
    col: 6
    width: 12
    height: 6
  - name: Block's wise Screening Count
    title: Block's wise Screening Count
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
        health_screening.Total_population, health_screening.screening_count, health_screening.Unique_Screening,
        family_member_master.block_name]
      filters:
        health_screening.district_name: "-NULL"
        family_member_master.last_update_date: ''
        health_screening.screening_count: ">0"
        family_member_master.district_name: ''
        family_member_master.hud_name: ''
        health_screening.user_directorate_name: ''
        family_member_master.block_name: ''
        health_screening.role_name: ''
        health_screening.role_toggle: ''
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
      header_text_alignment: center
      header_font_size: '14'
      rows_font_size: '13'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        family_member_master.count: Total Population
        health_screening.screening_count: Total Screenings
        health_screening.district_name: Districts
        health_screening.Population_age_gt_45: Population>45
        health_screening.Population_age_between_18_and_45: Population(18-45)
        health_screening.Population_age_between_18_and_29: Population (18-29)
        health_screening.Population_age_gt_30: Population > 30
      series_column_widths:
        health_screening.district_name: 230
      series_cell_visualizations:
        family_member_master.count:
          is_active: false
        health_screening.Total_Screening:
          is_active: true
        health_screening.screening_count:
          is_active: false
      header_font_color: "#f5fcff"
      header_background_color: "#1A73E8"
      series_value_format:
        health_screening.Population_age_gt_45: ''
        health_screening.screening_count: ''
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
      series_types: {}
      point_style: none
      series_colors:
        family_member_master.count: "#7CB342"
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      custom_color: "#1A73E8"
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.block_name]
      filters:
        health_screening.drugs_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: no_of_beneficiaries_received_drugs, label: No.
            of beneficiaries received drugs, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [screening_counts.Member_count, family_member_master.block_name]
      filters:
        screening_counts.number_of_screenings: '1'
      sorts: [screening_counts.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.block_name
        source_field_name: family_member_master.block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.block_name, health_screening.Total_population,
      health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
      health_screening.Unique_Screening, screening_counts.Member_count, population_repeated_screened,
      health_screening.screening_count, no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.screening_count: Total Screened
      screening_counts.Member_count: Population 1st time screened
    series_cell_visualizations:
      health_screening.Population_age_between_18_and_29:
        is_active: false
    series_text_format:
      health_screening.Population_age_between_18_and_29:
        align: center
      health_screening.Population_age_gt_30:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.screening_count:
        align: center
      health_screening.Unique_Screening:
        align: center
      no_of_beneficiaries_received_drugs:
        align: center
      screening_counts.Member_count:
        align: center
      population_repeated_screened: {}
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f4fff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
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
        label: Health Screening Population Age Between 18 and 29
        label_from_parameter:
        label_short: Population Age Between 18 and 29
        map_layer:
        name: health_screening.Population_age_between_18_and_29
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
        field_group_variant: Population Age Between 18 and 29
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_between_18_and_29
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1732"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id} "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=18 AND <=29"
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
        label: Health Screening Population Age Gt 30
        label_from_parameter:
        label_short: Population Age Gt 30
        map_layer:
        name: health_screening.Population_age_gt_30
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
        field_group_variant: Population Age Gt 30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_gt_30
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1725"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=30"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1695"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1366"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        name: no_of_beneficiaries_received_drugs
        label: No. of beneficiaries received drugs
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
        label: Screening Counts Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: screening_counts.Member_count
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
        view: screening_counts
        view_label: Screening Counts
        dynamic: false
        week_start_day: monday
        original_view: screening_counts
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening_counts
        suggest_dimension: screening_counts.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2FScreening_counts.view.lkml?line=27"
        permanent: true
        source_file: views/Screening_counts.view.lkml
        source_file_path: looker-tnphr/views/Screening_counts.view.lkml
        sql: "${TABLE}.member_id "
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
      table_calculations:
      - label: Population repeated screened
        name: population_repeated_screened
        expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}"
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
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}",
        label: Population repeated screened, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: population_repeated_screened, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 65
    col: 6
    width: 12
    height: 6
  - name: Village's wise Screening Count
    title: Village's wise Screening Count
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
        health_screening.Total_population, health_screening.screening_count, health_screening.Unique_Screening,
        family_member_master.village_name]
      filters:
        health_screening.district_name: "-NULL"
        family_member_master.last_update_date: ''
        health_screening.screening_count: ">0"
        family_member_master.district_name: ''
        family_member_master.hud_name: ''
        health_screening.user_directorate_name: ''
        family_member_master.block_name: ''
        health_screening.role_name: ''
        health_screening.role_toggle: ''
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
      header_text_alignment: center
      header_font_size: '14'
      rows_font_size: '13'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        family_member_master.count: Total Population
        health_screening.screening_count: Total Screenings
        health_screening.district_name: Districts
        health_screening.Population_age_gt_45: Population>45
        health_screening.Population_age_between_18_and_45: Population(18-45)
        health_screening.Population_age_between_18_and_29: Population (18-29)
        health_screening.Population_age_gt_30: Population > 30
      series_column_widths:
        health_screening.district_name: 230
      series_cell_visualizations:
        family_member_master.count:
          is_active: false
        health_screening.Total_Screening:
          is_active: true
        health_screening.screening_count:
          is_active: false
      header_font_color: "#f5fcff"
      header_background_color: "#1A73E8"
      series_value_format:
        health_screening.Population_age_gt_45: ''
        health_screening.screening_count: ''
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
      series_types: {}
      point_style: none
      series_colors:
        family_member_master.count: "#7CB342"
      show_value_labels: true
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      custom_color: "#1A73E8"
      defaults_version: 1
      hidden_fields: []
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
        family_member_master.village_name]
      filters:
        health_screening.drugs_id: "-NULL"
      sorts: [health_screening.mtm_beneficiary_v1_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: no_of_beneficiaries_received_drugs, label: No.
            of beneficiaries received drugs, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
          value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
      hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      join_fields:
      - field_name: family_member_master.village_name
        source_field_name: family_member_master.village_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [screening_counts.Member_count, family_member_master.village_name]
      filters:
        screening_counts.number_of_screenings: '1'
      sorts: [screening_counts.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: family_member_master.village_name
        source_field_name: family_member_master.village_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.village_name, health_screening.Total_population,
      health_screening.Population_age_between_18_and_29, health_screening.Population_age_gt_30,
      health_screening.Unique_Screening, screening_counts.Member_count, population_repeated_screened,
      health_screening.screening_count, no_of_beneficiaries_received_drugs]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_screening.screening_count: Total Screened
      screening_counts.Member_count: Population 1st time screened
    series_cell_visualizations:
      health_screening.Population_age_between_18_and_29:
        is_active: false
    series_text_format:
      health_screening.Population_age_between_18_and_29:
        align: center
      health_screening.Population_age_gt_30:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.screening_count:
        align: center
      health_screening.Unique_Screening:
        align: center
      no_of_beneficiaries_received_drugs:
        align: center
      screening_counts.Member_count:
        align: center
      population_repeated_screened: {}
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#f4fff9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
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
        label: Health Screening Population Age Between 18 and 29
        label_from_parameter:
        label_short: Population Age Between 18 and 29
        map_layer:
        name: health_screening.Population_age_between_18_and_29
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
        field_group_variant: Population Age Between 18 and 29
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_between_18_and_29
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1732"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${family_member_master.member_id} "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=18 AND <=29"
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
        label: Health Screening Population Age Gt 30
        label_from_parameter:
        label_short: Population Age Gt 30
        map_layer:
        name: health_screening.Population_age_gt_30
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
        field_group_variant: Population Age Gt 30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Population_age_gt_30
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1725"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.age
          condition: ">=30"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1695"
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
        label: Health Screening Screening Count
        label_from_parameter:
        label_short: Screening Count
        map_layer:
        name: health_screening.screening_count
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
        field_group_variant: Screening Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.screening_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1366"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${screening_id}"
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
        name: no_of_beneficiaries_received_drugs
        label: No. of beneficiaries received drugs
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
        label: Screening Counts Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: screening_counts.Member_count
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
        view: screening_counts
        view_label: Screening Counts
        dynamic: false
        week_start_day: monday
        original_view: screening_counts
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening_counts
        suggest_dimension: screening_counts.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2FScreening_counts.view.lkml?line=27"
        permanent: true
        source_file: views/Screening_counts.view.lkml
        source_file_path: looker-tnphr/views/Screening_counts.view.lkml
        sql: "${TABLE}.member_id "
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
        label: Family Member Master Village Name
        label_from_parameter:
        label_short: Village Name
        map_layer:
        name: family_member_master.village_name
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
        field_group_variant: Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: family_member_master
        suggest_dimension: family_member_master.village_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Ffamily_member_master.view.lkml?line=293"
        permanent: true
        source_file: views/family_member_master.view.lkml
        source_file_path: looker-tnphr/views/family_member_master.view.lkml
        sql: "${TABLE}.village_name "
        sql_case:
        filters:
        times_used: 0
      table_calculations:
      - label: Population repeated screened
        name: population_repeated_screened
        expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}"
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
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Unique_Screening}-${screening_counts.Member_count}",
        label: Population repeated screened, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: population_repeated_screened, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Block Name: address_block_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Role Name: health_screening.role_name
      Facility Name: facility_registry.facility_name
      Individual/Visits: health_screening.toggle_IR
      Date: health_screening.last_update_date
    row: 71
    col: 6
    width: 12
    height: 6
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
    listens_to_filters: [Huds, Block Name]
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
    listens_to_filters: [Block Name, Districts]
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
    listens_to_filters: []
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
    field: health_screening.last_update_date
  - name: User Directorate Name
    title: User Directorate Name
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
    field: health_screening.user_directorate_name
  - name: Owner Name
    title: Owner Name
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
    explore: facility_registry
    listens_to_filters: []
    field: facility_owner_master.owner_name
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
      - DME Coordinator
      - Block Health Supervisor - BHS
      - Community Health Nurse - CHN
      - Auxilary Nurse Midwife - ANM
      - Assistant Program Manager - APM
      - Block Account Assistant
      - Block Medical Officer - BMO
      - Community Volunteers
      - DDHS Admin
      - Consultant
      - DBC - Mazdoor
      - DMS Coordinator
      - Chief Medical Officer
      - Data Base Admin
      - Dental Assistant
      - District Training Team Medical Officer - DTTMO
      - District Epidemiologist
      - Field Staff (Mazdoor)
      - Dental Surgeon
      - Health Inspector
      - Lab Technician
      - Data Entry Opertor
      - Mentor Staff Nurse
      - MMU Cleaner
      - Mass Interviewer
      - Field Worker
      - HUD Admin
      - Health Officer
      - Mid Level Health Provider
      - ICTC Counsellor
      - Medical Officer
      - DPO NCD
      - Municipality Health Officer
      - RCH Staff Nurse
      - Statistical Assistant
      - Urban PHC MO
      - Urban Health Nurse
      - Women Health Volunteer
      - Zonal Health Officer
      - State Supervisor
      - School Medical Officer
      - Palliative Staff Nurse
      - Village Health Nurse (Regular)
      - RBSK MO
      - NCD Staff Nurse
      - Volunteer
      - Sector Health Nurse-SHN
      - Pharmacist
      - Physiotherapist
      - PHR Staff
      - Staff Nurse
      - Non Medical Supervisor -NMS
      - Multi Purpose Worker-Male
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
  - name: Facility Name
    title: Facility Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: facility_registry.facility_name
  - name: Individual/Visits
    title: Individual/Visits
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.toggle_IR
