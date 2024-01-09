- dashboard: mtm_beneficiaries_kpi_prod
  title: MTM Beneficiaries_KPI_V1.0.3 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MgIa1s7JHuiZVea3sF2wwb
  elements:
  - title: MTM Beneficiaries_V1
    name: MTM Beneficiaries_V1
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.MTM_Diabetes, health_screening.MTM_dialysis_capd, health_screening.MTM_hypertension,
      health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy, family_member_master.district_name,
      health_screening.mtm_beneficiary_v1_count, health_history.MTM_Diabetes_Hypertension,
      health_screening.member_drug_Delivered]
    filters:
      family_member_master.district_name: "-NULL"
    sorts: [health_screening.MTM_Diabetes desc]
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
    header_text_alignment: center
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [family_member_master.district_name, health_screening.MTM_Diabetes,
      health_screening.MTM_dialysis_capd, health_screening.MTM_hypertension, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy, health_history.MTM_Diabetes_Hypertension,
      health_screening.mtm_beneficiary_v1_count]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.district_name: District
      health_screening.MTM_Diabetes: Diabetes
      health_screening.MTM_dialysis_capd: Dialysis CAPD
      health_screening.MTM_hypertension: Hypertension
      health_screening.MTM_other: Others
      health_screening.MTM_palliative_care: Palliative Care
      health_screening.MTM_physiotherapy: Physiotherapy
      health_history.MTM_Diabetes_Hypertension: Diabetes and Hypertension
      health_screening.mtm_beneficiary_v1_count: Total MTM Beneficiaries
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_cell_visualizations:
      health_screening.MTM_Diabetes:
        is_active: false
      total_mtm_beneficiaries:
        is_active: true
      health_screening.mtm_beneficiary_v1_count:
        is_active: true
    header_font_color: "#fffff8"
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
    listen:
      Directorate Name: health_history.facility_directorate_name
      V1 Date: health_screening.last_update_date
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    row: 7
    col: 0
    width: 24
    height: 9
  - name: MTM Beneficiaries_V2
    title: MTM Beneficiaries_V2
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_history.MTM_Diabetes_HH, health_history.MTM_dialysis_capd_HH,
        health_history.MTM_hypertension_HH, health_history.MTM_palliative_care_HH,
        health_history.MTM_physiotherapy_HH, family_member_master.district_name, health_history.mtm_beneficiary_v2_count,
        health_history.MTM_Diabetes_Hypertension, health_screening.member_drug_Delivered]
      filters:
        health_history.mtm_beneficiary_diabetes_mellitus_enroll_date: -"\"2021-07-07
          00:00:00+0530\""
        health_history.mtm_beneficiary_dialysis_capd_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.mtm_beneficiary_hypertension_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.mtm_beneficiary_palliative_care_enroll_date: -"\"2021-07-07
          00:00:00+0530\""
        health_history.mtm_beneficiary_physiotherapy_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.last_update_date: ''
        health_history.mtm_beneficiary_avail_service: ''
        health_history.mtm_beneficiary_drugs_from: ''
        health_screening.role_name: ''
        health_history.facility_directorate_name: ''
        family_member_master.district_name: "-NULL"
      sorts: [health_history.MTM_Diabetes_HH desc]
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
      series_labels:
        health_history.MTM_Diabetes_HH: Diabetes
        health_history.MTM_dialysis_capd_HH: Dialysis CAPD
        health_history.MTM_hypertension_HH: Hypertension
        health_history.MTM_others_HH: Others
        health_history.MTM_palliative_care_HH: Palliative Care
        health_history.MTM_physiotherapy_HH: Physiotherapy
        total_mtm_beneficiaries: Total
        health_history.district_name: District
      series_cell_visualizations:
        total_mtm_beneficiaries:
          is_active: true
      header_font_color: "#fffff8"
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
      hidden_fields:
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count, health_screening.Unique_Screening, health_screening.Total_Screening,
        family_member_master.district_name]
      sorts: [health_screening.Drugs_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: [family_member_master.district_name, health_history.MTM_Diabetes_HH,
      health_history.MTM_dialysis_capd_HH, health_history.MTM_hypertension_HH, health_history.MTM_palliative_care_HH,
      health_history.MTM_physiotherapy_HH, health_history.MTM_Diabetes_Hypertension,
      health_screening.Drugs_count, health_screening.Unique_Screening, health_screening.member_drug_Delivered,
      health_screening.Total_Screening, health_history.mtm_beneficiary_v2_count]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_history.district_name: District
      health_history.MTM_Diabetes_HH: Diabetes
      health_history.MTM_dialysis_capd_HH: Dialysis CAPD
      health_history.MTM_hypertension_HH: Hypertension
      health_history.MTM_others_HH: Others
      health_history.MTM_palliative_care_HH: Palliative Care
      health_history.MTM_physiotherapy_HH: Physiotherapy
      health_history.MTM_Diabetes_Hypertension: Diabetes and Hypertension
      health_history.mtm_beneficiary_v2_count: No. of individuals confirmed mtm beneficiary
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_column_widths:
      family_member_master.district_name: 225
    series_cell_visualizations:
      health_history.MTM_Diabetes_HH:
        is_active: false
      total_mtm_beneficiaries:
        is_active: false
      health_history.mtm_beneficiary_v2_count:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        label: Health History MTM Diabetes HH
        label_from_parameter:
        label_short: MTM Diabetes HH
        map_layer:
        name: health_history.MTM_Diabetes_HH
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
        field_group_variant: MTM Diabetes HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_Diabetes_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=728"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_diabetes_mellitus_status
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
        label: Health History MTM Dialysis Capd HH
        label_from_parameter:
        label_short: MTM Dialysis Capd HH
        map_layer:
        name: health_history.MTM_dialysis_capd_HH
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
        field_group_variant: MTM Dialysis Capd HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_dialysis_capd_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=740"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_dialysis_capd_status
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
        label: Health History MTM Hypertension HH
        label_from_parameter:
        label_short: MTM Hypertension HH
        map_layer:
        name: health_history.MTM_hypertension_HH
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
        field_group_variant: MTM Hypertension HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_hypertension_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=746"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_hypertension_status
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
        label: Health History MTM Palliative Care HH
        label_from_parameter:
        label_short: MTM Palliative Care HH
        map_layer:
        name: health_history.MTM_palliative_care_HH
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
        field_group_variant: MTM Palliative Care HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_palliative_care_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=758"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_palliative_care_status
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
        label: Health History MTM Physiotherapy HH
        label_from_parameter:
        label_short: MTM Physiotherapy HH
        map_layer:
        name: health_history.MTM_physiotherapy_HH
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
        field_group_variant: MTM Physiotherapy HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_physiotherapy_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=764"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_physiotherapy_status
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
        label: Health History MTM Diabetes Hypertension
        label_from_parameter:
        label_short: MTM Diabetes Hypertension
        map_layer:
        name: health_history.MTM_Diabetes_Hypertension
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
        field_group_variant: MTM Diabetes Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_Diabetes_Hypertension
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=734"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_diabetes_mellitus_status
          condition: "%yes%"
        - field: health_history.mtm_beneficiary_hypertension_status
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1810"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1759"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1288"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1327"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: 'concat(${member_id},${screening_id}) '
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
      table_calculations: []
      pivots: []
    listen:
    - Directorate Name: health_history.facility_directorate_name
      V2 Date: health_history.last_update_date
      V2 Drugs issued From: health_history.mtm_beneficiary_drugs_from
      V2 Avail Service: health_history.mtm_beneficiary_avail_service
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    - Directorate Name: health_history.facility_directorate_name
      V2 Date: health_history.last_update_date
      V2 Drugs issued From: health_history.mtm_beneficiary_drugs_from
      V2 Avail Service: health_history.mtm_beneficiary_avail_service
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    row: 0
    col: 0
    width: 24
    height: 7
  - name: MTM Beneficiaries_V1_V2
    title: MTM Beneficiaries_V1_V2
    merged_queries:
    - model: tnphr
      explore: family_member_master
      type: looker_grid
      fields: [health_history.MTM_Diabetes_HH, health_history.MTM_dialysis_capd_HH,
        health_history.MTM_hypertension_HH, health_history.MTM_palliative_care_HH,
        health_history.MTM_physiotherapy_HH, family_member_master.district_name, health_history.mtm_beneficiary_v2_count,
        health_screening.member_drug_Delivered]
      filters:
        health_history.mtm_beneficiary_diabetes_mellitus_enroll_date: -"\"2021-07-07
          00:00:00+0530\""
        health_history.mtm_beneficiary_dialysis_capd_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.mtm_beneficiary_hypertension_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.mtm_beneficiary_palliative_care_enroll_date: -"\"2021-07-07
          00:00:00+0530\""
        health_history.mtm_beneficiary_physiotherapy_enroll_date: -"\"2021-07-07 00:00:00+0530\""
        health_history.last_update_date: ''
        health_history.mtm_beneficiary_avail_service: ''
        health_history.mtm_beneficiary_drugs_from: ''
        health_screening.role_name: ''
        health_history.facility_directorate_name: ''
        family_member_master.district_name: "-NULL"
      sorts: [health_history.MTM_Diabetes_HH desc]
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
      series_labels:
        health_history.MTM_Diabetes_HH: Diabetes
        health_history.MTM_dialysis_capd_HH: Dialysis CAPD
        health_history.MTM_hypertension_HH: Hypertension
        health_history.MTM_others_HH: Others
        health_history.MTM_palliative_care_HH: Palliative Care
        health_history.MTM_physiotherapy_HH: Physiotherapy
        total_mtm_beneficiaries: Total
        health_history.district_name: District
      series_cell_visualizations:
        total_mtm_beneficiaries:
          is_active: true
      header_font_color: "#fffff8"
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
      hidden_fields:
      series_types: {}
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.Drugs_count, health_screening.Unique_Screening, health_screening.Total_Screening,
        family_member_master.district_name]
      sorts: [health_screening.Drugs_count desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    - model: tnphr
      explore: family_member_master
      type: table
      fields: [health_screening.MTM_Diabetes, health_screening.MTM_hypertension, health_screening.MTM_dialysis_capd,
        health_screening.MTM_palliative_care, health_screening.MTM_physiotherapy,
        health_screening.mtm_beneficiary_v1_count, family_member_master.district_name]
      sorts: [health_screening.MTM_Diabetes desc]
      limit: 500
      join_fields:
      - field_name: family_member_master.district_name
        source_field_name: family_member_master.district_name
    show_sql_query_menu_options: false
    column_order: [family_member_master.district_name, health_screening.MTM_Diabetes,
      health_screening.MTM_hypertension, health_screening.MTM_dialysis_capd, health_screening.MTM_palliative_care,
      health_screening.MTM_physiotherapy, health_history.MTM_Diabetes_HH, health_history.MTM_dialysis_capd_HH,
      health_history.MTM_hypertension_HH, health_history.MTM_palliative_care_HH, health_history.MTM_physiotherapy_HH,
      health_screening.Drugs_count, health_screening.Unique_Screening, health_screening.Total_Screening,
      health_screening.mtm_beneficiary_v1_count, health_history.mtm_beneficiary_v2_count,
      total_mtm_beneficiaries]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      health_history.district_name: District
      health_history.MTM_Diabetes_HH: Diabetes V2
      health_history.MTM_dialysis_capd_HH: Dialysis CAPD V2
      health_history.MTM_hypertension_HH: Hypertension V2
      health_history.MTM_others_HH: Others
      health_history.MTM_palliative_care_HH: Palliative Care V2
      health_history.MTM_physiotherapy_HH: Physiotherapy V2
      health_history.MTM_Diabetes_Hypertension: Diabetes and Hypertension
      health_history.mtm_beneficiary_v2_count: MTM Beneficiaries v2
      health_screening.MTM_Diabetes: Diabetes  V1
      health_screening.MTM_hypertension: Hypertension V1
      health_screening.MTM_dialysis_capd: Dialysis Capd V1
      health_screening.MTM_palliative_care: Palliative  care V1
      health_screening.MTM_physiotherapy: Physiotherapy V1
      health_screening.member_drug_Delivered: No. of individuals received drugs
    series_column_widths:
      family_member_master.district_name: 225
      health_screening.MTM_Diabetes: 112
      health_screening.MTM_hypertension: 141
      health_screening.MTM_dialysis_capd: 141
      health_screening.MTM_palliative_care: 144
      health_screening.MTM_physiotherapy: 146
      health_history.MTM_Diabetes_HH: 112
      health_history.MTM_dialysis_capd_HH: 145
      health_history.MTM_hypertension_HH: 141
      health_history.MTM_palliative_care_HH: 146
      health_history.MTM_physiotherapy_HH: 146
      health_screening.Drugs_count: 114
      health_screening.Unique_Screening: 146
      health_screening.Total_Screening: 133
      health_screening.mtm_beneficiary_v1_count: 200
      health_history.mtm_beneficiary_v2_count: 172
      total_mtm_beneficiaries: 187
    series_cell_visualizations:
      health_history.MTM_Diabetes_HH:
        is_active: false
      total_mtm_beneficiaries:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fcfff9"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
        label: Health History MTM Diabetes HH
        label_from_parameter:
        label_short: MTM Diabetes HH
        map_layer:
        name: health_history.MTM_Diabetes_HH
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
        field_group_variant: MTM Diabetes HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_Diabetes_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=728"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_diabetes_mellitus_status
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
        label: Health History MTM Dialysis Capd HH
        label_from_parameter:
        label_short: MTM Dialysis Capd HH
        map_layer:
        name: health_history.MTM_dialysis_capd_HH
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
        field_group_variant: MTM Dialysis Capd HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_dialysis_capd_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=740"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_dialysis_capd_status
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
        label: Health History MTM Hypertension HH
        label_from_parameter:
        label_short: MTM Hypertension HH
        map_layer:
        name: health_history.MTM_hypertension_HH
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
        field_group_variant: MTM Hypertension HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_hypertension_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=746"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_hypertension_status
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
        label: Health History MTM Palliative Care HH
        label_from_parameter:
        label_short: MTM Palliative Care HH
        map_layer:
        name: health_history.MTM_palliative_care_HH
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
        field_group_variant: MTM Palliative Care HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_palliative_care_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=758"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_palliative_care_status
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
        label: Health History MTM Physiotherapy HH
        label_from_parameter:
        label_short: MTM Physiotherapy HH
        map_layer:
        name: health_history.MTM_physiotherapy_HH
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
        field_group_variant: MTM Physiotherapy HH
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: health_history
        suggest_dimension: health_history.MTM_physiotherapy_HH
        suggest_explore: family_member_master
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_history.view.lkml?line=764"
        permanent: true
        source_file: views/health_history.view.lkml
        source_file_path: looker-tnphr/views/health_history.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_history.mtm_beneficiary_physiotherapy_status
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1749"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1323"
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1539"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
        - field: health_screening.additional_services_diabetes_mellitus
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
        original_view: health_screening
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1571"
        permanent: true
        source_file: views/health_screening.view.lkml
        source_file_path: looker-tnphr/views/health_screening.view.lkml
        sql: "${member_id} "
        sql_case:
        filters:
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1554"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1560"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1577"
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
        lookml_link: "/projects/looker-tnphr/files/views%2Fhealth_screening.view.lkml?line=1891"
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
      - label: 'Total MTM beneficiaries '
        name: total_mtm_beneficiaries
        expression: "(${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})"
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
    dynamic_fields: [{category: table_calculation, expression: "(${health_screening.mtm_beneficiary_v1_count}+${health_history.mtm_beneficiary_v2_count})",
        label: 'Total MTM beneficiaries ', value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: total_mtm_beneficiaries, _type_hint: number}]
    listen:
    - Directorate Name: health_history.facility_directorate_name
      V2 Date: health_history.last_update_date
      V2 Drugs issued From: health_history.mtm_beneficiary_drugs_from
      V2 Avail Service: health_history.mtm_beneficiary_avail_service
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    - Directorate Name: health_history.facility_directorate_name
      V1 Date: health_screening.last_update_date
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    - V1 Date: health_screening.last_update_date
      Role Name: health_screening.role_name
      Disease_id: health_screening.Disease_id
    row: 16
    col: 0
    width: 24
    height: 7
  filters:
  - name: V2 Date
    title: V2 Date
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
    field: health_history.last_update_date
  - name: V1 Date
    title: V1 Date
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
  - name: V2 Drugs issued From
    title: V2 Drugs issued From
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_history.mtm_beneficiary_drugs_from
  - name: V2 Avail Service
    title: V2 Avail Service
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_history.mtm_beneficiary_avail_service
  - name: Role Name
    title: Role Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
  - name: Directorate Name
    title: Directorate Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_history.facility_directorate_name
  - name: Disease_id
    title: Disease_id
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
