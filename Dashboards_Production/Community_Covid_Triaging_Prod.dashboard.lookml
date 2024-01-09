- dashboard: community_covid_triaging_prod
  title: Community Covid Triaging v1.0.4 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 0AdVQvpE87Q1oCIdmJKVhS
  elements:
  - title: High Risk
    name: High Risk
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Covid_triaging_High_risk]
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
    custom_color: "#9334E6"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#E52592",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Count of members with high risks ( having high chances of getting Covid)
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 5
    col: 0
    width: 4
    height: 5
  - title: Low Risk
    name: Low Risk
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Covid_triaging_Low_Risk]
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Count of members with low risks ( having low chances of getting Covid)
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 5
    col: 8
    width: 4
    height: 5
  - title: Medium Risk
    name: Medium Risk
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Covid_triaging_medium]
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
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Count of members with medium risks ( having medium chances of getting
      Covid)
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 5
    col: 4
    width: 4
    height: 5
  - title: Normal
    name: Normal
    model: tnphr
    explore: family_member_master
    type: single_value
    fields: [health_screening.Covid_triaging_normal]
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
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: Count of members with no risk ( having no chances of getting Covid)
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 5
    col: 12
    width: 4
    height: 5
  - name: " Covid Triaging "
    type: text
    title_text: " Covid Triaging "
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 2
  - name: Compliance of referral
    type: text
    title_text: Compliance of referral
    subtitle_text: ''
    body_text: ''
    row: 22
    col: 0
    width: 24
    height: 2
  - title: Block Wise
    name: Block Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Covid_triaging_High_risk, health_screening.Covid_triaging_medium,
      health_screening.Covid_triaging_Low_Risk, health_screening.Covid_triaging_normal,
      health_screening.block_name]
    filters:
      health_screening.block_name: "-NULL"
    sorts: [health_screening.Covid_triaging_High_risk desc]
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
    series_labels:
      health_screening.block_name: Blocks
      health_screening.Covid_triaging_medium: Medium risk
      health_screening.Covid_triaging_High_risk: High risk
      health_screening.Covid_triaging_Low_Risk: Low risk
      health_screening.Covid_triaging_normal: Normal
    series_cell_visualizations:
      health_screening.Covid_triaging_High_risk:
        is_active: false
    series_text_format:
      health_screening.block_name:
        align: center
      health_screening.Covid_triaging_High_risk:
        align: center
      health_screening.Covid_triaging_medium:
        align: center
      health_screening.Covid_triaging_Low_Risk:
        align: center
      health_screening.Covid_triaging_normal:
        align: center
    header_background_color: "#dcff29"
    defaults_version: 1
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 10
    col: 12
    width: 12
    height: 6
  - title: HUD Wise
    name: HUD Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Covid_triaging_High_risk, health_screening.Covid_triaging_medium,
      health_screening.Covid_triaging_Low_Risk, health_screening.Covid_triaging_normal,
      health_screening.hud_name]
    filters:
      health_screening.hud_name: "-NULL"
    sorts: [health_screening.Covid_triaging_High_risk desc]
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
    series_labels:
      health_screening.hud_name: Hud
      health_screening.Covid_triaging_High_risk: High risk
      health_screening.Covid_triaging_medium: Medium risk
      health_screening.Covid_triaging_Low_Risk: Low risk
      health_screening.Covid_triaging_normal: Normal
    series_cell_visualizations:
      health_screening.Covid_triaging_High_risk:
        is_active: false
    series_text_format:
      health_screening.hud_name:
        align: center
      health_screening.Covid_triaging_High_risk:
        align: center
      health_screening.Covid_triaging_medium:
        align: center
      health_screening.Covid_triaging_Low_Risk:
        align: center
      health_screening.Covid_triaging_normal:
        align: center
    header_background_color: "#dcff29"
    defaults_version: 1
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 16
    col: 0
    width: 12
    height: 6
  - title: Village Wise
    name: Village Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Covid_triaging_High_risk, health_screening.Covid_triaging_medium,
      health_screening.Covid_triaging_Low_Risk, health_screening.Covid_triaging_normal,
      health_screening.village_name]
    filters:
      health_screening.village_name: "-NULL"
    sorts: [health_screening.Covid_triaging_High_risk desc]
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
    series_labels:
      health_screening.village_name: Villages
      health_screening.Covid_triaging_High_risk: High risk
      health_screening.Covid_triaging_medium: Medium risk
      health_screening.Covid_triaging_Low_Risk: Low risk
      health_screening.Covid_triaging_normal: Normal
    series_cell_visualizations:
      health_screening.Covid_triaging_High_risk:
        is_active: false
    series_text_format:
      health_screening.village_name:
        align: center
      health_screening.Covid_triaging_High_risk:
        align: center
      health_screening.Covid_triaging_medium:
        align: center
      health_screening.Covid_triaging_Low_Risk:
        align: center
      health_screening.Covid_triaging_normal:
        align: center
    header_background_color: "#dcff29"
    defaults_version: 1
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 16
    col: 12
    width: 12
    height: 6
  - title: Risk Comparison
    name: Risk Comparison
    model: tnphr
    explore: family_member_master
    type: looker_pie
    fields: [health_screening.outcome_recommend_outcome_result, health_screening.Member_count]
    filters:
      health_screening.outcome_recommend_outcome_result: "-NULL,-EMPTY"
    sorts: [health_screening.Member_count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      '"Low Risk"': "#F9AB00"
      '"Medium Risk"': "#E8710A"
      '"High Risk"': "#EA4335"
    series_labels:
      health_screening.district_name: District
      health_screening.Covid_triaging_High_risk: High risk
      health_screening.Covid_triaging_medium: Medium risk
      health_screening.Covid_triaging_Low_Risk: Low risk
      health_screening.Covid_triaging_normal: Normal risk
      '"Normal"': Normal
      '"Low Risk"': Low Risk
      '"Medium Risk"': Medium Risk
      '"High Risk"': High Risk
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
      health_screening.Covid_triaging_High_risk:
        is_active: false
    header_background_color: "#ddfa2d"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    note_state: collapsed
    note_display: hover
    note_text: " It shows the percentage of members with high risks, low Risks, medium\
      \ risks and normal risks of getting Covid 19"
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 5
    col: 16
    width: 8
    height: 5
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
  - name: Compliance of Referral
    title: Compliance of Referral
    note_state: collapsed
    note_display: hover
    note_text: This includes the count of members who got screened in between the
      screening date and next follow up date
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
      fields: [health_screening.Member_count]
      filters:
        health_screening.outcome_referral_place_id: -NULL,-"\"null\""
      limit: 500
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Members Referred
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [percentage, compliance.compliance_count]
    type: single_value
    series_types: {}
    sorts: [health_screening.Member_count desc]
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.compliance_count}/${health_screening.Member_count})*100",
        label: Percentage, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: percentage, _type_hint: number}]
    listen:
    - Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    - Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 24
    col: 0
    width: 12
    height: 5
  - name: Compliance of referral % within 7 days
    title: Compliance of referral % within 7 days
    note_state: collapsed
    note_display: hover
    note_text: This includes the percentage of members who got screened in between
      the screening date and next follow up date within 7 days
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: single_value
      fields: [health_screening.compliance_count]
      filters:
        health_screening.last_update_date: 7 days
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
      conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
          font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
            palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
          strikethrough: false, fields: !!null ''}]
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
      fields: [health_screening.compliance_count]
      limit: 5000
      hidden_fields: []
      join_fields: []
    custom_color_enabled: true
    custom_color: "#9334E6"
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [q1_compliance.compliance, q1_compliance.health_screening_last_update_date,
      q1_compliance.health_screening_outcome_follow_up, q1_compliance.health_screening_outcome_follow_up_date,
      q1_compliance.prev_health_screening_last_update_date, q1_compliance.prev_health_screening_outcome_follow_up_date,
      health_screening.compliance_count, q1_health_screening.compliance_count]
    type: single_value
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.compliance_count}/${q1_health_screening.compliance_count})*100",
        label: Compliance of referral % within 7 days, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: compliance_of_referral_within_7_days,
        _type_hint: number}]
    listen:
    - Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    - Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 24
    col: 12
    width: 12
    height: 5
  - title: District Wise
    name: District Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.Covid_triaging_High_risk, health_screening.Covid_triaging_medium,
      health_screening.Covid_triaging_Low_Risk, health_screening.Covid_triaging_normal,
      health_screening.district_name]
    filters:
      health_screening.district_name: "-NULL"
      health_screening.block_name: ''
      health_screening.hud_name: ''
      health_screening.last_update_date: ''
      health_screening.village_name: ''
    sorts: [health_screening.Covid_triaging_High_risk desc]
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
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.block_name: Block
      health_screening.Covid_triaging_medium: Medium risk
      health_screening.Covid_triaging_High_risk: High risk
      health_screening.Covid_triaging_Low_Risk: Low risk
      health_screening.Covid_triaging_normal: Normal
      health_screening.district_name: Districts
    series_cell_visualizations:
      health_screening.Covid_triaging_High_risk:
        is_active: false
    series_text_format:
      health_screening.district_name:
        align: center
      health_screening.Covid_triaging_High_risk:
        align: center
      health_screening.Covid_triaging_medium:
        align: center
      health_screening.Covid_triaging_Low_Risk:
        align: center
      health_screening.Covid_triaging_normal:
        align: center
    header_background_color: "#dcff29"
    defaults_version: 1
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Date range: family_member_master.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 10
    col: 0
    width: 12
    height: 6
  - title: District wise
    name: District wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.district_name, health_screening.Member_count]
    filters:
      compliance.compliance: '1'
      family_member_master.last_update_date: 7 days
      health_screening.district_name: "-NULL"
    sorts: [health_screening.district_name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance of referral within 7 days
      health_screening.district_name: District
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    series_text_format:
      health_screening.district_name:
        align: center
      health_screening.Member_count:
        align: center
    header_background_color: "#dcff29"
    series_value_format:
      health_screening.Member_count: "#0"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: This includes the district wise count of members who got screened in
      between the screening date and next follow up date within 7 days
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 29
    col: 0
    width: 12
    height: 5
  - title: Block wise
    name: Block wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.block_name, health_screening.Member_count]
    filters:
      compliance.compliance: '1'
      family_member_master.last_update_date: 7 days
    sorts: [health_screening.Member_count desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance of referral within 7 days
      health_screening.block_name: Block
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    series_text_format:
      health_screening.Member_count:
        align: center
      health_screening.block_name:
        align: center
    header_background_color: "#dcff29"
    series_value_format:
      health_screening.Member_count: "#0"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the block wise count of members who got screened in between
      the screening date and next follow up date within 7 days
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 29
    col: 12
    width: 12
    height: 5
  - title: HUD wise
    name: HUD wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.hud_name, health_screening.Member_count]
    filters:
      compliance.compliance: '1'
      family_member_master.last_update_date: 7 days
      health_screening.hud_name: "-NULL"
    sorts: [health_screening.hud_name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance of referral within 7 days
      health_screening.hud_name: HUDs
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    series_text_format:
      health_screening.Member_count:
        align: center
      health_screening.hud_name:
        align: center
    header_background_color: "#dcff29"
    series_value_format:
      health_screening.Member_count: "#0"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the HUD wise count of members who got screened in between
      the screening date and next follow up date within 7 days
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 34
    col: 0
    width: 12
    height: 6
  - title: Village wise
    name: Village wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.village_name, health_screening.Member_count]
    filters:
      compliance.compliance: '1'
      family_member_master.last_update_date: 7 days
      health_screening.village_name: "-NULL"
    sorts: [health_screening.Member_count desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.Member_count: Compliance of referral within 7 days
      health_screening.village_name: Village
    series_cell_visualizations:
      health_screening.Member_count:
        is_active: false
    series_text_format:
      health_screening.Member_count:
        align: center
      health_screening.village_name:
        align: center
    header_background_color: "#dcff29"
    series_value_format:
      health_screening.Member_count: "#0"
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: This includes the village wise count of members who got screened in
      between the screening date and next follow up date within 7 days
    listen:
      Huds: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Villages: family_member_master.village_name
      Directorate Name: facility_directorate_master.directorate_name
      Districts: family_member_master.district_name
      Toggle Role: health_screening.role_toggle
      Toggle: health_screening.toggle_IR
    row: 34
    col: 12
    width: 12
    height: 6
  filters:
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
    listens_to_filters: [Blocks, Villages, Huds]
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
    listens_to_filters: [Blocks, Villages, Districts]
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
    listens_to_filters: [Villages, Districts, Huds]
    field: family_member_master.block_name
  - name: Villages
    title: Villages
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
    field: family_member_master.village_name
  - name: Date range
    title: Date range
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_toggle
  - name: Toggle
    title: Toggle
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
    field: health_screening.toggle_IR
