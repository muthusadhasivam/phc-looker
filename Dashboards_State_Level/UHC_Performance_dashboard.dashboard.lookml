- dashboard: uhc_performance_dashboard_v1_0_4
  title: UHC Performance Dashboard v1.0.4
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Lab Test Per day
    name: Lab Test Per day
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${health_screening.Lab_test_count}/30", value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 28
    col: 8
    width: 8
    height: 3
  - title: Per day Drug delivery
    name: Per day Drug delivery
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.drug_Delivered_count]
    filters:
      health_screening__drugs.health_screening__drugs_drug_id: "-NULL,-EMPTY"
    sorts: [health_screening.drug_Delivered_count desc]
    limit: 500
    dynamic_fields: [{table_calculation: per_day_drug_delivery, label: Per day Drug
          delivery, expression: "${health_screening.drug_Delivered_count}/30", value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    hidden_fields: [health_screening.drug_Delivered_count]
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 28
    col: 0
    width: 8
    height: 3
  - title: Outcome
    name: Outcome
    model: tnphr_state_level
    explore: family_master
    type: looker_grid
    fields: [health_screening.outcome_referral_type, health_screening.Total_population,
      family_member_master.Female_Population, family_member_master.Male_Population,
      health_screening.referral_count]
    filters:
      health_screening.outcome_referral_type: -"\"null\"",-EMPTY
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: "-EMPTY"
    sorts: [health_screening.Total_population desc]
    limit: 500
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      health_screening.outcome_referral_type: left
    column_order: ["$$$_row_numbers_$$$", health_screening.outcome_referral_type,
      Care in pregnancy_health_screening.Total_population, Care in pregnancy_health_screening.Male_Population,
      Care in pregnancy_health_screening.Female_Population, Childhood and adolescent
        health_health_screening.Total_population, Childhood and adolescent health_health_screening.Male_Population,
      Childhood and adolescent health_health_screening.Female_Population, Communicable
        diseases_health_screening.Total_population, Communicable diseases_health_screening.Male_Population,
      Communicable diseases_health_screening.Female_Population, General OP Care_health_screening.Total_population,
      General OP Care_health_screening.Male_Population, General OP Care_health_screening.Female_Population,
      Neonatal and infant health_health_screening.Total_population, Neonatal and infant
        health_health_screening.Male_Population, Neonatal and infant health_health_screening.Female_Population,
      Non-Communicable diseases_health_screening.Total_population, Non-Communicable
        diseases_health_screening.Male_Population, Non-Communicable diseases_health_screening.Female_Population,
      Trauma & Emergency Care _health_screening.Total_population, Trauma & Emergency
        Care _health_screening.Male_Population, Trauma & Emergency Care _health_screening.Female_Population]
    show_totals: true
    show_row_totals: true
    series_labels:
      health_screening.outcome_referral_type: Outcome Type
      health_screening.Total_population: Total Population
      health_screening.Male_Population: Male
      health_screening.Female_Population: Femal
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: Service
        type
      health_screening.referral_count: Referral Count
    series_column_widths:
      health_screening.Total_population: 208
      health_screening.Male_Population: 78
      health_screening.Female_Population: 79
      health_screening.referral_count: 304
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name: 246
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.outcome_referral_type:
        align: center
      health_screening.Total_population:
        align: center
      health_screening.Male_Population:
        align: center
      health_screening.Female_Population:
        align: center
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_service_name:
        align: center
      health_screening.referral_count:
        align: center
      family_member_master.Female_Population:
        align: center
      family_member_master.Male_Population:
        align: center
    header_font_color: "#fff9f9"
    header_background_color: "#1A73E8"
    hidden_fields:
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
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 23
    col: 0
    width: 24
    height: 5
  - title: OP Per facility Per day
    name: OP Per facility Per day
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.member_facility_name]
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_op, label: Total OP, expression: 'sum(${health_screening.OP_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_facility, label: Total Facility,
        expression: 'count(${health_screening.member_facility_name})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {table_calculation: op_per_facility_per_day, label: OP per facility Per day,
        expression: "${total_op}/${total_facility}", value_format: !!null '', value_format_name: decimal_0,
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
    hidden_fields: [health_screening.member_facility_name, total_facility, health_screening.OP_count,
      total_op]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 28
    col: 16
    width: 8
    height: 3
  - name: Per day Drug delivery per facility
    title: Per day Drug delivery per facility
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
      filters:
        health_screening.last_update_date: 30 days
        health_drugs_master.drug_id: "-NULL,-EMPTY"
      limit: 5000
      dynamic_fields: [{table_calculation: per_day_drug_delivery_per_facility, label: 'Per
            day Drug delivery per facility ', expression: "${health_screening.drug_Delivered_count}/${health_screening.facility_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    custom_color: "#1A73E8"
    show_single_value_title: true
    value_format: "#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c2dae8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
    column_limit: 50
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 0
    width: 6
    height: 4
  - name: "<H3>All Facility</H3>"
    type: text
    title_text: "<H3>All Facility</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 3
    col: 19
    width: 4
    height: 4
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count, health_screening.facility_count]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
      health_screening.mtm_condition: ''
      health_screening.user_facility_type_name: ''
      health_screening.user_category_name: ''
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: lab_test_per_day, label: Lab Test Per day,
        expression: "${health_screening.Lab_test_count}/${health_screening.facility_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c2dae8",
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
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count, health_screening.facility_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 6
    width: 6
    height: 4
  - title: Per day OP per facility
    name: Per day OP per facility
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.facility_count]
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: op_per_facility_per_day, label: OP per facility
          Per day, expression: "${health_screening.OP_count}/${health_screening.facility_count}",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c2dae8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [health_screening.OP_count, health_screening.facility_count]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 3
    col: 12
    width: 6
    height: 4
  - name: Per day Drug delivery per facility (2)
    title: Per day Drug delivery per facility
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
      filters:
        health_screening.last_update_date: 30 days
        health_screening.user_category_name: Urban PHC
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL,-EMPTY"
      sorts: [health_screening.drug_Delivered_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: per_day_drug_delivery_per_facility, label: 'Per
            day Drug delivery per facility ', expression: "${health_screening.drug_Delivered_count}/${health_screening.facility_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e2d0e8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
    column_limit: 50
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 0
    width: 6
    height: 4
  - name: "<H3>Urban PHC</H3>"
    type: text
    title_text: "<H3>Urban PHC</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 7
    col: 19
    width: 4
    height: 4
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (2)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count, health_screening.member_facility_name]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
      health_screening.mtm_condition: ''
      health_screening.member_facility_name: ''
      health_screening.user_category_name: Urban PHC
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${total_lab_count}/${total_facility}",
        label: Lab Test Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: lab_test_per_day, _type_hint: number},
      {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
        label: Total Facility, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Lab_test_count})',
        label: total lab count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_lab_count, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e2d0e8",
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
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 6
    width: 6
    height: 4
  - title: Per day OP per facility
    name: Per day OP per facility (2)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.member_facility_name]
    filters:
      health_screening.user_category_name: Urban PHC
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_op, label: Total OP, expression: 'sum(${health_screening.OP_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_facility, label: Total Facility,
        expression: 'count(${health_screening.member_facility_name})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {category: table_calculation, expression: "${total_op}/${total_facility}", label: OP
          per facility Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: op_per_facility_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e2d0e8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [health_screening.member_facility_name, total_facility, health_screening.OP_count,
      total_op]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 7
    col: 12
    width: 6
    height: 4
  - name: Per day Drug delivery per facility (3)
    title: Per day Drug delivery per facility
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
      filters:
        health_screening.last_update_date: 30 days
        health_screening.user_category_name: Rural HSC
        health_screening__drugs.health_screening__drugs_drug_id: "-EMPTY,-NULL"
      sorts: [health_screening.drug_Delivered_count desc]
      limit: 5000
      dynamic_fields: [{table_calculation: per_day_drug_delivery_per_facility, label: 'Per
            day Drug delivery per facility ', expression: "${health_screening.drug_Delivered_count}/${health_screening.facility_count}",
          value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#dee8de",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.drug_Delivered_count, health_screening.facility_count]
    column_limit: 50
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 15
    col: 0
    width: 6
    height: 4
  - name: "<H3>Urban HSC</H3>"
    type: text
    title_text: "<H3>Urban HSC</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 11
    col: 19
    width: 4
    height: 4
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (3)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count, health_screening.member_facility_name]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
      health_screening.mtm_condition: ''
      health_screening.member_facility_name: ''
      health_screening.user_category_name: Rural HSC
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${total_lab_count}/${total_facility}",
        label: Lab Test Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: lab_test_per_day, _type_hint: number},
      {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
        label: Total Facility, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Lab_test_count})',
        label: total lab count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_lab_count, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#dee8de",
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
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 15
    col: 6
    width: 6
    height: 4
  - title: Per day OP per facility
    name: Per day OP per facility (3)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.member_facility_name]
    filters:
      health_screening.user_category_name: Rural HSC
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_op, label: Total OP, expression: 'sum(${health_screening.OP_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_facility, label: Total Facility,
        expression: 'count(${health_screening.member_facility_name})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {category: table_calculation, expression: "${total_op}/${total_facility}", label: OP
          per facility Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: op_per_facility_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#dee8de",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [health_screening.member_facility_name, total_facility, health_screening.OP_count,
      total_op]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 15
    col: 12
    width: 6
    height: 4
  - name: Per day Drug delivery per facility (4)
    title: Per day Drug delivery per facility
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.drug_Delivered_count, health_screening.member_facility_name]
      filters:
        health_screening.last_update_date: 30 days
        health_screening.user_category_name: Urban HSC
        health_screening__drugs.health_screening__drugs_drug_id: "-NULL,-EMPTY"
      sorts: [health_screening.drug_Delivered_count desc]
      limit: 5000
      dynamic_fields: [{category: table_calculation, expression: "${total_drugs_count}/${total_facility}",
          label: 'Per day Drug delivery per facility ', value_format: !!null '', value_format_name: decimal_0,
          _kind_hint: measure, table_calculation: per_day_drug_delivery_per_facility,
          _type_hint: number}, {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
          label: Total Facility, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
        {category: table_calculation, expression: 'sum(${health_screening.drug_Delivered_count})',
          label: Total drugs count, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: total_drugs_count, _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bab8d6",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.drug_Delivered_count, total_facility, total_drugs_count]
    column_limit: 50
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 11
    col: 0
    width: 6
    height: 4
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (4)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count, health_screening.member_facility_name]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
      health_screening.mtm_condition: ''
      health_screening.member_facility_name: ''
      health_screening.user_category_name: Urban HSC
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${total_lab_count}/${total_facility}",
        label: Lab Test Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: lab_test_per_day, _type_hint: number},
      {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
        label: Total Facility, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Lab_test_count})',
        label: total lab count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_lab_count, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bab8d6",
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
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 11
    col: 6
    width: 6
    height: 4
  - title: Per day OP per facility
    name: Per day OP per facility (4)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.member_facility_name]
    filters:
      health_screening.user_category_name: Urban HSC
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_op, label: Total OP, expression: 'sum(${health_screening.OP_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_facility, label: Total Facility,
        expression: 'count(${health_screening.member_facility_name})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {category: table_calculation, expression: "${total_op}/${total_facility}", label: OP
          per facility Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: op_per_facility_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bab8d6",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [health_screening.member_facility_name, total_facility, health_screening.OP_count,
      total_op]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 11
    col: 12
    width: 6
    height: 4
  - name: "<H3>Rural HSC</H3>"
    type: text
    title_text: "<H3>Rural HSC</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 15
    col: 19
    width: 4
    height: 4
  - name: Per day Drug delivery per facility (5)
    title: Per day Drug delivery per facility
    merged_queries:
    - model: tnphr_state_level
      explore: family_master
      type: table
      fields: [health_screening.drug_Delivered_count, health_screening.member_facility_name]
      filters:
        health_screening.last_update_date: 30 days
        health_screening.user_category_name: Rural PHC
        health_screening__drugs.health_screening__drugs_drug_id: "-EMPTY,-NULL"
      sorts: [health_screening.drug_Delivered_count desc]
      limit: 5000
      dynamic_fields: [{category: table_calculation, expression: "${total_drugs_count}/${total_facility}",
          label: 'Per day Drug delivery per facility ', value_format: !!null '', value_format_name: decimal_0,
          _kind_hint: measure, table_calculation: per_day_drug_delivery_per_facility,
          _type_hint: number}, {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
          label: Total Facility, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
        {category: table_calculation, expression: 'sum(${health_screening.drug_Delivered_count})',
          label: Total drugs count, value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, table_calculation: total_drugs_count, _type_hint: number}]
      join_fields: []
    custom_color_enabled: true
    show_single_value_title: true
    value_format: "#,##0.00"
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e8cbc8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: single_value
    series_types: {}
    hidden_fields: [health_screening.drug_Delivered_count, total_facility, total_drugs_count]
    column_limit: 50
    listen:
    - Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 19
    col: 0
    width: 6
    height: 4
  - name: "<H3>Rural PHC</H3>"
    type: text
    title_text: "<H3>Rural PHC</H3>"
    body_text: <body bgcolor="#a4bced"> </body>
    row: 19
    col: 19
    width: 4
    height: 4
  - title: District Wise Count
    name: District Wise Count
    model: tnphr_state_level
    explore: family_master
    type: table
    fields: [health_screening.district_name, health_screening.Total_population, health_screening.MTM_Diabetes,
      health_screening.MTM_dialysis_capd, health_screening.MTM_hypertension, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy, health_screening.MTM_other, health_screening.Drugs_count,
      health_screening.Lab_test_count, health_screening.OP_count, health_screening.facility_count]
    filters:
      health_screening.mtm_condition: ''
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
    sorts: [health_screening.Total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening.MTM_Diabetes}+
          ${health_screening.MTM_other}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_physiotherapy})',
        label: Total Benificiary, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_benificiary, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Total_population})',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: "${total_population}/${total_benificiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}, {
        category: table_calculation, expression: "${health_screening.Lab_test_count}/${health_screening.facility_count}",
        label: 'Per day Lab Test per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_lab_test_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.OP_count}/${health_screening.facility_count}",
        label: Per day Op per facility, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_op_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.Drugs_count}/${health_screening.facility_count}",
        label: 'Per day drug delivery per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_drug_delivery_per_facility,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", health_screening.district_name, health_screening.Total_population,
      benefited, health_screening.Lab_test_count, health_screening.OP_count, health_screening.Drugs_count,
      total_benificiary, total_population, per_day_lab_test_per_facility, per_day_op_per_facility,
      per_day_drug_delivery_per_facility]
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels: {}
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      health_screening.Drugs_count:
        align: center
      health_screening.Lab_test_count:
        align: center
      health_screening.OP_count:
        align: center
      benefited:
        align: center
      per_day_lab_test_per_facility:
        align: center
      per_day_op_per_facility:
        align: center
      per_day_drug_delivery_per_facility:
        align: center
    header_font_color: "#fff9f9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
      health_screening.MTM_hypertension, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_other, total_benificiary, total_population, health_screening.facility_count]
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 31
    col: 0
    width: 24
    height: 6
  - title: Per day OP per facility
    name: Per day OP per facility (5)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.OP_count, health_screening.member_facility_name]
    filters:
      health_screening.user_category_name: Rural PHC
    sorts: [health_screening.OP_count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: total_op, label: Total OP, expression: 'sum(${health_screening.OP_count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_facility, label: Total Facility,
        expression: 'count(${health_screening.member_facility_name})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, _type_hint: number},
      {category: table_calculation, expression: "${total_op}/${total_facility}", label: OP
          per facility Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: op_per_facility_per_day, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e8cbc8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: [health_screening.member_facility_name, total_facility, health_screening.OP_count,
      total_op]
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
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 19
    col: 12
    width: 6
    height: 4
  - title: Per day Lab Test per facility
    name: Per day Lab Test per facility (5)
    model: tnphr_state_level
    explore: family_master
    type: single_value
    fields: [health_screening.Lab_test_count, health_screening.member_facility_name]
    filters:
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.district_name: ''
      health_screening.hud_name: ''
      health_screening.block_name: ''
      health_screening.mtm_condition: ''
      health_screening.member_facility_name: ''
      health_screening.user_category_name: Rural PHC
    sorts: [health_screening.Lab_test_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${total_lab_count}/${total_facility}",
        label: Lab Test Per day, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: lab_test_per_day, _type_hint: number},
      {category: table_calculation, expression: 'count(${health_screening.member_facility_name})',
        label: Total Facility, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: total_facility, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Lab_test_count})',
        label: total lab count, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_lab_count, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#e8cbc8",
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
    series_cell_visualizations:
      health_screening.Lab_test_count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    header_background_color: "#7CB342"
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: [health_screening.Lab_test_count]
    series_types: {}
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 19
    col: 6
    width: 6
    height: 4
  - title: HUD Wise Count
    name: HUD Wise Count
    model: tnphr_state_level
    explore: family_master
    type: table
    fields: [health_screening.Total_population, health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
      health_screening.MTM_hypertension, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_other, health_screening.Drugs_count, health_screening.Lab_test_count,
      health_screening.OP_count, health_screening.facility_count, health_screening.hud_name]
    filters:
      health_screening.mtm_condition: ''
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
      health_screening.block_name: ''
    sorts: [health_screening.Total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening.MTM_Diabetes}+
          ${health_screening.MTM_other}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_physiotherapy})',
        label: Total Benificiary, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_benificiary, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Total_population})',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: "${total_population}/${total_benificiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}, {
        category: table_calculation, expression: "${health_screening.Lab_test_count}/${health_screening.facility_count}",
        label: 'Per day Lab Test per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_lab_test_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.OP_count}/${health_screening.facility_count}",
        label: Per day Op per facility, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_op_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.Drugs_count}/${health_screening.facility_count}",
        label: 'Per day drug delivery per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_drug_delivery_per_facility,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [health_screening.hud_name, health_screening.Total_population, benefited,
      health_screening.Lab_test_count, health_screening.OP_count, health_screening.Drugs_count,
      per_day_lab_test_per_facility, per_day_op_per_facility, per_day_drug_delivery_per_facility]
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels: {}
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      health_screening.Drugs_count:
        align: center
      health_screening.Lab_test_count:
        align: center
      benefited:
        align: center
      health_screening.OP_count:
        align: center
      per_day_lab_test_per_facility:
        align: center
      per_day_op_per_facility:
        align: center
      per_day_drug_delivery_per_facility:
        align: center
    header_font_color: "#fff9f9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
      health_screening.MTM_hypertension, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_other, total_benificiary, total_population, health_screening.facility_count]
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 37
    col: 0
    width: 24
    height: 7
  - title: Block Wise Count
    name: Block Wise Count
    model: tnphr_state_level
    explore: family_master
    type: table
    fields: [health_screening.Total_population, health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd,
      health_screening.MTM_hypertension, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_other, health_screening.Drugs_count, health_screening.Lab_test_count,
      health_screening.OP_count, health_screening.facility_count, health_screening.block_name]
    filters:
      health_screening.mtm_condition: ''
      health_screening__lab_test.health_screening__lab_test_result_date: 30 days
    sorts: [health_screening.Total_population desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${health_screening.MTM_Diabetes}+
          ${health_screening.MTM_other}+${health_screening.MTM_dialysis_capd}+${health_screening.MTM_hypertension}+${health_screening.MTM_physiotherapy})',
        label: Total Benificiary, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_benificiary, _type_hint: number},
      {category: table_calculation, expression: 'sum(${health_screening.Total_population})',
        label: Total Population, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: total_population, _type_hint: number},
      {category: table_calculation, expression: "${total_population}/${total_benificiary}",
        label: "% Benefited", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: benefited, _type_hint: number}, {
        category: table_calculation, expression: "${health_screening.Lab_test_count}/${health_screening.facility_count}",
        label: 'Per day Lab Test per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_lab_test_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.OP_count}/${health_screening.facility_count}",
        label: Per day Op per facility, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_op_per_facility, _type_hint: number},
      {category: table_calculation, expression: "${health_screening.Drugs_count}/${health_screening.facility_count}",
        label: 'Per day drug delivery per facility ', value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: per_day_drug_delivery_per_facility,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", health_screening.block_name, health_screening.Total_population,
      benefited, health_screening.Lab_test_count, health_screening.OP_count, health_screening.Drugs_count,
      per_day_lab_test_per_facility, per_day_op_per_facility, per_day_drug_delivery_per_facility]
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels: {}
    series_cell_visualizations:
      health_screening.Total_population:
        is_active: false
    series_text_format:
      health_screening.Total_population:
        align: center
      health_screening.Drugs_count:
        align: center
      health_screening.Lab_test_count:
        align: center
      health_screening.OP_count:
        align: center
      benefited:
        align: center
      per_day_lab_test_per_facility:
        align: center
      per_day_op_per_facility:
        align: center
      per_day_drug_delivery_per_facility:
        align: center
    header_font_color: "#fff9f9"
    header_background_color: "#1A73E8"
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
      health_screening.MTM_hypertension, health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
      health_screening.MTM_other, total_benificiary, total_population, health_screening.facility_count]
    hidden_points_if_no: []
    listen:
      Directorate Name: facility_directorate_master.directorate_name
      Toggle Button: facility_registry.toggle_button
      Districts: family_master.district_name
      HUDs: family_master.hud_name
      Blocks: family_master.block_name
      Date: family_master.last_update_date
    row: 44
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
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: family_master.last_update_date
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
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: tnphr_state_level
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
  - name: Toggle Button
    title: Toggle Button
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options:
      - 'Yes'
      - 'No'
    model: tnphr_state_level
    explore: family_master
    listens_to_filters: []
    field: facility_registry.toggle_button
