- dashboard: pbs_screening_prod
  title: PBS Screening v1.0.4 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 20s4UzIuAncNfGzAEYiwLB
  elements:
  - title: Additional Services
    name: Additional Services
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.MTM_palliative_care, health_screening.MTM_palliative_care_referral,
      health_screening.MTM_physiotherapy, health_screening.MTM_physiotherapy_referral]
    filters:
      health_screening.MTM_palliative_care: ">0"
    sorts: [health_screening.MTM_palliative_care]
    limit: 5000
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      health_screening.MTM_palliative_care: Palliative Screened
      health_screening.MTM_palliative_care_referral: Palliative Referred
      health_screening.MTM_physiotherapy: Physio Screened
      health_screening.MTM_physiotherapy_referral: Physio Referred
    series_cell_visualizations:
      health_screening.MTM_palliative_care:
        is_active: false
    series_text_format:
      health_screening.MTM_palliative_care:
        align: center
      health_screening.MTM_palliative_care_referral:
        align: center
      health_screening.MTM_physiotherapy:
        align: center
      health_screening.MTM_physiotherapy_referral:
        align: center
    header_background_color: "#12B5CB"
    truncate_column_names: false
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
    note_state: collapsed
    note_display: hover
    note_text: |+
      This includes Palliative Screened, Palliative Referred, Physio Screened and Physio Referred members<br>

      <br><li>Palliative Screened:</li><br>
      This includes the count of Palliative Care MTM beneficiaries who got screened (only once even he/she got screened multiple times)<br><br>

      <li>Palliative Referred:</li><br>
      Count of Palliative Care MTM beneficiaries having referral place id's (only once even if there are multiple referral place id's per beneficiary)<br><br>

      <br><li>Physio Screened:</li><br>
      This includes the count of Physiotherapy MTM beneficiaries who got screened (only once even he/she got screened multiple times)<br><br>

      <li>Physio Referred:</li><br>
      Count of Physiotherapy MTM beneficiaries having referral place id's (only once even if there are multiple referral place id's per beneficiary)

    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 9
    col: 0
    width: 24
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
  - title: District Wise
    name: District Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.MTM_palliative_care, health_screening.MTM_palliative_care_referral,
      health_screening.MTM_physiotherapy, health_screening.MTM_physiotherapy_referral,
      health_screening.district_name, health_screening.Unique_Screening, health_screening.Total_Screening,
      health_screening.referrel_count]
    filters:
      health_screening.MTM_palliative_care: ">0"
    sorts: [health_screening.MTM_palliative_care]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [health_screening.district_name, health_screening.Unique_Screening,
      health_screening.Total_Screening, health_screening.referrel_count, health_screening.MTM_palliative_care,
      health_screening.MTM_palliative_care_referral, health_screening.MTM_physiotherapy,
      health_screening.MTM_physiotherapy_referral]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.MTM_palliative_care: Palliative Screened
      health_screening.MTM_palliative_care_referral: Palliative Referred
      health_screening.MTM_physiotherapy: Physio Screened
      health_screening.MTM_physiotherapy_referral: Physio Referred
      health_screening.Unique_Screening: No. of Individuals Screened
    series_cell_visualizations:
      health_screening.MTM_palliative_care:
        is_active: false
    series_text_format:
      health_screening.MTM_palliative_care:
        align: center
      health_screening.MTM_palliative_care_referral:
        align: center
      health_screening.MTM_physiotherapy:
        align: center
      health_screening.MTM_physiotherapy_referral:
        align: center
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.referrel_count:
        align: center
    header_background_color: "#7CB342"
    truncate_column_names: false
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
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 12
    col: 0
    width: 24
    height: 6
  - title: HUD Wise
    name: HUD Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.MTM_palliative_care, health_screening.MTM_palliative_care_referral,
      health_screening.MTM_physiotherapy, health_screening.MTM_physiotherapy_referral,
      health_screening.hud_name, health_screening.Unique_Screening, health_screening.Total_Screening,
      health_screening.referrel_count]
    filters:
      health_screening.MTM_palliative_care: ">0"
    sorts: [health_screening.MTM_palliative_care]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [health_screening.hud_name, health_screening.Unique_Screening, health_screening.Total_Screening,
      health_screening.referrel_count, health_screening.MTM_palliative_care, health_screening.MTM_palliative_care_referral,
      health_screening.MTM_physiotherapy, health_screening.MTM_physiotherapy_referral]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.MTM_palliative_care: Palliative Screened
      health_screening.MTM_palliative_care_referral: Palliative Referred
      health_screening.MTM_physiotherapy: Physio Screened
      health_screening.MTM_physiotherapy_referral: Physio Referred
      health_screening.Unique_Screening: No. of Individuals Screened
    series_cell_visualizations:
      health_screening.MTM_palliative_care:
        is_active: false
    series_text_format:
      health_screening.MTM_palliative_care:
        align: center
      health_screening.MTM_palliative_care_referral:
        align: center
      health_screening.MTM_physiotherapy:
        align: center
      health_screening.MTM_physiotherapy_referral:
        align: center
      health_screening.referrel_count:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.Unique_Screening:
        align: center
    header_background_color: "#7CB342"
    truncate_column_names: false
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
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 18
    col: 0
    width: 24
    height: 6
  - title: Block Wise
    name: Block Wise
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening.MTM_palliative_care, health_screening.MTM_palliative_care_referral,
      health_screening.MTM_physiotherapy, health_screening.MTM_physiotherapy_referral,
      health_screening.block_name, health_screening.Unique_Screening, health_screening.Total_Screening,
      health_screening.referrel_count]
    filters:
      health_screening.MTM_palliative_care: ">0"
    sorts: [health_screening.MTM_palliative_care]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [health_screening.block_name, health_screening.Unique_Screening,
      health_screening.Total_Screening, health_screening.referrel_count, health_screening.MTM_palliative_care,
      health_screening.MTM_palliative_care_referral, health_screening.MTM_physiotherapy,
      health_screening.MTM_physiotherapy_referral]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      health_screening.MTM_palliative_care: Palliative Screened
      health_screening.MTM_palliative_care_referral: Palliative Referred
      health_screening.MTM_physiotherapy: Physio Screened
      health_screening.MTM_physiotherapy_referral: Physio Referred
      health_screening.Unique_Screening: No. of Individuals Screened
    series_cell_visualizations:
      health_screening.MTM_palliative_care:
        is_active: false
    series_text_format:
      health_screening.MTM_palliative_care:
        align: center
      health_screening.MTM_palliative_care_referral:
        align: center
      health_screening.MTM_physiotherapy:
        align: center
      health_screening.MTM_physiotherapy_referral:
        align: center
      health_screening.referrel_count:
        align: center
      health_screening.Total_Screening:
        align: center
      health_screening.Unique_Screening:
        align: center
    header_background_color: "#7CB342"
    truncate_column_names: false
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
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 24
    col: 0
    width: 24
    height: 6
  - title: 10 Priority Diseases
    name: 10 Priority Diseases
    model: tnphr
    explore: family_member_master
    type: looker_grid
    fields: [health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis,
      health_screening.Unique_Screening, health_screening.Total_Screening, health_screening.referrel_count]
    filters:
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis: Hypertension
        (BP),Cold / Running Nose,Diabetes (Sugar),Generalized Body pain,Fever with
        Joint Pain,Fever & Chills,Dry cough,Running nose,Cough <= 2 weeks with fever,Cough
        <= 2 weeks without fever
    sorts: [health_screening.referrel_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    truncate_header: false
    series_labels:
      health_screening.Unique_Screening: No. of Individuals Screened
      health_screening.Total_Screening: Total Screenings
    series_column_widths: {}
    series_cell_visualizations:
      health_screening.referrel_count:
        is_active: false
      health_screening.count:
        is_active: false
    series_text_format:
      health_screening.count:
        align: center
      health_screening.referrel_count:
        align: center
      health_screening__diseases_disease_list.health_screening__diseases_disease_list_diagnosis:
        align: center
      health_screening.Unique_Screening:
        align: center
      health_screening.Total_Screening:
        align: center
    header_background_color: "#12B5CB"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    note_state: collapsed
    note_display: hover
    note_text: |
      This includes Individual Screenings, Total Screenings and Individuals Referred for the top 10 priority diseases<br>

      <br><li>Individual Screenings:</li><br>
      This includes the count of people who got screened (only once even he/she got screened multiple times)<br><br>

      <li>Total Screenings:</li><br>
      Count of total screenings of members who got screened (even if there are multiple screenings per member)<br><br>

      <li>Individuals Referred:</li><br>
      Count of members with referral place id's (only once even if there are multiple referral place id's per member)
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 3
    col: 0
    width: 24
    height: 6
  - title: Role based Screening
    name: Role based Screening
    model: tnphr
    explore: family_member_master
    type: looker_bar
    fields: [health_screening.role_name, health_screening.screening_count]
    filters:
      family_master.last_update_date: ''
      health_screening.toggle_IR: ''
      drugs_and_services.health_screening_last_update_date: ''
    sorts: [health_screening.screening_count desc]
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
      health_screening.screening_count: "#E8710A"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: This populates the count of total screenings of members who got screened
      (even if there are multiple screenings per member) by role names
    listen:
      Districts: family_member_master.district_name
      HUDs: family_member_master.hud_name
      Blocks: family_member_master.block_name
      Toggle Role: health_screening.role_toggle
      Last Update Date: health_screening.last_update_date
      Directorate Name: facility_directorate_master.directorate_name
      Role Name: health_screening.role_name
    row: 30
    col: 0
    width: 24
    height: 19
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
    explore: facility_registry
    listens_to_filters: []
    field: facility_directorate_master.directorate_name
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
      - Assistant Program Manager - APM
      - Auxilary Nurse Midwife - ANM
      - Block Medical Officer - BMO
      - Chief Medical Officer
      - Community Volunteers
      - DDHS Admin
      - Consultant
      - DME Coordinator
      - DMS Coordinator
      - DPO NCD
      - Data Base Admin
      - Data Entry Opertor
      - Dental Assistant
      - Dental Surgeon
      - District Training Team Medical Officer - DTTMO
      - District Epidemiologist
      - Field Staff (Mazdoor)
      - Field Worker
      - HUD Admin
      - Health Inspector
      - Health Officer
      - ICTC Counsellor
      - Lab Technician
      - MMU Cleaner
      - Mass Interviewer
      - Medical Officer
      - Mentor Staff Nurse
      - Mid Level Health Provider
      - Multi Purpose Worker-Male
      - Municipality Health Officer
      - NCD Staff Nurse
      - Non Medical Supervisor -NMS
      - PHR Staff
      - Palliative Staff Nurse
      - Pharmacist
      - Physiotherapist
      - RBSK MO
      - RCH Staff Nurse
      - School Medical Officer
      - Sector Health Nurse-SHN
      - Staff Nurse
      - State Supervisor
      - Statistical Assistant
      - Urban Health Nurse
      - Urban PHC MO
      - Village Health Nurse (Regular)
      - Volunteer
      - Women Health Volunteer
    model: tnphr
    explore: family_member_master
    listens_to_filters: []
    field: health_screening.role_name
