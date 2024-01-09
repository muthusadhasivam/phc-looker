- dashboard: mtm_compliance___control_rate_prod
  title: MTM Compliance & Control Rate v1.0.4 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: lU3kwrhauoR9Qtzd8dao71
  elements:
  - title: Unique Screenings
    name: Unique Screenings
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Unique_Screening, health_screening.Total_Screening]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${health_screening.Unique_Screening}",
        label: Unique Screening, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: unique_screening,
        _type_hint: number}, {category: table_calculation, expression: "${health_screening.Total_Screening}",
        label: Total Screening, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: total_screening,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#9334E6"
    comparison_label: Total Screenings
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
    hidden_fields: [health_screening.Unique_Screening, health_screening.Total_Screening]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of people who got screened (only once even
      he got screened multiple times)
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 3
    col: 0
    width: 6
    height: 4
  - name: Number of Referred
    title: Number of Referred
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of people who got referred (only once even
      he got referred multiple times) where referral place id's are present
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Refferal_count_V2]
      filters:
        address_district_master.district_name: ''
        address_hud_master.hud_name: ''
        address_block_master.block_name: ''
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Unique_Screening]
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Total screenings
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [percentage]
    type: single_value
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.Refferal_count_V2}/${health_screening.Unique_Screening})*100",
        label: Percentage, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 3
    col: 12
    width: 6
    height: 4
  - name: Compliance of Referral
    title: Compliance of Referral
    note_state: collapsed
    note_display: hover
    note_text: 'This includes the count of member who got screened in between the
      screening date and next follow up date '
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.compliance_count]
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
      custom_color: "#1A73E8"
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: true
      limit_displayed_rows_values:
        show_hide: show
        first_last: first
        num_rows: '1'
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      hide_totals: false
      hide_row_totals: false
      defaults_version: 1
      hidden_fields: [compliance.compliance_count]
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Refferal_count_V2]
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Members
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [percentage, compliance.compliance_count]
    type: single_value
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.compliance_count}/${health_screening.Refferal_count_V2})*100",
        label: Percentage, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 3
    col: 18
    width: 6
    height: 4
  - name: Treatment Compliance of MTM Beneficiaries
    title: Treatment Compliance of MTM Beneficiaries
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members who got benefited with MTM scheme
      (counted only once even he/she got benefited with multiple times for multiple
      scenarios i.e,  diabetes mellitus ,dialysis capd, hypertension, palliative care,
      physiotherapy etc)
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [drugs_and_services.Treatment_compliance_MTM_Beneficiary]
      filters:
        drugs_and_services.compliance: '1'
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
      custom_color: "#1A73E8"
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: true
      limit_displayed_rows_values:
        show_hide: show
        first_last: first
        num_rows: '1'
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      hide_totals: false
      hide_row_totals: false
      defaults_version: 1
      hidden_fields: []
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count]
      limit: 500
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiary, label: Confirmed
            MTM Beneficiary, expression: "${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed MTM Beneficiaries
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [percentage, confirmed_mtm_beneficiary, health_screening.mtm_beneficiary_v1_count,
      health_history.mtm_beneficiary_v2_count]
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${confirmed_mtm_beneficiary}",
        label: Confirmed MTM Beneficiary, value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: confirmed_mtm_beneficiary_1, _type_hint: number}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
    row: 3
    col: 6
    width: 6
    height: 4
  - name: Confirmed Diabetes mellitus (Age >18)
    title: Confirmed Diabetes mellitus (Age >18)
    note_state: collapsed
    note_display: hover
    note_text: Count of the members (age > 18) with confirmed Diabetes Mellitus where
      dm_screening is Known DM
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_dm_screening: Known DM
        address_district_master.district_name: ''
        address_hud_master.hud_name: ''
        address_block_master.block_name: ''
        health_screening.age: ">18"
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
      custom_color: "#1e25e8"
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.screening_count]
      filters:
        health_screening.age: ">18"
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: of Screenings (Age >18)
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.screening_count, percentage]
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${health_screening.Member_count}/${health_screening.screening_count}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: value, label: Value, expression: 'concat(${percentage},"%")',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 7
    col: 0
    width: 6
    height: 4
  - name: Confirmed Hypertension (Age >18)
    title: Confirmed Hypertension (Age >18)
    note_state: collapsed
    note_display: hover
    note_text: Count of the members (age > 18) with confirmed Hypertension where ht_screening
      is Known HT
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_ht_screening: Known HT
        health_screening.age: ">18"
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
      custom_color: "#1b19e6"
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Total_Screening]
      filters:
        health_screening.age: ">18"
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: of Screenings (Age >18)
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    hidden_fields: [percentage, health_screening.Total_Screening]
    series_types: {}
    dynamic_fields: [{table_calculation: percentage, label: Percentage, expression: 'round(${health_screening.Member_count}/${health_screening.Total_Screening}*100,2)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_2, label: Calculation
          2, expression: 'concat(${percentage},"%")', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: string}]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 7
    col: 6
    width: 6
    height: 4
  - name: Controlled Diabetes Mellitus
    title: Controlled Diabetes Mellitus
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members with controlled Diabetes Mellitus
      where rbs < 140 and dm_screening is Known DM
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_dm_screening: Known DM
        health_screening.screening_values_rbs: "<140"
        health_screening.age: ">18"
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
      custom_color: "#1928e8"
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_dm_screening: Known DM
        health_screening.age: ">18"
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed Diabetes mellitus (Age >18)
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 7
    col: 12
    width: 6
    height: 4
  - name: Controlled Hypertension
    title: Controlled Hypertension
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members with controlled Hypertension where
      dia_bp < 90, sys_bp < 140 and ht_screening is Known HT
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_dia_bp: "<90"
        health_screening.screening_values_sys_bp: "<140"
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
        health_screening.age: ">18"
      sorts: [health_screening.Member_count desc]
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
      custom_color: "#2028e6"
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
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
        health_screening.age: ">18"
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
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Confirmed Hypertension
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 7
    col: 18
    width: 6
    height: 4
  - name: Controlled Hypertension and Diabetes Milletus
    title: Controlled Hypertension and Diabetes Milletus
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members with controlled Diabetes Mellitus
      and Hypertension both where with dia_bp < 90, sys_bp < 140, rbs < 140, dm_screening
      is Known DM and ht_screening is Known HT
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_dia_bp: "<90"
        health_screening.screening_values_dm_screening: '"\"Known DM\""'
        health_screening.screening_values_sys_bp: "<140"
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
        health_screening.screening_values_rbs: "<140"
        health_screening.age: ">18"
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
      custom_color: "#262be8"
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
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count]
      filters:
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
        health_screening.screening_values_dm_screening: '"\"Known DM\""'
        health_screening.age: ">18"
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Both Hypertension and Diabetes Milletus (Age >18)
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 11
    col: 0
    width: 24
    height: 4
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy, health_screening.Unique_Screening, health_screening.Total_Screening,
        health_screening.block_name]
      filters:
        health_screening.block_name: "-NULL"
      sorts: [health_screening.MTM_physiotherapy desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiary, label: Confirmed
            MTM Beneficiary, expression: "(${health_screening.MTM_Diabetes}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_other}+${health_screening.MTM_palliative_care}+${health_screening.MTM_physiotherapy})",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
      series_labels:
        health_screening.Unique_Screening: Individual Screenings
        health_screening.Total_Screening: Total Screenings
      series_cell_visualizations:
        health_screening.Unique_Screening:
          is_active: false
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
      hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy]
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.block_name,
        health_screening.Confirmed_Hypertension, health_screening.Confirmed_Hypertension_and_DiabetesMellitus,
        health_screening.Controlled_Diabetes_Mellitus, health_screening.Controlled_Hypertension,
        health_screening.Controlled_Hypertension_and_Diabetes_Mellitus]
      filters:
        health_screening.block_name: "-NULL"
      sorts: [health_screening.Confirmed_Diabetes_mellitus desc]
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
      series_labels:
        health_screening.Member_count: Diabetes mellitus
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: health_screening.block_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Member_count, health_screening.block_name]
      filters:
        health_screening.outcome_referral_place_id: -NULL,-"\"null\""
        health_screening.block_name: ''
      sorts: [health_screening.Member_count desc]
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
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: health_screening.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count, health_screening.block_name]
      filters:
        compliance.compliance: '1'
        health_screening.block_name: "-NULL"
      sorts: [health_screening.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: health_screening.block_name
        source_field_name: health_screening.block_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [drugs_and_services.Treatment_compliance_MTM_Beneficiary, address_block_master.block_name]
      filters:
        health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: "-NULL"
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
      sorts: [drugs_and_services.Treatment_compliance_MTM_Beneficiary desc]
      limit: 500
      join_fields:
      - field_name: address_block_master.block_name
        source_field_name: health_screening.block_name
    show_sql_query_menu_options: false
    column_order: [health_screening.block_name, health_screening.Unique_Screening,
      health_screening.Total_Screening, confirmed_mtm_beneficiary, drugs_and_services.Treatment_compliance_MTM_Beneficiary,
      health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Member_count, q3_health_screening.Member_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      q2_health_screening.Member_count: Members with Hypertension
      q4_health_screening.Member_count: Number of Referred
      q5_health_screening.Member_count: Compliance of Referral
      health_screening.Member_count: Number of Referred
      address_block_master.block_name: Blocks
      health_screening.Unique_Screening: Unique Screenings
      health_screening.Total_Screening: Total Screenings
      confirmed_mtm_beneficiary: Confirmed MTM Beneficiaries
      health_screening.block_name: Blocks
      q3_health_screening.Member_count: Compliance of Referral
    series_column_widths:
      address_district_master.district_name: 124.77999999999997
      health_screening.Unique_Screening: 145
      health_screening.Total_Screening: 133
      confirmed_mtm_beneficiary: 210
      health_screening.Member_count: 138
      q4_health_screening.Member_count: 140
      q3_health_screening.Member_count: 142
      q2_health_screening.Member_count: 182
      health_screening.Confirmed_Hypertension: 178
      health_screening.Confirmed_Diabetes_mellitus: 201
      health_screening.Control_rate: 101
      health_screening.Controlled_Diabetes_Mellitus: 201
      health_screening.Controlled_Hypertension: 178
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: 307
      q5_health_screening.Member_count: 170
      address_block_master.block_name: 126
      drugs_and_services.Treatment_compliance_MTM_Beneficiary: 271
      health_screening.block_name: 150
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: 304
    series_cell_visualizations:
      health_screening.Unique_Screening:
        is_active: false
    series_text_format:
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
      confirmed_mtm_beneficiary:
        align: center
      health_screening.Confirmed_Diabetes_mellitus:
        align: center
      health_screening.Member_count:
        align: center
      drugs_and_services.Treatment_compliance_MTM_Beneficiary:
        align: center
      q3_health_screening.Member_count:
        align: center
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#12B5CB"
    header_text_alignment: ''
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
      health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy]
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Diabetes
        label_from_parameter:
        label_short: MTM Diabetes
        map_layer:
        name: health_screening.MTM_Diabetes
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
        dimension_group:
        error:
        field_group_variant: MTM Diabetes
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_Diabetes
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1516"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_diabetes_mellitus
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1529"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_dialysis_capd
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Hypertension
        label_from_parameter:
        label_short: MTM Hypertension
        map_layer:
        name: health_screening.MTM_hypertension
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
        dimension_group:
        error:
        field_group_variant: MTM Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1546"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_hypertension
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Other
        label_from_parameter:
        label_short: MTM Other
        map_layer:
        name: health_screening.MTM_other
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
        dimension_group:
        error:
        field_group_variant: MTM Other
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_other
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1563"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_others
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1535"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_palliative_care
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1552"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_physiotherapy
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1261"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1300"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiary
        label: Confirmed MTM Beneficiary
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: health_screening.Confirmed_Diabetes_mellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Diabetes_mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1409"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dm_screening
          condition: "%Known DM%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: health_screening.Confirmed_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1420"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
          condition: "%Known HT%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension and DiabetesMellitus
        label_from_parameter:
        label_short: Confirmed Hypertension and DiabetesMellitus
        map_layer:
        name: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension and DiabetesMellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1431"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1456"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: health_screening.Controlled_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1443"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension and Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Hypertension and Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension and Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1468"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: q3_health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: drugs_and_services Treatment Compliance MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance MTM Beneficiary
        map_layer:
        name: drugs_and_services.Treatment_compliance_MTM_Beneficiary
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
        view: drugs_and_services
        view_label: drugs_and_services
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Treatment Compliance MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs_and_services
        suggest_dimension: drugs_and_services.Treatment_compliance_MTM_Beneficiary
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fdrugs_and_services.view.lkml?line=122"
        permanent: true
        source_file: views/drugs_and_services.view.lkml
        source_file_path: looker-tnphr/views/drugs_and_services.view.lkml
        sql: "${health_screening_member_id} "
        sql_case:
        filters:
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Health Screening Block Name
        label_from_parameter:
        label_short: Block Name
        map_layer:
        name: health_screening.block_name
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.block_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=85"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.block_name "
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    sorts: [confirmed_mtm_beneficiary desc]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 26
    col: 0
    width: 24
    height: 6
  - name: HUD Wise
    title: HUD Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy, health_screening.Unique_Screening, health_screening.Total_Screening,
        health_screening.hud_name]
      filters:
        address_hud_master.hud_name: "-NULL"
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.MTM_physiotherapy desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiary, label: Confirmed
            MTM Beneficiary, expression: "(${health_screening.MTM_Diabetes}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_other}+${health_screening.MTM_palliative_care}+${health_screening.MTM_physiotherapy})",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
      series_labels:
        health_screening.Unique_Screening: Individual Screenings
        health_screening.Total_Screening: Total Screenings
      series_cell_visualizations:
        health_screening.Unique_Screening:
          is_active: false
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
      hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy]
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
        health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
        health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
        health_screening.hud_name]
      filters:
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.Confirmed_Diabetes_mellitus desc]
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
      series_labels:
        health_screening.Member_count: Diabetes mellitus
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: health_screening.hud_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Member_count, health_screening.hud_name]
      filters:
        health_screening.outcome_referral_place_id: -NULL,-"\"null\""
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.Member_count desc]
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
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: health_screening.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count, health_screening.hud_name]
      filters:
        compliance.compliance: '1'
        health_screening.hud_name: "-NULL"
      sorts: [health_screening.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: health_screening.hud_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [drugs_and_services.Treatment_compliance_MTM_Beneficiary, health_screening.hud_name]
      filters:
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: "-NULL"
        health_screening.hud_name: "-NULL"
      sorts: [drugs_and_services.Treatment_compliance_MTM_Beneficiary desc]
      limit: 500
      join_fields:
      - field_name: health_screening.hud_name
        source_field_name: health_screening.hud_name
    show_sql_query_menu_options: false
    column_order: [health_screening.hud_name, health_screening.Unique_Screening, health_screening.Total_Screening,
      confirmed_mtm_beneficiary, drugs_and_services.Treatment_compliance_MTM_Beneficiary,
      health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Member_count, q3_health_screening.Member_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      q2_health_screening.Member_count: Members with Hypertension
      q4_health_screening.Member_count: Number of Referred
      q5_health_screening.Member_count: Compliance of Referral
      health_screening.Member_count: Number of Referred
      address_hud_master.hud_name: HUDs
      health_screening.Unique_Screening: Unique Screenings
      health_screening.Total_Screening: Total Screenings
      confirmed_mtm_beneficiary: Confirmed MTM Beneficiaries
      q3_health_screening.Member_count: Compliance of Referral
    series_column_widths:
      address_district_master.district_name: 124.77999999999997
      health_screening.Unique_Screening: 145
      health_screening.Total_Screening: 133
      confirmed_mtm_beneficiary: 210
      health_screening.Member_count: 141
      q4_health_screening.Member_count: 140
      q3_health_screening.Member_count: 142
      q2_health_screening.Member_count: 182
      health_screening.Confirmed_Hypertension: 178
      health_screening.Confirmed_Diabetes_mellitus: 201
      health_screening.Control_rate: 101
      health_screening.Controlled_Diabetes_Mellitus: 201
      health_screening.Controlled_Hypertension: 178
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: 307
      q5_health_screening.Member_count: 169
      address_hud_master.hud_name: 130
      drugs_and_services.Treatment_compliance_MTM_Beneficiary: 271
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: 304
      health_screening.hud_name: 150
    series_cell_visualizations:
      health_screening.Unique_Screening:
        is_active: false
    series_text_format:
      drugs_and_services.Treatment_compliance_MTM_Beneficiary:
        align: center
      health_screening.Confirmed_Diabetes_mellitus:
        align: center
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.Confirmed_Hypertension:
        align: center
      confirmed_mtm_beneficiary:
        align: center
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#12B5CB"
    header_text_alignment: ''
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
      health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy]
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Diabetes
        label_from_parameter:
        label_short: MTM Diabetes
        map_layer:
        name: health_screening.MTM_Diabetes
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
        dimension_group:
        error:
        field_group_variant: MTM Diabetes
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_Diabetes
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1516"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_diabetes_mellitus
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1529"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_dialysis_capd
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Hypertension
        label_from_parameter:
        label_short: MTM Hypertension
        map_layer:
        name: health_screening.MTM_hypertension
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
        dimension_group:
        error:
        field_group_variant: MTM Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1546"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_hypertension
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Other
        label_from_parameter:
        label_short: MTM Other
        map_layer:
        name: health_screening.MTM_other
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
        dimension_group:
        error:
        field_group_variant: MTM Other
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_other
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1563"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_others
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1535"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_palliative_care
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1552"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_physiotherapy
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1261"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1300"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiary
        label: Confirmed MTM Beneficiary
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: health_screening.Confirmed_Diabetes_mellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Diabetes_mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1409"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dm_screening
          condition: "%Known DM%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: health_screening.Confirmed_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1420"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
          condition: "%Known HT%"
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension and DiabetesMellitus
        label_from_parameter:
        label_short: Confirmed Hypertension and DiabetesMellitus
        map_layer:
        name: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension and DiabetesMellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1431"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1456"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: health_screening.Controlled_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1443"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension and Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Hypertension and Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension and Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1468"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: q3_health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: drugs_and_services Treatment Compliance MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance MTM Beneficiary
        map_layer:
        name: drugs_and_services.Treatment_compliance_MTM_Beneficiary
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
        view: drugs_and_services
        view_label: drugs_and_services
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Treatment Compliance MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs_and_services
        suggest_dimension: drugs_and_services.Treatment_compliance_MTM_Beneficiary
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fdrugs_and_services.view.lkml?line=122"
        permanent: true
        source_file: views/drugs_and_services.view.lkml
        source_file_path: looker-tnphr/views/drugs_and_services.view.lkml
        sql: "${health_screening_member_id} "
        sql_case:
        filters:
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Health Screening Hud Name
        label_from_parameter:
        label_short: Hud Name
        map_layer:
        name: health_screening.hud_name
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.hud_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=171"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.hud_name "
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    sorts: [health_screening.Confirmed_Hypertension desc]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 21
    col: 0
    width: 24
    height: 5
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy, health_screening.Unique_Screening, health_screening.Total_Screening,
        health_screening.district_name]
      filters:
        health_screening.district_name: "-NULL"
      sorts: [health_screening.MTM_physiotherapy desc]
      limit: 5000
      column_limit: 50
      dynamic_fields: [{table_calculation: confirmed_mtm_beneficiary, label: Confirmed
            MTM Beneficiary, expression: "(${health_screening.MTM_Diabetes}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_other}+${health_screening.MTM_palliative_care}+${health_screening.MTM_physiotherapy})",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
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
      series_labels:
        health_screening.Unique_Screening: Individual Screenings
        health_screening.Total_Screening: Total Screenings
        health_screening.district_name: Districts
      series_cell_visualizations:
        health_screening.Unique_Screening:
          is_active: false
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
      hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
        health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
        health_screening.MTM_physiotherapy]
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Confirmed_Diabetes_mellitus, health_screening.district_name,
        health_screening.Confirmed_Hypertension, health_screening.Confirmed_Hypertension_and_DiabetesMellitus,
        health_screening.Controlled_Diabetes_Mellitus, health_screening.Controlled_Hypertension,
        health_screening.Controlled_Hypertension_and_Diabetes_Mellitus]
      filters:
        health_screening.district_name: "-NULL"
      sorts: [health_screening.Confirmed_Diabetes_mellitus desc]
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
      series_labels:
        health_screening.Member_count: Diabetes mellitus
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: health_screening.district_name
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_screening.Member_count, health_screening.district_name]
      filters:
        health_screening.outcome_referral_place_id: -NULL,-"\"null\""
        health_screening.district_name: "-NULL"
      sorts: [health_screening.Member_count desc]
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
      series_cell_visualizations:
        health_screening.Member_count:
          is_active: false
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
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: health_screening.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count, health_screening.district_name]
      filters:
        compliance.compliance: '1'
        health_screening.district_name: "-NULL"
      sorts: [health_screening.Member_count desc]
      limit: 5000
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: health_screening.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [drugs_and_services.Treatment_compliance_MTM_Beneficiary, health_screening.district_name]
      filters:
        health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: "-NULL"
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL"
        health_screening.district_name: "-NULL"
      sorts: [drugs_and_services.Treatment_compliance_MTM_Beneficiary desc]
      limit: 500
      join_fields:
      - field_name: health_screening.district_name
        source_field_name: health_screening.district_name
    show_sql_query_menu_options: false
    column_order: [health_screening.district_name, health_screening.Unique_Screening,
      health_screening.Total_Screening, confirmed_mtm_beneficiary, drugs_and_services.Treatment_compliance_MTM_Beneficiary,
      health_screening.Confirmed_Diabetes_mellitus, health_screening.Confirmed_Hypertension,
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus, health_screening.Controlled_Diabetes_Mellitus,
      health_screening.Controlled_Hypertension, health_screening.Controlled_Hypertension_and_Diabetes_Mellitus,
      health_screening.Member_count, q3_health_screening.Member_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      q2_health_screening.Member_count: Members with Hypertension
      q4_health_screening.Member_count: Number of Referred
      q5_health_screening.Member_count: Compliance of Referral
      health_screening.Member_count: Number of Referred
      address_district_master.district_name: Districts
      health_screening.Unique_Screening: Unique Screenings
      health_screening.Total_Screening: Total Screenings
      confirmed_mtm_beneficiary: Confirmed MTM Beneficiaries
      health_screening.district_name: Districts
      q3_health_screening.Member_count: Compliance of Referral
    series_column_widths:
      address_district_master.district_name: 124.77999999999997
      health_screening.Unique_Screening: 145
      health_screening.Total_Screening: 133
      confirmed_mtm_beneficiary: 210
      health_screening.Member_count: 140
      q4_health_screening.Member_count: 140
      q3_health_screening.Member_count: 142
      q2_health_screening.Member_count: 182
      health_screening.Confirmed_Hypertension: 178
      health_screening.Confirmed_Diabetes_mellitus: 201
      health_screening.Control_rate: 101
      health_screening.Controlled_Diabetes_Mellitus: 201
      health_screening.Controlled_Hypertension: 178
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus: 307
      q5_health_screening.Member_count: 172
      health_screening.district_name: 150
      drugs_and_services.Treatment_compliance_MTM_Beneficiary: 271
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus: 304
    series_cell_visualizations:
      health_screening.Unique_Screening:
        is_active: false
    series_text_format:
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
      confirmed_mtm_beneficiary:
        align: center
      health_screening.Confirmed_Diabetes_mellitus:
        align: center
      health_screening.Confirmed_Hypertension:
        align: center
      health_screening.Controlled_Hypertension:
        align: center
      health_screening.Controlled_Diabetes_Mellitus:
        align: center
      health_screening.Confirmed_Hypertension_and_DiabetesMellitus:
        align: center
      health_screening.Controlled_Hypertension_and_Diabetes_Mellitus:
        align: center
      health_screening.Member_count:
        align: center
      q3_health_screening.Member_count:
        align: center
      drugs_and_services.Treatment_compliance_MTM_Beneficiary:
        align: center
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#12B5CB"
    header_text_alignment: ''
    header_font_size: '13'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    hidden_fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
      health_screening.MTM_hypertension, health_screening.MTM_other, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy]
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Diabetes
        label_from_parameter:
        label_short: MTM Diabetes
        map_layer:
        name: health_screening.MTM_Diabetes
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
        dimension_group:
        error:
        field_group_variant: MTM Diabetes
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_Diabetes
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1516"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_diabetes_mellitus
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1529"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_dialysis_capd
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Hypertension
        label_from_parameter:
        label_short: MTM Hypertension
        map_layer:
        name: health_screening.MTM_hypertension
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
        dimension_group:
        error:
        field_group_variant: MTM Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1546"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_hypertension
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening MTM Other
        label_from_parameter:
        label_short: MTM Other
        map_layer:
        name: health_screening.MTM_other
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
        dimension_group:
        error:
        field_group_variant: MTM Other
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.MTM_other
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1563"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_others
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1535"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_palliative_care
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1552"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_physiotherapy
          condition: "%yes%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1261"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_id
          condition: "-NULL"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1300"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
        sql_case:
        filters:
        aggregate: true
      - type: number
        align: right
        measure: true
        dynamic: false
        can_pivot: true
        is_numeric: true
        name: confirmed_mtm_beneficiary
        label: Confirmed MTM Beneficiary
        value_format: "#,##0"
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Diabetes Mellitus
        label_from_parameter:
        label_short: Confirmed Diabetes Mellitus
        map_layer:
        name: health_screening.Confirmed_Diabetes_mellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Diabetes_mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1409"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_dm_screening
          condition: "%Known DM%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension
        label_from_parameter:
        label_short: Confirmed Hypertension
        map_layer:
        name: health_screening.Confirmed_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1420"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
          condition: "%Known HT%"
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Confirmed Hypertension and DiabetesMellitus
        label_from_parameter:
        label_short: Confirmed Hypertension and DiabetesMellitus
        map_layer:
        name: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
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
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension and DiabetesMellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Confirmed_Hypertension_and_DiabetesMellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1431"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1456"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension
        label_from_parameter:
        label_short: Controlled Hypertension
        map_layer:
        name: health_screening.Controlled_Hypertension
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1443"
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
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Controlled Hypertension and Diabetes Mellitus
        label_from_parameter:
        label_short: Controlled Hypertension and Diabetes Mellitus
        map_layer:
        name: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
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
        dimension_group:
        error:
        field_group_variant: Controlled Hypertension and Diabetes Mellitus
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Controlled_Hypertension_and_Diabetes_Mellitus
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1468"
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
        aggregate: true
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Health Screening Member Count
        label_from_parameter:
        label_short: Member Count
        map_layer:
        name: q3_health_screening.Member_count
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
        dimension_group:
        error:
        field_group_variant: Member Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Member_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1307"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: drugs_and_services Treatment Compliance MTM Beneficiary
        label_from_parameter:
        label_short: Treatment Compliance MTM Beneficiary
        map_layer:
        name: drugs_and_services.Treatment_compliance_MTM_Beneficiary
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
        view: drugs_and_services
        view_label: drugs_and_services
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Treatment Compliance MTM Beneficiary
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: drugs_and_services
        suggest_dimension: drugs_and_services.Treatment_compliance_MTM_Beneficiary
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fdrugs_and_services.view.lkml?line=122"
        permanent: true
        source_file: views/drugs_and_services.view.lkml
        source_file_path: looker-tnphr/views/drugs_and_services.view.lkml
        sql: "${health_screening_member_id} "
        sql_case:
        filters:
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Health Screening District Name
        label_from_parameter:
        label_short: District Name
        map_layer:
        name: health_screening.district_name
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
        view: health_screening
        view_label: Health Screening
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.district_name
        suggest_explore: family_member_master
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=136"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.district_name"
        sql_case:
        filters:
      table_calculations: []
      pivots: []
    sorts: [health_screening.Controlled_Hypertension_and_Diabetes_Mellitus desc]
    listen:
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    - Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      User Directorate Name: health_screening.user_directorate_name
      Toggle Role: health_screening.role_toggle
    row: 15
    col: 0
    width: 24
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
    width: 24
    height: 3
  - title: Block Wise Compliance
    name: Block Wise Compliance
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Member_count, address_block_master.block_name]
    filters:
      compliance.compliance: '1'
      family_member_master.district_name: ''
      family_member_master.hud_name: ''
      family_member_master.block_name: ''
      health_screening.user_directorate_name: ''
      health_screening.role_toggle: ''
    sorts: [health_screening.Member_count desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance
      address_block_master.block_name: Blocks
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: true
    header_background_color: "#b79aff"
    x_axis_gridlines: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Blocks
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#9334E6"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes Block wise count of member who got screened in between
      the screening date and next follow up date
    listen: {}
    row: 32
    col: 0
    width: 12
    height: 6
  - title: MTM Conditions Wise Compliance
    name: MTM Conditions Wise Compliance
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Member_count, health_screening.mtm_condition]
    filters:
      compliance.compliance: '1'
      health_screening.mtm_condition: 'diabetes^ ^ ,dialysis^ ^ ,physiotherapy^ ^
        ,palliative care^ ^ ,hypertansion^ ^ '
      family_member_master.district_name: ''
      family_member_master.hud_name: ''
      family_member_master.block_name: ''
      health_screening.user_directorate_name: ''
      health_screening.role_toggle: ''
    sorts: [health_screening.Member_count desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5f313589-67ce-44ba-b084-ec5107a7bb7e
      palette_id: be92eae7-de25-46ae-8e4f-21cb0b69a1f3
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance
      address_block_master.block_name: Blocks
      health_screening.mtm_condition: MTM Conditions
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: true
    header_background_color: "#b79aff"
    x_axis_gridlines: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Blocks
    series_types: {}
    series_colors: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#9334E6"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes MTM Conditions wise count of member who got screened
      in between the screening date and next follow up date
    listen: {}
    row: 32
    col: 12
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
  - name: Toggle Role
    title: Toggle Role
    type: field_filter
    default_value: Residence
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_toggle
