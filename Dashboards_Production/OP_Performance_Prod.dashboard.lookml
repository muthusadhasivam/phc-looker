- dashboard: op_performance_prod
  title: OP Performance v1.0.1 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kSymaGnoTEFV8Luiv9ANk2
  elements:
  - title: "  Date wise "
    name: "  Date wise "
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [user_master.district_name, user_master.hud_name, user_master.block_name,
      health_screening.OP_count, health_screening.Adult_OP_count_male, health_screening.Adult_OP_count_female,
      health_screening.Children_OP_count_female, health_screening.Children_OP_count_male,
      health_screening.Adult_OP_count_transgender, health_screening.Children_OP_count_transgender,
      health_screening.user_department_name, user_master.directorate_name, health_screening.user_facility_name,
      op_dashboard.parent_facility_name, user_master.facility_type_name, health_screening.last_update_date,
      op_dashboard.user_is_hwc, health_screening.role_toggle]
    filters:
      family_member_master.district_name: ''
      facility_registry.facility_type_name: ''
      family_member_master.hud_name: ''
      family_member_master.block_name: ''
      facility_directorate_master.directorate_name: ''
      facility_registry.facility_name: ''
      address_block_master.block_type: ''
      health_screening.Disease_id: ''
      facility_registry.category_id: ''
      health_screening.Services: ''
    sorts: [health_screening.last_update_date desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${health_screening.Adult_OP_count_male}+${health_screening.Adult_OP_count_female}+${health_screening.Adult_OP_count_transgender}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: children_total, label: 'Children [Total]', expression: "${health_screening.Children_OP_count_male}+${health_screening.Children_OP_count_female}+${health_screening.Children_OP_count_transgender}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: is_hwc, label: Is Hwc, expression: 'if(is_null(${op_dashboard.user_is_hwc}),"-",${op_dashboard.user_is_hwc})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: parent_facility_name, label: Parent
          facility name, expression: 'if(is_null(${op_dashboard.parent_facility_name}),"-",${op_dashboard.parent_facility_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: block_name, label: Block name, expression: 'if(is_null(${user_master.block_name}),"-",${user_master.block_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: hud_name, label: HUD name, expression: 'if(is_null(${user_master.hud_name}),"-",${user_master.hud_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: district_name, label: District name,
        expression: 'if(is_null(${user_master.district_name}),"-",${user_master.district_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${health_screening.Adult_OP_count_male}+${health_screening.Children_OP_count_male}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_female, label: Total OP
          Female, expression: "${health_screening.Adult_OP_count_female}+${health_screening.Children_OP_count_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${health_screening.Adult_OP_count_transgender}+${health_screening.Children_OP_count_transgender}",
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
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", health_screening.last_update_date, district_name,
      hud_name, user_master.directorate_name, block_name, parent_facility_name, health_screening.user_facility_name,
      user_master.facility_type_name, health_screening.user_department_name, is_hwc,
      health_screening.role_toggle, health_screening.OP_count, health_screening.Adult_OP_count_male,
      health_screening.Adult_OP_count_female, health_screening.Adult_OP_count_transgender,
      adult_total, health_screening.Children_OP_count_male, health_screening.Children_OP_count_female,
      health_screening.Children_OP_count_transgender, children_total, total_op_male,
      total_op_female, total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.OP_count: Total OP
      health_screening.Adult_OP_count_male: Adult[Male]
      health_screening.Adult_OP_count_female: Adult [Female]
      health_screening.Children_OP_count_female: Children [Female]
      health_screening.Children_OP_count_male: Children [Male]
      health_screening.Adult_OP_count_transgender: Adult [Transgender]
      health_screening.Children_OP_count_transgender: Children [Transgender]
      facility_registry.facility_type_name: Facility Type
      health_screening.role_toggle: Facility/Residence
    series_column_widths:
      health_screening.OP_count: 100
      health_screening.Adult_OP_count_male: 100
      health_screening.Adult_OP_count_female: 100
      health_screening.Children_OP_count_female: 100
      health_screening.Children_OP_count_male: 100
      adult_total: 100
      children_total: 100
    series_cell_visualizations:
      health_screening.Adult_OP_count_female:
        is_active: false
    series_text_format:
      health_screening.Children_OP_count_female:
        align: center
      adult_total:
        align: center
      children_total:
        align: center
      health_screening.OP_count:
        align: center
      department:
        align: center
      health_screening.Adult_OP_count_male:
        align: center
      health_screening.Adult_OP_count_female:
        align: center
      health_screening.Children_OP_count_male:
        align: center
      health_screening.Adult_OP_count_transgender:
        align: center
      health_screening.Children_OP_count_transgender:
        align: center
      user_master.directorate_name:
        align: center
      is_hwc:
        align: center
      health_screening.user_department_name:
        align: center
      parent_facility_name:
        align: center
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c2dae8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [user_master.department_name, op_dashboard.parent_facility_name,
      user_master.block_name, user_master.hud_name, user_master.district_name, op_dashboard.user_is_hwc]
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
      District Name: user_master.district_name
      User Facility Type Name: health_screening.user_facility_type_name
      Hud Name: user_master.hud_name
      Block Name: user_master.block_name
      Directorate Name: user_master.directorate_name
      Category Name: user_master.category_name
      User Facility Name: health_screening.user_facility_name
      Role Name: health_screening.role_name
      Diseases: health_diagnosis_master.diagnosis_name
      Individuals_Visits: screening_counts.Individuals_Visits
      User Department Name: health_screening.user_department_name
      User type: user_master.phr_role
      Service Name: health_diagnosis_master.service_name
      Last Update Date: health_screening.last_update_date
      Is Hwc: op_dashboard.user_is_hwc
      User block type: user_master.user_facility_block_type
    row: 6
    col: 0
    width: 24
    height: 6
  - title: " Facility wise "
    name: " Facility wise "
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [user_master.district_name, user_master.hud_name, user_master.block_name,
      health_screening.OP_count, health_screening.Adult_OP_count_male, health_screening.Adult_OP_count_female,
      health_screening.Children_OP_count_female, health_screening.Children_OP_count_male,
      health_screening.Adult_OP_count_transgender, health_screening.Children_OP_count_transgender,
      health_screening.user_department_name, user_master.directorate_name, health_screening.user_facility_name,
      op_dashboard.parent_facility_name, user_master.facility_type_name, op_dashboard.user_is_hwc,
      health_screening.role_toggle]
    filters:
      family_member_master.district_name: ''
      facility_registry.facility_type_name: ''
      family_member_master.hud_name: ''
      family_member_master.block_name: ''
      facility_directorate_master.directorate_name: ''
      facility_registry.facility_name: ''
      address_block_master.block_type: ''
      health_screening.Disease_id: ''
      facility_registry.category_id: ''
      health_screening.Services: ''
    sorts: [health_screening.OP_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${health_screening.Adult_OP_count_male}+${health_screening.Adult_OP_count_female}+${health_screening.Adult_OP_count_transgender}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: children_total, label: 'Children [Total]', expression: "${health_screening.Children_OP_count_male}+${health_screening.Children_OP_count_female}+${health_screening.Children_OP_count_transgender}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: is_hwc, label: Is Hwc, expression: 'if(is_null(${op_dashboard.user_is_hwc}),"-",${op_dashboard.user_is_hwc})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: parent_facility_name, label: Parent
          facility name, expression: 'if(is_null(${op_dashboard.parent_facility_name}),"-",${op_dashboard.parent_facility_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: block_name, label: Block name, expression: 'if(is_null(${user_master.block_name}),"-",${user_master.block_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${health_screening.Adult_OP_count_male}+${health_screening.Children_OP_count_male}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_female, label: Total OP
          Female, expression: "${health_screening.Adult_OP_count_female}+${health_screening.Children_OP_count_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${health_screening.Adult_OP_count_transgender}+${health_screening.Children_OP_count_transgender}",
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
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", user_master.district_name, user_master.hud_name,
      user_master.directorate_name, block_name, parent_facility_name, health_screening.user_facility_name,
      user_master.facility_type_name, health_screening.user_department_name, is_hwc,
      health_screening.role_toggle, health_screening.OP_count, health_screening.Adult_OP_count_male,
      health_screening.Adult_OP_count_female, health_screening.Adult_OP_count_transgender,
      adult_total, health_screening.Children_OP_count_male, health_screening.Children_OP_count_female,
      health_screening.Children_OP_count_transgender, children_total, total_op_male,
      total_op_female, total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.OP_count: Total OP
      health_screening.Adult_OP_count_male: Adult[Male]
      health_screening.Adult_OP_count_female: Adult [Female]
      health_screening.Children_OP_count_female: Children [Female]
      health_screening.Children_OP_count_male: Children [Male]
      health_screening.Adult_OP_count_transgender: Adult [Transgender]
      health_screening.Children_OP_count_transgender: Children [Transgender]
      facility_registry.facility_type_name: Facility Type
      health_screening.role_toggle: Facility/Residence
    series_column_widths:
      health_screening.OP_count: 100
      health_screening.Adult_OP_count_male: 100
      health_screening.Adult_OP_count_female: 100
      health_screening.Children_OP_count_female: 100
      health_screening.Children_OP_count_male: 100
      adult_total: 100
      children_total: 100
    series_cell_visualizations:
      health_screening.Adult_OP_count_female:
        is_active: false
    series_text_format:
      health_screening.Children_OP_count_female:
        align: center
      adult_total:
        align: center
      children_total:
        align: center
      health_screening.OP_count:
        align: center
      department:
        align: center
      health_screening.Adult_OP_count_male:
        align: center
      health_screening.Adult_OP_count_female:
        align: center
      health_screening.Children_OP_count_male:
        align: center
      is_hwc:
        align: center
      user_master.facility_type_name:
        align: center
      health_screening.user_department_name:
        align: center
      health_screening.Adult_OP_count_transgender:
        align: center
      health_screening.Children_OP_count_transgender:
        align: center
      user_master.directorate_name:
        align: center
      parent_facility_name:
        align: center
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c2dae8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [user_master.department_name, op_dashboard.parent_facility_name,
      user_master.block_name, op_dashboard.user_is_hwc]
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
      District Name: user_master.district_name
      User Facility Type Name: health_screening.user_facility_type_name
      Hud Name: user_master.hud_name
      Block Name: user_master.block_name
      Directorate Name: user_master.directorate_name
      Category Name: user_master.category_name
      User Facility Name: health_screening.user_facility_name
      Role Name: health_screening.role_name
      Diseases: health_diagnosis_master.diagnosis_name
      Individuals_Visits: screening_counts.Individuals_Visits
      User Department Name: health_screening.user_department_name
      User type: user_master.phr_role
      Service Name: health_diagnosis_master.service_name
      Last Update Date: health_screening.last_update_date
      Is Hwc: op_dashboard.user_is_hwc
      User block type: user_master.user_facility_block_type
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Diagnosis wise Morbidity report
    name: Diagnosis wise Morbidity report
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_diagnosis_master.diagnosis_name, health_screening.OP_count, health_screening.Adult_OP_count_male,
      health_screening.Adult_OP_count_female, health_screening.Adult_OP_count_transgender,
      health_screening.Children_OP_count_male, health_screening.Children_OP_count_female,
      health_screening.Children_OP_count_transgender]
    filters: {}
    sorts: [health_diagnosis_master.diagnosis_name]
    limit: 5000
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${health_screening.Adult_OP_count_male}+${health_screening.Adult_OP_count_female}+${health_screening.Adult_OP_count_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: children_total, label: 'Children
          [Total]', expression: "${health_screening.Children_OP_count_female}+${health_screening.Children_OP_count_male}+${health_screening.Children_OP_count_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${health_screening.Adult_OP_count_male}+${health_screening.Children_OP_count_male}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_female, label: Total OP
          Female, expression: "${health_screening.Adult_OP_count_female}+${health_screening.Children_OP_count_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${health_screening.Adult_OP_count_transgender}+${health_screening.Children_OP_count_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: diagnosis_name, label: Diagnosis
          Name, expression: 'if(is_null(${health_diagnosis_master.diagnosis_name}),"-",${health_diagnosis_master.diagnosis_name})',
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
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", diagnosis_name, health_diagnosis_master.diagnosis_name,
      health_screening.OP_count, health_screening.Adult_OP_count_male, health_screening.Adult_OP_count_female,
      health_screening.Adult_OP_count_transgender, adult_total, health_screening.Children_OP_count_male,
      health_screening.Children_OP_count_female, health_screening.Children_OP_count_transgender,
      children_total, total_op_male, total_op_female, total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.Adult_OP_count_female: Adult [Female]
      health_screening.Adult_OP_count_male: Adult [Male]
      health_screening.Adult_OP_count_transgender: Adult [Transgender]
      health_screening.Children_OP_count_male: Children [Male]
      health_screening.Children_OP_count_female: Children [Female]
      health_screening.Children_OP_count_transgender: Children [Transgender]
    series_cell_visualizations:
      health_screening.OP_count:
        is_active: false
    series_text_format:
      adult_total:
        align: center
      children_total:
        align: center
      health_screening.Children_OP_count_transgender:
        align: center
      health_screening.Adult_OP_count_transgender:
        align: center
      health_screening.Adult_OP_count_male:
        align: center
      health_screening.Adult_OP_count_female:
        align: center
      health_screening.Children_OP_count_male:
        align: center
      health_screening.Children_OP_count_female:
        align: center
      total_op_male:
        align: center
      total_op_female:
        align: center
      total_op_transgender:
        align: center
    header_font_color: "#fffefa"
    header_background_color: "#1A73E8"
    conditional_formatting: []
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
    hidden_fields: [health_diagnosis_master.diagnosis_name]
    listen:
      District Name: user_master.district_name
      User Facility Type Name: health_screening.user_facility_type_name
      Hud Name: user_master.hud_name
      Block Name: user_master.block_name
      Directorate Name: user_master.directorate_name
      Category Name: user_master.category_name
      User Facility Name: health_screening.user_facility_name
      Role Name: health_screening.role_name
      Diseases: health_diagnosis_master.diagnosis_name
      Individuals_Visits: screening_counts.Individuals_Visits
      User Department Name: health_screening.user_department_name
      User type: user_master.phr_role
      Service Name: health_diagnosis_master.service_name
      Last Update Date: health_screening.last_update_date
      Is Hwc: op_dashboard.user_is_hwc
      User block type: user_master.user_facility_block_type
    row: 12
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
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Block Name, Hud Name]
    field: user_master.district_name
  - name: User Facility Type Name
    title: User Facility Type Name
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
    field: health_screening.user_facility_type_name
  - name: Hud Name
    title: Hud Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr
    explore: family_member_master
    listens_to_filters: [Block Name, District Name]
    field: user_master.hud_name
  - name: Block Name
    title: Block Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr
    explore: family_member_master
    listens_to_filters: [District Name, Hud Name]
    field: user_master.block_name
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tnphr
    explore: user_master
    listens_to_filters: []
    field: user_master.directorate_name
  - name: Category Name
    title: Category Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr
    explore: user_master
    listens_to_filters: []
    field: user_master.category_name
  - name: User Facility Name
    title: User Facility Name
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
    field: health_screening.user_facility_name
  - name: Role Name
    title: Role Name
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
    field: health_screening.role_name
  - name: Diseases
    title: Diseases
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
    field: health_diagnosis_master.diagnosis_name
  - name: Last Update Date
    title: Last Update Date
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
  - name: Individuals_Visits
    title: Individuals_Visits
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
    field: screening_counts.Individuals_Visits
  - name: User Department Name
    title: User Department Name
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
    field: health_screening.user_department_name
  - name: User type
    title: User type
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
    field: user_master.phr_role
  - name: Is Hwc
    title: Is Hwc
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
    field: op_dashboard.user_is_hwc
  - name: Service Name
    title: Service Name
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
    field: health_diagnosis_master.service_name
  - name: User block type
    title: User block type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - Corporation
      - Municipality
      - Rural Block
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: user_master.user_facility_block_type
