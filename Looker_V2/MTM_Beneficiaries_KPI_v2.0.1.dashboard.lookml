- dashboard: mtm_beneficiaries_kpi_v2_0_1
  title: Mtm Beneficiaries Kpi V2 0 1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: hcw8BY6qApXdZ8frWBKJ9n
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
      <center>MTM Beneficiaries Dashboard - Used to understand the metrics for mtm scheme implemented by the TN govt</center>
    row: 0
    col: 0
    width: 24
    height: 5
  - name: District Wise
    title: District Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: looker_grid
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
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
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.unique_drugs_count]
      sorts: [screening.unique_screenings desc]
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
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: mtm_beneficiary.citizen_district_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension, mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
      screening.unique_screenings, screening.Total_screenings, screening.unique_drugs_count,
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs, mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: Physiotherapy
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: CAPD Bags
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: Palliative Care
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: Diabetes
        and Hypertension Both
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: Hypertension
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: Diabetes Mellitus
      screening.unique_drugs_count: Individual with Drugs Issued
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 200
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: 230
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: 200
      screening.unique_screenings: 200
      screening.Total_screenings: 200
      screening.unique_drugs_count: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      screening.unique_drugs_count:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: center
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
        label: Mtm Beneficiary [Physiotherapy Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Physiotherapy Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
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
        field_group_variant: "[Physiotherapy Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=427"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_physiotherapy "
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
        label: Mtm Beneficiary [CAPD Bags Beneficiries] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
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
        field_group_variant: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=420"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_dialysis_capd "
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
        label: Mtm Beneficiary [Palliative Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Palliative Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
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
        field_group_variant: "[Palliative Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=413"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_palliative_care "
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
        label: Mtm Beneficiary [Both] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Both] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
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
        field_group_variant: "[Both] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=448"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited "
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
        label: Mtm Beneficiary [Hypertension] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Hypertension] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
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
        field_group_variant: "[Hypertension] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=441"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_hypertension "
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
        label: Mtm Beneficiary [Diabetes] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Diabetes] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
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
        field_group_variant: "[Diabetes] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=434"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus "
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
        label: Mtm Beneficiary No of MTM Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of MTM Beneficiaries Received Drugs
        map_layer:
        name: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
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
        field_group_variant: No of MTM Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=455"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_drugs_received
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
        label: Screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=430"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=491"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=499"
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
        label: Mtm Beneficiary Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: mtm_beneficiary.citizen_district_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=27"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Mtm Beneficiary Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: mtm_beneficiary.citizen_district_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=21"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_district_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    listen:
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 5
    col: 0
    width: 24
    height: 10
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: looker_grid
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs,
        mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
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
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.unique_drugs_count, screening.citizen_hud_name]
      sorts: [screening.unique_screenings desc]
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
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: mtm_beneficiary.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: mtm_beneficiary.citizen_hud_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD, screening.unique_screenings,
      screening.Total_screenings, screening.unique_drugs_count, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: Physiotherapy
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: CAPD Bags
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: Palliative Care
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: Diabetes
        and Hypertension Both
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: Hypertension
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: Diabetes Mellitus
      screening.unique_drugs_count: Individual with Drugs Issued
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 200
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: 230
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: 200
      screening.unique_screenings: 200
      screening.Total_screenings: 200
      screening.unique_drugs_count: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
      mtm_beneficiary.citizen_hud_name: 200
      mtm_beneficiary.citizen_hud_gid: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      screening.unique_drugs_count:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: center
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
        label: Mtm Beneficiary [Physiotherapy Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Physiotherapy Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
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
        field_group_variant: "[Physiotherapy Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=427"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_physiotherapy "
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
        label: Mtm Beneficiary [CAPD Bags Beneficiries] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
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
        field_group_variant: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=420"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_dialysis_capd "
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
        label: Mtm Beneficiary [Palliative Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Palliative Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
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
        field_group_variant: "[Palliative Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=413"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_palliative_care "
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
        label: Mtm Beneficiary [Both] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Both] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
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
        field_group_variant: "[Both] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=448"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited "
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
        label: Mtm Beneficiary [Hypertension] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Hypertension] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
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
        field_group_variant: "[Hypertension] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=441"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_hypertension "
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
        label: Mtm Beneficiary [Diabetes] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Diabetes] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
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
        field_group_variant: "[Diabetes] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=434"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus "
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
        label: Mtm Beneficiary No of MTM Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of MTM Beneficiaries Received Drugs
        map_layer:
        name: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
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
        field_group_variant: No of MTM Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=455"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_drugs_received
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
        label: Screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=430"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=491"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=499"
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
        label: Mtm Beneficiary Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: mtm_beneficiary.citizen_district_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=27"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Mtm Beneficiary Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: mtm_beneficiary.citizen_district_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=21"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: mtm_beneficiary.citizen_hud_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: mtm_beneficiary.citizen_hud_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 15
    col: 0
    width: 24
    height: 10
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: looker_grid
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs,
        mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
        mtm_beneficiary.citizen_block_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
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
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.unique_drugs_count, screening.citizen_hud_name, screening.citizen_block_name]
      sorts: [screening.unique_screenings desc]
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
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: mtm_beneficiary.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: mtm_beneficiary.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: mtm_beneficiary.citizen_block_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
      mtm_beneficiary.citizen_block_gid, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD, screening.unique_screenings,
      screening.Total_screenings, screening.unique_drugs_count, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs,
      mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: Physiotherapy
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: CAPD Bags
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: Palliative Care
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: Diabetes
        and Hypertension Both
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: Hypertension
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: Diabetes Mellitus
      screening.unique_drugs_count: Individual with Drugs Issued
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.citizen_block_name: Community Block
      mtm_beneficiary.citizen_block_gid: Community Block Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 200
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: 230
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: 200
      screening.unique_screenings: 200
      screening.Total_screenings: 200
      screening.unique_drugs_count: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
      mtm_beneficiary.citizen_hud_name: 200
      mtm_beneficiary.citizen_hud_gid: 200
      mtm_beneficiary.citizen_block_gid: 200
      mtm_beneficiary.citizen_block_name: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      screening.unique_drugs_count:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
      mtm_beneficiary.citizen_block_name:
        align: center
      mtm_beneficiary.citizen_block_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: center
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
        label: Mtm Beneficiary [Physiotherapy Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Physiotherapy Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
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
        field_group_variant: "[Physiotherapy Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=427"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_physiotherapy "
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
        label: Mtm Beneficiary [CAPD Bags Beneficiries] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
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
        field_group_variant: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=420"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_dialysis_capd "
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
        label: Mtm Beneficiary [Palliative Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Palliative Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
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
        field_group_variant: "[Palliative Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=413"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_palliative_care "
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
        label: Mtm Beneficiary [Both] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Both] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
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
        field_group_variant: "[Both] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=448"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited "
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
        label: Mtm Beneficiary [Hypertension] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Hypertension] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
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
        field_group_variant: "[Hypertension] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=441"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_hypertension "
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
        label: Mtm Beneficiary [Diabetes] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Diabetes] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
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
        field_group_variant: "[Diabetes] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=434"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus "
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
        label: Mtm Beneficiary No of MTM Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of MTM Beneficiaries Received Drugs
        map_layer:
        name: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
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
        field_group_variant: No of MTM Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=455"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_drugs_received
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
        label: Screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=430"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=491"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=499"
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
        label: Mtm Beneficiary Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: mtm_beneficiary.citizen_district_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=27"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Mtm Beneficiary Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: mtm_beneficiary.citizen_district_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=21"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: mtm_beneficiary.citizen_hud_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: mtm_beneficiary.citizen_hud_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: mtm_beneficiary.citizen_block_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_block_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=11"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: mtm_beneficiary.citizen_block_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_block_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=5"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_block_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 25
    col: 0
    width: 24
    height: 10
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: mtm_beneficiary
      type: looker_grid
      fields: [mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
        mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs,
        mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
        mtm_beneficiary.citizen_block_gid, mtm_beneficiary.citizen_village_name, mtm_beneficiary.citizen_village_gid]
      sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary desc]
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
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.citizen_district_name, screening.unique_screenings, screening.Total_screenings,
        screening.unique_drugs_count, screening.citizen_hud_name, screening.citizen_block_name,
        screening.citizen_village_name]
      sorts: [screening.unique_screenings desc]
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
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: screening.citizen_district_name
        source_field_name: mtm_beneficiary.citizen_district_name
      - field_name: screening.citizen_hud_name
        source_field_name: mtm_beneficiary.citizen_hud_name
      - field_name: screening.citizen_block_name
        source_field_name: mtm_beneficiary.citizen_block_name
      - field_name: screening.citizen_village_name
        source_field_name: mtm_beneficiary.citizen_village_name
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", mtm_beneficiary.citizen_district_name, mtm_beneficiary.citizen_district_gid,
      mtm_beneficiary.citizen_hud_name, mtm_beneficiary.citizen_hud_gid, mtm_beneficiary.citizen_block_name,
      mtm_beneficiary.citizen_block_gid, mtm_beneficiary.citizen_village_name, mtm_beneficiary.citizen_village_gid,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes, mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension, mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio,
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD,
      screening.unique_screenings, screening.Total_screenings, screening.unique_drugs_count,
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs, mtm_beneficiary.total_confirmed_MTM_beneficiary]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: false
    series_labels:
      mtm_beneficiary.citizen_district_name: Community District
      mtm_beneficiary.citizen_district_gid: Community District Gid
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: Physiotherapy
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: CAPD Bags
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: Palliative Care
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: Diabetes
        and Hypertension Both
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: Hypertension
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: Diabetes Mellitus
      screening.unique_drugs_count: Individual with Drugs Issued
      mtm_beneficiary.citizen_hud_name: Community HUD
      mtm_beneficiary.citizen_hud_gid: Community HUD Gid
      mtm_beneficiary.citizen_block_name: Community Block
      mtm_beneficiary.citizen_block_gid: Community Block Gid
      mtm_beneficiary.citizen_village_name: Community Village
      mtm_beneficiary.citizen_village_gid: Community Village Gid
    series_column_widths:
      mtm_beneficiary.citizen_district_name: 200
      mtm_beneficiary.citizen_district_gid: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension: 230
      mtm_beneficiary.total_confirmed_MTM_beneficiary: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension: 200
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes: 200
      screening.unique_screenings: 200
      screening.Total_screenings: 200
      screening.unique_drugs_count: 200
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs: 200
      mtm_beneficiary.citizen_hud_name: 200
      mtm_beneficiary.citizen_hud_gid: 200
      mtm_beneficiary.citizen_block_gid: 200
      mtm_beneficiary.citizen_block_name: 200
      mtm_beneficiary.citizen_village_name: 200
      mtm_beneficiary.citizen_village_gid: 200
    series_cell_visualizations:
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        is_active: false
    series_text_format:
      mtm_beneficiary.citizen_district_name:
        align: center
      mtm_beneficiary.citizen_district_gid:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension:
        align: center
      mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes:
        align: center
      screening.unique_screenings:
        align: center
      screening.Total_screenings:
        align: center
      screening.unique_drugs_count:
        align: center
      mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs:
        align: center
      mtm_beneficiary.citizen_hud_name:
        align: center
      mtm_beneficiary.citizen_hud_gid:
        align: center
      mtm_beneficiary.citizen_block_name:
        align: center
      mtm_beneficiary.citizen_block_gid:
        align: center
      mtm_beneficiary.citizen_village_name:
        align: center
      mtm_beneficiary.citizen_village_gid:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffdf6"
    header_background_color: "#1A73E8"
    header_text_alignment: center
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
        label: Mtm Beneficiary [Physiotherapy Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Physiotherapy Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
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
        field_group_variant: "[Physiotherapy Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=427"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_physiotherapy "
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
        label: Mtm Beneficiary [CAPD Bags Beneficiries] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
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
        field_group_variant: "[CAPD Bags Beneficiries] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=420"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_dialysis_capd "
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
        label: Mtm Beneficiary [Palliative Care] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Palliative Care] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
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
        field_group_variant: "[Palliative Care] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=413"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_palliative_care "
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
        label: Mtm Beneficiary [Both] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Both] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
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
        field_group_variant: "[Both] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabeties_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=448"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus_and_hypertension_benefited "
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
        label: Mtm Beneficiary [Hypertension] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Hypertension] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
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
        field_group_variant: "[Hypertension] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Hypertension
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=441"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_hypertension "
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
        label: Mtm Beneficiary [Diabetes] MTM Beneficiaries updated
        label_from_parameter:
        label_short: "[Diabetes] MTM Beneficiaries updated"
        map_layer:
        name: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
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
        field_group_variant: "[Diabetes] MTM Beneficiaries updated"
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.total_confirmed_MTM_beneficiary_Diabetes
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=434"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_diabetes_mellitus "
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
        label: Mtm Beneficiary No of MTM Beneficiaries Received Drugs
        label_from_parameter:
        label_short: No of MTM Beneficiaries Received Drugs
        map_layer:
        name: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
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
        field_group_variant: No of MTM Beneficiaries Received Drugs
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.no_of_MTM_beneficiaries_received_drugs
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=455"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.mtm_count "
        sql_case:
        filters:
        - field: mtm_beneficiary.is_drugs_received
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
        label: Screening Unique Screenings
        label_from_parameter:
        label_short: Unique Screenings
        map_layer:
        name: screening.unique_screenings
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
        field_group_variant: Unique Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=430"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
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
        label: Screening Total Screenings
        label_from_parameter:
        label_short: Total Screenings
        map_layer:
        name: screening.Total_screenings
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
        field_group_variant: Total Screenings
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Total_screenings
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=491"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
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
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=499"
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
        label: Mtm Beneficiary Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: mtm_beneficiary.citizen_district_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=27"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_district_name "
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
        label: Mtm Beneficiary Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: mtm_beneficiary.citizen_district_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_district_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=21"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: mtm_beneficiary.citizen_hud_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=79"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: mtm_beneficiary.citizen_hud_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_hud_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=73"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: mtm_beneficiary.citizen_block_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_block_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=11"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
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
        label: Mtm Beneficiary Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: mtm_beneficiary.citizen_block_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_block_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=5"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_block_gid "
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
        label: Mtm Beneficiary Citizen Village Name
        label_from_parameter:
        label_short: Citizen Village Name
        map_layer:
        name: mtm_beneficiary.citizen_village_name
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_village_name
        suggest_explore: mtm_beneficiary
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=127"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_village_name "
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
        label: Mtm Beneficiary Citizen Village Gid
        label_from_parameter:
        label_short: Citizen Village Gid
        map_layer:
        name: mtm_beneficiary.citizen_village_gid
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
        view: mtm_beneficiary
        view_label: Mtm Beneficiary
        dynamic: false
        week_start_day: monday
        original_view: mtm_beneficiary
        dimension_group:
        error:
        field_group_variant: Citizen Village Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: mtm_beneficiary
        suggest_dimension: mtm_beneficiary.citizen_village_gid
        suggest_explore: mtm_beneficiary
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fmtm_beneficiary.view.lkml?line=121"
        permanent: true
        source_file: tnphr_views/mtm_beneficiary.view.lkml
        source_file_path: looker-tnphr/tnphr_views/mtm_beneficiary.view.lkml
        sql: "${TABLE}.citizen_village_gid "
        sql_case:
        filters:
        times_used: 0
      table_calculations: []
      pivots: []
    hide_totals: false
    hide_row_totals: false
    listen:
    - Community District: mtm_beneficiary.citizen_district_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Community Village: mtm_beneficiary.citizen_village_name
      Date: mtm_beneficiary.mtm_start_date
    - Community District: screening.citizen_district_name
      Community Hud: screening.citizen_hud_name
      Community Block: screening.citizen_block_name
      Community Block Type: screening.citizen_block_type
      Community Village: screening.citizen_village_name
      Date: screening.screened_date
    row: 35
    col: 0
    width: 24
    height: 10
  filters:
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
    explore: mtm_beneficiary
    listens_to_filters: [Community Hud, Community Block, Community Block Type, Community
        Village]
    field: mtm_beneficiary.citizen_district_name
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
    explore: mtm_beneficiary
    listens_to_filters: [Community District, Community Block, Community Block Type,
      Community Village]
    field: mtm_beneficiary.citizen_hud_name
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
    explore: mtm_beneficiary
    listens_to_filters: [Community District, Community Hud, Community Block Type,
      Community Village]
    field: mtm_beneficiary.citizen_block_name
  - name: Community Block Type
    title: Community Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    listens_to_filters: [Community District, Community Hud, Community Block, Community
        Village]
    field: mtm_beneficiary.citizen_block_type
  - name: Community Village
    title: Community Village
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    listens_to_filters: [Community District, Community Hud, Community Block, Community
        Block Type]
    field: mtm_beneficiary.citizen_village_name
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
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    listens_to_filters: []
    field: mtm_beneficiary.mtm_start_date
