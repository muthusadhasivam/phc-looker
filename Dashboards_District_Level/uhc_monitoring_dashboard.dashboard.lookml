- dashboard: uhc_monitoring_dashboard_d
  title: Uhc Monitoring Dashboard D
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - name: "<H3> Hypertention</H3>"
    type: text
    title_text: "<H3> Hypertention</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 3
    col: 20
    width: 4
    height: 4
  - name: "<H3> Diabetes Mellitus </H3>"
    type: text
    title_text: "<H3> Diabetes Mellitus </H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 7
    col: 20
    width: 4
    height: 4
  - name: "<H3> CA Cx</H3>"
    type: text
    title_text: "<H3> CA Cx</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 23
    col: 20
    width: 4
    height: 4
  - name: "<H3> CA Br</H3>"
    type: text
    title_text: "<H3> CA Br</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 27
    col: 20
    width: 4
    height: 4
  - title: Screened
    name: Screened
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.screening_values_ht_screening: Known HT,Normal,Suspected hypertension
    sorts: [health_screening.screening_count desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    single_value_title: Total screened
    comparison_label: Screened count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    Date: health_screening.last_update_date
    Districts: health_screening.district_name
    Huds: health_screening.hud_name
    Blocks: health_screening.block_name
    listen:
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 3
    col: 0
    width: 5
    height: 4
  - title: Total Screened
    name: Total Screened
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.additional_services_physiotherapy: '"\"yes\"","\"no\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screening Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 11
    col: 0
    width: 5
    height: 4
  - title: Total Screened
    name: Total Screened (2)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.screening_values_dm_screening: Known DM,Normal,Suspected DM
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screened count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 7
    col: 0
    width: 5
    height: 4
  - title: Suspected
    name: Suspected
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.suspected_Hypertension, health_screening.till_prev_day_suspected_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    single_value_title: Total Suspected
    comparison_label: Suspected count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 3
    col: 5
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Suspected_Diabetes, health_screening.till_prev_day_suspected_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 7
    col: 5
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.screening_values_ht_screening: Known HT
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 3
    col: 10
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (2)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.screening_values_dm_screening: Known DM
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 7
    col: 10
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.mtm_condition: 'hypertension^ ^ '
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#5c18d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 3
    col: 15
    width: 5
    height: 4
  - name: "<H3> Physiotherapy </H3>"
    type: text
    title_text: "<H3> Physiotherapy </H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 11
    col: 20
    width: 4
    height: 4
  - name: "<H3> Palliative Care</H3>"
    type: text
    title_text: "<H3> Palliative Care</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 15
    col: 20
    width: 4
    height: 4
  - name: "<H3>CAPD Bags</H3>"
    type: text
    title_text: "<H3>CAPD Bags</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 19
    col: 20
    width: 4
    height: 4
  - title: Total Screened
    name: Total Screened (3)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.additional_services_dialysis_capd: '"\"yes\"","\"no\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screened Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 19
    col: 0
    width: 5
    height: 4
  - title: Total Screened
    name: Total Screened (4)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.additional_services_palliative_care: '"\"yes\"","\"no\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screening Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 15
    col: 0
    width: 5
    height: 4
  - title: Total Screened
    name: Total Screened (5)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.screening_values_cervical_cancer: '1,0'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screened Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 23
    col: 0
    width: 5
    height: 4
  - title: Total Screened
    name: Total Screened (6)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.screening_count, health_screening.till_prev_day_screening_count]
    filters:
      health_screening.screening_values_breast_cancer: '1,0'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Screened Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CC8FA",
        font_color: "#9E7FD0", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 27
    col: 0
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (2)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.mtm_condition: 'diabetes^ ^ '
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Durgs issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#5c18d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 7
    col: 15
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (3)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.mtm_condition: 'physiotherapy^ ^ '
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#5c18d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 11
    col: 15
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (4)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.mtm_condition: 'dialysis^ ^ '
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#5c18d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 19
    col: 15
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (5)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.screening_values_breast_cancer: '1'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#6636d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 27
    col: 15
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (6)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.screening_values_cervical_cancer: '1'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#7731d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 23
    col: 15
    width: 5
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (7)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Drugs_count, health_screening.till_prev_day_Drugs_count]
    filters:
      health_screening.drugs_id: "-NULL"
      health_screening.mtm_condition: 'palliative care^ ^ '
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ACE9F5",
        font_color: "#5c18d1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 15
    col: 15
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (3)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.screening_values_cervical_cancer: '1'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 23
    col: 10
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (4)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.screening_values_breast_cancer: '1'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 27
    col: 10
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (5)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.additional_services_palliative_care: '"\"yes\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 15
    col: 10
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (6)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.additional_services_physiotherapy: '"\"yes\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 11
    col: 10
    width: 5
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (7)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_confirmed_count]
    filters:
      health_screening.additional_services_dialysis_capd: '"\"yes\""'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#711ad1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 19
    col: 10
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected (2)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_suspected_count]
    filters:
      health_screening.additional_services_physiotherapy: "%suspected%,%Suspected%"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 11
    col: 5
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected (3)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_suspected_count]
    filters:
      health_screening.additional_services_dialysis_capd: "%suspected%,%Suspected%"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 19
    col: 5
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected (4)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_suspected_count]
    filters:
      health_screening.additional_services_palliative_care: "%suspected%,%Suspected%"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 15
    col: 5
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected (5)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_suspected_count]
    filters:
      health_screening.screening_values_cervical_cancer: "%suspected%,%Suspected%"
    sorts: [health_screening.Member_count desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 23
    col: 5
    width: 5
    height: 4
  - title: Total Suspected
    name: Total Suspected (6)
    model: tnphr_district_level
    explore: family_member_master
    type: single_value
    fields: [health_screening.Member_count, health_screening.till_prev_day_suspected_count]
    filters:
      health_screening.screening_values_breast_cancer: "%suspected%,%Suspected%"
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    comparison_label: Suspected Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: "#215dd1", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
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
    hidden_fields: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: health_screening.last_update_date
      Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 27
    col: 5
    width: 5
    height: 4
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Total_population, health_screening.Population_age_gt_30,
        family_member_master.district_name]
      sorts: [health_screening.Total_population desc]
      limit: 500
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: 'concat(33.9,"%")',
          label: Expected HT %, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, table_calculation: expected_ht, _type_hint: string}]
      join_fields: []
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.suspected_Hypertension, health_screening.Unique_Screening,
        family_member_master.district_name]
      filters:
        health_screening.age: ">30"
        address_district_master.district_name: "-NULL"
        health_screening.screening_id: "-NULL"
      sorts: [health_screening.suspected_Hypertension desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Member_count, family_member_master.district_name]
      filters:
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
      sorts: [health_screening.Member_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr_district_level
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count, family_member_master.district_name]
      filters:
        health_screening.last_update_date: 4 weeks
        health_screening.screening_values_ht_screening: '"\"Known HT\""'
      sorts: [health_screening.Drugs_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", family_member_master.district_name, health_screening.Total_population,
      health_screening.Population_age_gt_30, individual_screened, drugs_issued_among_confirmed_ht_in_last_4_weeks,
      expected_ht, health_screening.suspected_Hypertension, confirmed_ht]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      health_screening.Member_count: Confirmed HT
      health_screening.drug_Delivered_count: Drugs Issued
      health_screening.suspected_Hypertension: Suspected HT
      health_screening.Drugs_count: Drugs issued
      health_screening.Population_age_gt_30: Population > 30
      individual_screened: Individual screened % among 30+
      health_screening.district_name: District
      health_screening.Total_population: Population
    series_column_widths:
      health_screening.Population_age_gt_30: 134
      health_screening.Total_population: 104
      health_screening.district_name: 142
      health_screening.drug_Delivered_count: 135
      health_screening.suspected_Hypertension: 124
      expected_ht: 129
      health_screening.Member_count: 141
      health_screening.Unique_Screening: 157.5
      individual_screened: 246
      health_screening.Drugs_count: 341
      confirmed_ht: 143
      drugs_issued_among_confirmed_ht_in_last_4_weeks: 352
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      expected_ht:
        align: center
      individual_screened:
        align: center
      drugs_issued_among_confirmed_ht_in_last_4_weeks:
        align: center
      confirmed_ht:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.Population_age_gt_30:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: "#7eaae8"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1619"
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
        label: Health Screening Suspected Hypertension
        label_from_parameter:
        label_short: Suspected Hypertension
        map_layer:
        name: health_screening.suspected_Hypertension
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
        field_group_variant: Suspected Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.suspected_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1418"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${TABLE}.member_id "
        sql_case:
        filters:
        - field: health_screening.screening_values_ht_screening
          condition: "%Suspected hypertension%"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1284"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1330"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
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
        label: Health Screening Drugs Count
        label_from_parameter:
        label_short: Drugs Count
        map_layer:
        name: health_screening.Drugs_count
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
        field_group_variant: Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_screening
        suggest_dimension: health_screening.Drugs_count
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1740"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'CONCAT(${member_id},${screening_id},${drugs_id}) '
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
        label: Family member Master District Name
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
        view_label: Family member Master
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
      - type: string
        align: left
        measure: false
        dynamic: false
        can_pivot: false
        name: expected_ht
        label: Expected HT %
        value_format:
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      table_calculations:
      - label: Individual Screened %
        name: individual_screened
        expression: 'concat(round(${health_screening.Unique_Screening}/${health_screening.Population_age_gt_30}*100,2),"%")

          '
        can_pivot: true
        sortable: true
        type: string
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
      - label: Confirmed HT
        name: confirmed_ht
        expression: if(${health_screening.Member_count}>0,${health_screening.Member_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: Drugs issued among Confirmed HT in last 4 weeks
        name: drugs_issued_among_confirmed_ht_in_last_4_weeks
        expression: if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)
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
    hidden_fields: [health_screening.Unique_Screening, health_screening.Member_count,
      health_screening.Drugs_count]
    hide_totals: false
    hide_row_totals: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
      family_member_master.district_name: left
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'concat(round(${health_screening.Unique_Screening}/${health_screening.Population_age_gt_30}*100,2),"%")

          ', label: Individual Screened %, value_format: !!null '', value_format_name: '',
        _kind_hint: measure, table_calculation: individual_screened, _type_hint: string},
      {category: table_calculation, expression: 'if(${health_screening.Member_count}>0,${health_screening.Member_count},0)',
        label: Confirmed HT, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: confirmed_ht, _type_hint: number},
      {category: table_calculation, expression: 'if(${health_screening.Drugs_count}>0,${health_screening.Drugs_count},0)',
        label: Drugs issued among Confirmed HT in last 4 weeks, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: drugs_issued_among_confirmed_ht_in_last_4_weeks,
        _type_hint: number}]
    listen:
    - Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    - Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    - Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    - Blocks: health_screening.block_name
      Districts: family_member_master.district_name
      Huds: family_member_master.hud_name
    row: 31
    col: 0
    width: 24
    height: 8
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
  filters:
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.last_update_date
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
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
    model: tnphr_district_level
    explore: family_member_master
    listens_to_filters: []
    field: family_member_master.block_name
