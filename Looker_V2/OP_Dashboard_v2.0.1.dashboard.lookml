- dashboard: op_dashboard_v2_0_1
  title: OP Dashboard v2.0.1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LonWLoyDBjVnjNdytpFms8
  elements:
  - title: Facility wise
    name: Facility wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.user_district_name, screening.user_hud_name, screening.user_directorate,
      screening.user_block_name, screening.user_block_gid, screening.user_parent_facility_name,
      screening.user_facility_name, screening.user_facility_type, screening.user_department_name,
      screening.is_user_facility_hwc, screening.Facility_Residence, screening.Total_screenings,
      screening.Adult_OP_male, screening.Adult_OP_female, screening.Adult_OP_transgender,
      screening.Children_OP_male, screening.Children_OP_female, screening.Children_OP_transgender,
      screening.user_district_gid, screening.user_hud_gid]
    sorts: [screening.user_district_name]
    limit: 5000
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${screening.Adult_OP_male}+${screening.Adult_OP_female}+${screening.Adult_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: children_total, label: 'Children
          [Total]', expression: "${screening.Children_OP_male}+${screening.Children_OP_female}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${screening.Adult_OP_male}+${screening.Children_OP_male}", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_op_female, label: Total OP Female, expression: "${screening.Adult_OP_female}+${screening.Children_OP_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${screening.Adult_OP_transgender}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_institution_hwc, label: is_Institution_Hwc,
        expression: 'if(is_null(${screening.is_user_facility_hwc}),"-",${screening.is_user_facility_hwc})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_district, label: Institution
          District, expression: 'if(is_null(${screening.user_district_name}),"-",${screening.user_district_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_hud, label: Institution
          HUD, expression: 'if(is_null(${screening.user_hud_name}),"-",${screening.user_hud_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_block, label: Institution
          Block, expression: 'if(is_null(${screening.user_block_name}),"-",${screening.user_block_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_facility, label: Institution
          Facility, expression: 'if(is_null(${screening.user_facility_name}),"-",${screening.user_facility_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_parent_facility, label: Institution
          Parent facility, expression: 'if(is_null(${screening.user_parent_facility_name}),"-",${screening.user_parent_facility_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_department, label: Institution
          Department, expression: 'if(is_null(${screening.user_department_name}),"-",${screening.user_department_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_facility_type, label: Institution
          facility type, expression: 'if(is_null(${screening.user_facility_type}),"-",${screening.user_facility_type})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: is_facility_residence, label: is_Facility_Residence,
        expression: 'if(is_null(${screening.Facility_Residence}),"-",${screening.Facility_Residence})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_directorate, label: Institution
          Directorate, expression: 'if(is_null(${screening.user_directorate}),"-",${screening.user_directorate})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_block_gid, label: Institution
          Block Gid, expression: 'if(is_null(${screening.user_block_gid}),"-",to_string(${screening.user_block_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_district_gid, label: Institution
          District Gid, expression: 'if(is_null(${screening.user_district_gid}),"-",to_string(${screening.user_district_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_hud_gid, label: Institution
          Hud Gid, expression: 'if(is_null(${screening.user_hud_gid}),"-",to_string(${screening.user_hud_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", institution_district, institution_district_gid,
      institution_hud, institution_hud_gid, institution_directorate, institution_block,
      institution_block_gid, institution_parent_facility, institution_facility, institution_facility_type,
      institution_department, is_institution_hwc, is_facility_residence, screening.Total_screenings,
      screening.Adult_OP_male, screening.Adult_OP_female, screening.Adult_OP_transgender,
      adult_total, screening.Children_OP_male, screening.Children_OP_female, screening.Children_OP_transgender,
      children_total, total_op_male, total_op_female, total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Total_screenings: Total OP
      screening.Adult_OP_male: Adult OP Male
      screening.Adult_OP_female: Adult OP Female
      screening.Children_OP_male: Children OP Male
      screening.Children_OP_female: Children OP Female
      screening.Adult_OP_transgender: Adult OP Transgender
      screening.Children_OP_transgender: Children OP Transgender
    series_column_widths:
      is_institution_hwc: 200
      institution_district: 200
      institution_hud: 200
      institution_block: 200
      institution_facility: 300
      institution_parent_facility: 200
      institution_department: 200
      institution_facility_type: 200
      is_facility_residence: 200
      institution_directorate: 200
      screening.Total_screenings: 200
      screening.Adult_OP_male: 200
      screening.Adult_OP_female: 200
      screening.Adult_OP_transgender: 200
      screening.Children_OP_male: 200
      screening.Children_OP_female: 200
      screening.Children_OP_transgender: 200
      adult_total: 200
      children_total: 200
      total_op_male: 200
      total_op_female: 200
      total_op_transgender: 200
      institution_block_gid: 200
      institution_district_gid: 200
      institution_hud_gid: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.Adult_OP_male:
        align: center
      screening.Adult_OP_female:
        align: center
      screening.Adult_OP_transgender:
        align: center
      screening.Children_OP_male:
        align: center
      screening.Children_OP_female:
        align: center
      screening.Children_OP_transgender:
        align: center
      adult_total:
        align: center
      children_total:
        align: center
      total_op_male:
        align: center
      total_op_female:
        align: center
      total_op_transgender:
        align: center
      is_hwc:
        align: center
      district:
        align: center
      hud:
        align: center
      block:
        align: center
      user_department:
        align: center
      user_facility_type:
        align: center
      facility_residence:
        align: center
      user_directorate:
        align: center
      parent_facility_name:
        align: center
      user_facility:
        align: center
      is_institution_hwc:
        align: center
      institution_district:
        align: center
      institution_hud:
        align: center
      institution_block:
        align: center
      institution_facility:
        align: center
      institution_parent_facility:
        align: center
      institution_department:
        align: center
      institution_facility_type:
        align: center
      is_facility_residence:
        align: center
      institution_directorate:
        align: center
      institution_block_gid:
        align: center
      institution_district_gid:
        align: center
      institution_hud_gid:
        align: center
    header_font_color: "#f7fff5"
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
    hidden_fields: [screening.is_user_facility_hwc, screening.user_district_name,
      screening.user_hud_name, screening.user_block_name, screening.user_facility_name,
      screening.user_parent_facility_name, screening.user_department_name, screening.user_facility_type,
      screening.Facility_Residence, screening.user_block_gid, screening.user_directorate,
      screening.user_district_gid, screening.user_hud_gid]
    listen:
      Screened Date: screening.screened_date
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution Facility: screening.user_facility_name
      Institution Directorate: screening.user_directorate
      Institution Facility Type: screening.user_facility_type
      Institution Role: screening.role_name
      Institution Category: screening.user_category_name
      Institution Department: screening.user_department_name
      Institution Type: screening.user_phr_role
      Institution Block Type: screening.user_block_type
      Is Institution Hwc: screening.is_user_facility_hwc
      Diagnosis Name: screening.citizen_diagnosis_name
      Screening Status: screening.is_citizen_screened
      Service Name: screening.citizen_service_name
    row: 3
    col: 0
    width: 24
    height: 7
  - title: Diagnosis wise Morbidity report
    name: Diagnosis wise Morbidity report
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.Total_screenings, screening.Adult_OP_male, screening.Adult_OP_female,
      screening.Adult_OP_transgender, screening.Children_OP_male, screening.Children_OP_female,
      screening.Children_OP_transgender, screening.citizen_diagnosis_name]
    filters: {}
    sorts: [screening.Total_screenings desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${screening.Adult_OP_male}+${screening.Adult_OP_female}+${screening.Adult_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: children_total, label: 'Children
          [Total]', expression: "${screening.Children_OP_male}+${screening.Children_OP_female}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${screening.Adult_OP_male}+${screening.Children_OP_male}", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_op_female, label: Total OP Female, expression: "${screening.Adult_OP_female}+${screening.Children_OP_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${screening.Adult_OP_transgender}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: diagnosis, label: Diagnosis, expression: 'if(is_null(${screening.citizen_diagnosis_name}),"-",${screening.citizen_diagnosis_name})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", diagnosis, screening.Total_screenings, screening.Adult_OP_male,
      screening.Adult_OP_female, screening.Adult_OP_transgender, adult_total, screening.Children_OP_male,
      screening.Children_OP_female, screening.Children_OP_transgender, children_total,
      total_op_male, total_op_female, total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Total_screenings: Total OP
      screening.Adult_OP_male: Adult OP Male
      screening.Adult_OP_female: Adult OP Female
      screening.Adult_OP_transgender: Adult OP Transgender
      screening.Children_OP_male: Children OP Male
      screening.Children_OP_female: Children OP Female
      screening.Children_OP_transgender: Children OP Transgender
    series_column_widths:
      diagnosis: 200
      screening.Total_screenings: 200
      screening.Adult_OP_male: 200
      screening.Adult_OP_female: 200
      screening.Children_OP_male: 200
      screening.Adult_OP_transgender: 200
      screening.Children_OP_female: 200
      screening.Children_OP_transgender: 200
      adult_total: 200
      children_total: 200
      total_op_male: 200
      total_op_female: 200
      total_op_transgender: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.Adult_OP_male:
        align: center
      screening.Adult_OP_female:
        align: center
      screening.Adult_OP_transgender:
        align: center
      screening.Children_OP_male:
        align: center
      screening.Children_OP_female:
        align: center
      screening.Children_OP_transgender:
        align: center
      adult_total:
        align: center
      children_total:
        align: center
      total_op_male:
        align: center
      total_op_female:
        align: center
      total_op_transgender:
        align: center
      is_hwc:
        align: center
      district:
        align: center
      hud:
        align: center
      block:
        align: center
      user_department:
        align: center
      user_facility_type:
        align: center
      facility_residence:
        align: center
      user_directorate:
        align: center
      parent_facility_name:
        align: center
      user_facility:
        align: center
      screening.citizen_diagnosis_name:
        align: center
      diagnosis:
        align: center
    header_font_color: "#f7fff5"
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
    hidden_fields: [screening.citizen_diagnosis_name]
    listen:
      Screened Date: screening.screened_date
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution Facility: screening.user_facility_name
      Institution Directorate: screening.user_directorate
      Institution Facility Type: screening.user_facility_type
      Institution Role: screening.role_name
      Institution Category: screening.user_category_name
      Institution Department: screening.user_department_name
      Institution Type: screening.user_phr_role
      Institution Block Type: screening.user_block_type
      Is Institution Hwc: screening.is_user_facility_hwc
      Diagnosis Name: screening.citizen_diagnosis_name
      Screening Status: screening.is_citizen_screened
      Service Name: screening.citizen_service_name
    row: 17
    col: 0
    width: 24
    height: 10
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
  - title: Date wise
    name: Date wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.user_district_name, screening.user_hud_name, screening.user_directorate,
      screening.user_block_name, screening.user_block_gid, screening.user_parent_facility_name,
      screening.user_facility_name, screening.user_facility_type, screening.user_department_name,
      screening.is_user_facility_hwc, screening.Facility_Residence, screening.Total_screenings,
      screening.Adult_OP_male, screening.Adult_OP_female, screening.Adult_OP_transgender,
      screening.Children_OP_male, screening.Children_OP_female, screening.Children_OP_transgender,
      screening.user_district_gid, screening.user_hud_gid, screening.screened_date]
    sorts: [screening.screened_date desc]
    limit: 5000
    dynamic_fields: [{table_calculation: adult_total, label: 'Adult [Total]', expression: "${screening.Adult_OP_male}+${screening.Adult_OP_female}+${screening.Adult_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: children_total, label: 'Children
          [Total]', expression: "${screening.Children_OP_male}+${screening.Children_OP_female}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_male, label: Total OP Male,
        expression: "${screening.Adult_OP_male}+${screening.Children_OP_male}", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_op_female, label: Total OP Female, expression: "${screening.Adult_OP_female}+${screening.Children_OP_female}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: total_op_transgender, label: Total
          OP Transgender, expression: "${screening.Adult_OP_transgender}+${screening.Children_OP_transgender}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: is_institution_hwc, label: is_Institution_Hwc,
        expression: 'if(is_null(${screening.is_user_facility_hwc}),"-",${screening.is_user_facility_hwc})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_district, label: Institution
          District, expression: 'if(is_null(${screening.user_district_name}),"-",${screening.user_district_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_hud, label: Institution
          HUD, expression: 'if(is_null(${screening.user_hud_name}),"-",${screening.user_hud_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_block, label: Institution
          Block, expression: 'if(is_null(${screening.user_block_name}),"-",${screening.user_block_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_facility, label: Institution
          Facility, expression: 'if(is_null(${screening.user_facility_name}),"-",${screening.user_facility_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_parent_facility, label: Institution
          Parent facility, expression: 'if(is_null(${screening.user_parent_facility_name}),"-",${screening.user_parent_facility_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_department, label: Institution
          Department, expression: 'if(is_null(${screening.user_department_name}),"-",${screening.user_department_name})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_facility_type, label: Institution
          facility type, expression: 'if(is_null(${screening.user_facility_type}),"-",${screening.user_facility_type})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: is_facility_residence, label: is_Facility_Residence,
        expression: 'if(is_null(${screening.Facility_Residence}),"-",${screening.Facility_Residence})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_directorate, label: Institution
          Directorate, expression: 'if(is_null(${screening.user_directorate}),"-",${screening.user_directorate})

          ', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_block_gid, label: Institution
          Block Gid, expression: 'if(is_null(${screening.user_block_gid}),"-",to_string(${screening.user_block_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_district_gid, label: Institution
          District Gid, expression: 'if(is_null(${screening.user_district_gid}),"-",to_string(${screening.user_district_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}, {table_calculation: institution_hud_gid, label: Institution
          Hud Gid, expression: 'if(is_null(${screening.user_hud_gid}),"-",to_string(${screening.user_hud_gid}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", screening.screened_date, institution_district,
      institution_district_gid, institution_hud, institution_hud_gid, institution_directorate,
      institution_block, institution_block_gid, institution_parent_facility, institution_facility,
      institution_facility_type, institution_department, is_institution_hwc, is_facility_residence,
      screening.Total_screenings, screening.Adult_OP_male, screening.Adult_OP_female,
      screening.Adult_OP_transgender, adult_total, screening.Children_OP_male, screening.Children_OP_female,
      screening.Children_OP_transgender, children_total, total_op_male, total_op_female,
      total_op_transgender]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.Total_screenings: Total OP
      screening.Adult_OP_male: Adult OP Male
      screening.Adult_OP_female: Adult OP Female
      screening.Children_OP_male: Children OP Male
      screening.Children_OP_female: Children OP Female
      screening.Adult_OP_transgender: Adult OP Transgender
      screening.Children_OP_transgender: Children OP Transgender
    series_column_widths:
      is_institution_hwc: 200
      institution_district: 200
      institution_hud: 200
      institution_block: 200
      institution_facility: 300
      institution_parent_facility: 200
      institution_department: 200
      institution_facility_type: 200
      is_facility_residence: 200
      institution_directorate: 200
      screening.Total_screenings: 200
      screening.Adult_OP_male: 200
      screening.Adult_OP_female: 200
      screening.Adult_OP_transgender: 200
      screening.Children_OP_male: 200
      screening.Children_OP_female: 200
      screening.Children_OP_transgender: 200
      adult_total: 200
      children_total: 200
      total_op_male: 200
      total_op_female: 200
      total_op_transgender: 200
      institution_block_gid: 200
      institution_district_gid: 200
      institution_hud_gid: 200
      screening.screened_date: 200
    series_cell_visualizations:
      screening.Total_screenings:
        is_active: false
    series_text_format:
      screening.Total_screenings:
        align: center
      screening.Adult_OP_male:
        align: center
      screening.Adult_OP_female:
        align: center
      screening.Adult_OP_transgender:
        align: center
      screening.Children_OP_male:
        align: center
      screening.Children_OP_female:
        align: center
      screening.Children_OP_transgender:
        align: center
      adult_total:
        align: center
      children_total:
        align: center
      total_op_male:
        align: center
      total_op_female:
        align: center
      total_op_transgender:
        align: center
      is_hwc:
        align: center
      district:
        align: center
      hud:
        align: center
      block:
        align: center
      user_department:
        align: center
      user_facility_type:
        align: center
      facility_residence:
        align: center
      user_directorate:
        align: center
      parent_facility_name:
        align: center
      user_facility:
        align: center
      is_institution_hwc:
        align: center
      institution_district:
        align: center
      institution_hud:
        align: center
      institution_block:
        align: center
      institution_facility:
        align: center
      institution_parent_facility:
        align: center
      institution_department:
        align: center
      institution_facility_type:
        align: center
      is_facility_residence:
        align: center
      institution_directorate:
        align: center
      institution_block_gid:
        align: center
      institution_district_gid:
        align: center
      institution_hud_gid:
        align: center
      screening.screened_date:
        align: center
    header_font_color: "#f7fff5"
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
    hidden_fields: [screening.is_user_facility_hwc, screening.user_district_name,
      screening.user_hud_name, screening.user_block_name, screening.user_facility_name,
      screening.user_parent_facility_name, screening.user_department_name, screening.user_facility_type,
      screening.Facility_Residence, screening.user_block_gid, screening.user_directorate,
      screening.user_district_gid, screening.user_hud_gid]
    listen:
      Screened Date: screening.screened_date
      Institution District: screening.user_district_name
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution Facility: screening.user_facility_name
      Institution Directorate: screening.user_directorate
      Institution Facility Type: screening.user_facility_type
      Institution Role: screening.role_name
      Institution Category: screening.user_category_name
      Institution Department: screening.user_department_name
      Institution Type: screening.user_phr_role
      Institution Block Type: screening.user_block_type
      Is Institution Hwc: screening.is_user_facility_hwc
      Diagnosis Name: screening.citizen_diagnosis_name
      Screening Status: screening.is_citizen_screened
      Service Name: screening.citizen_service_name
    row: 10
    col: 0
    width: 24
    height: 7
  filters:
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
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Institution Type, Is Institution Hwc, Institution Block Type, Institution Hud,
      Institution Block]
    field: screening.user_district_name
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
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Institution Type, Is Institution Hwc, Institution Block Type, Institution District,
      Institution Block]
    field: screening.user_hud_name
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
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Institution Type, Is Institution Hwc, Institution Block Type, Institution District,
      Institution Hud]
    field: screening.user_block_name
  - name: Institution Facility
    title: Institution Facility
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility Type, Institution Directorate, Institution
        Role, Institution Category, Institution Department, Institution Type, Is Institution
        Hwc, Institution Block Type, Institution District, Institution Hud, Institution
        Block]
    field: screening.user_facility_name
  - name: Institution Facility Type
    title: Institution Facility Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Directorate, Institution
        Role, Institution Category, Institution Department, Institution Type, Is Institution
        Hwc, Institution Block Type, Institution District, Institution Hud, Institution
        Block]
    field: screening.user_facility_type
  - name: Institution Directorate
    title: Institution Directorate
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Role, Institution Category, Institution Department, Institution Type, Is Institution
        Hwc, Institution Block Type, Institution District, Institution Hud, Institution
        Block]
    field: screening.user_directorate
  - name: Institution Role
    title: Institution Role
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Category, Institution Department, Institution Type,
      Is Institution Hwc, Institution Block Type, Institution District, Institution
        Hud, Institution Block]
    field: screening.role_name
  - name: Institution Category
    title: Institution Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Department, Institution Type, Is
        Institution Hwc, Institution Block Type, Institution District, Institution
        Hud, Institution Block]
    field: screening.user_category_name
  - name: Institution Department
    title: Institution Department
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Type, Is
        Institution Hwc, Institution Block Type, Institution District, Institution
        Hud, Institution Block]
    field: screening.user_department_name
  - name: Institution Type
    title: Institution Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Is Institution Hwc, Institution Block Type, Institution District, Institution
        Hud, Institution Block]
    field: screening.user_phr_role
  - name: Is Institution Hwc
    title: Is Institution Hwc
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Institution Type, Institution Block Type, Institution District, Institution
        Hud, Institution Block]
    field: screening.is_user_facility_hwc
  - name: Institution Block Type
    title: Institution Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Institution Facility, Institution Facility Type, Institution
        Directorate, Institution Role, Institution Category, Institution Department,
      Institution Type, Is Institution Hwc, Institution District, Institution Hud,
      Institution Block]
    field: screening.user_block_type
  - name: Diagnosis Name
    title: Diagnosis Name
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
    field: screening.citizen_diagnosis_name
  - name: Screened Date
    title: Screened Date
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
  - name: Service Name
    title: Service Name
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
    field: screening.citizen_service_name
  - name: Screening Status
    title: Screening Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: []
    field: screening.is_citizen_screened
