- dashboard: uhc_monitoring_dashboard_v2_1_0
  title: UHC Monitoring Dashboard v2.1.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: tXcKZhecR7UcwYduPZ4Hbv
  elements:
  - name: "<center><H1> Hypertention</H1></center>"
    type: text
    title_text: "<center><H1> Hypertention</H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 3
    col: 0
    width: 24
    height: 2
  - name: "<center><H1> Diabetes Mellitus </H1></center>"
    type: text
    title_text: "<center><H1> Diabetes Mellitus </H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 9
    col: 0
    width: 24
    height: 2
  - name: "<center><H1> CA Cx</H1></center>"
    type: text
    title_text: "<center><H1> CA Cx</H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 27
    col: 0
    width: 24
    height: 2
  - name: "<center><H1> CA Br</H1></center>"
    type: text
    title_text: "<center><H1> CA Br</H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 33
    col: 0
    width: 24
    height: 3
  - name: "<center><H1> Physiotherapy </H1></center>"
    type: text
    title_text: "<center><H1> Physiotherapy </H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 15
    col: 0
    width: 24
    height: 2
  - name: "<center><H1> Palliative Care</H1></center>"
    type: text
    title_text: "<center><H1> Palliative Care</H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 21
    col: 0
    width: 12
    height: 2
  - name: "<center><H1>CAPD Bags</H1></center>"
    type: text
    title_text: "<center><H1>CAPD Bags</H1></center>"
    subtitle_text: ''
    body_text: <body bgcolor="#a4bced"> </body>
    row: 21
    col: 12
    width: 12
    height: 2
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
  - title: Total screened
    name: Total screened
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings, screening.till_prev_day_screening_count]
    filters:
      screening.citizen_ht_status: Known HT,Normal,Suspected hypertension
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Total_screenings}-${screening.till_prev_day_screening_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Screened count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_screening_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 5
    col: 0
    width: 6
    height: 4
  - title: Total Suspected
    name: Total Suspected
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.suspected_Hypertension, screening.till_prev_day_suspected_count]
    filters:
      screening.citizen_ht_status: Suspected hypertension
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.suspected_Hypertension}-${screening.till_prev_day_suspected_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Suspected count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_suspected_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 5
    col: 6
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.till_prev_day_confirmed_count, screening.Confirmed_Hypertension_no_html]
    filters:
      screening.citizen_ht_status: Known HT
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Confirmed_Hypertension_no_html}-${screening.till_prev_day_confirmed_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Confirmed count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_confirmed_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 5
    col: 12
    width: 6
    height: 4
  - title: Total screened
    name: Total screened (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings, screening.till_prev_day_screening_count]
    filters:
      screening.citizen_dm_status: Normal,Suspected DM,Low blood sugar,Known DM,DM
        under control,Uncontrolled DM
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Total_screenings}-${screening.till_prev_day_screening_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Screened count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#85c0de",
        font_color: !!null '', color_application: {collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5,
          palette_id: 35e9e067-0bf1-479b-88b2-b05622c0096d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_screening_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 11
    col: 0
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.till_prev_day_confirmed_count, screening.Confirmed_Diabetes_mellitus_no_html]
    filters:
      screening.citizen_dm_status: Known DM
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Confirmed_Diabetes_mellitus_no_html}-${screening.till_prev_day_confirmed_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Confirmed count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#85c0de",
        font_color: !!null '', color_application: {collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5,
          palette_id: 35e9e067-0bf1-479b-88b2-b05622c0096d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_confirmed_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 11
    col: 12
    width: 6
    height: 4
  - title: Total Suspected
    name: Total Suspected (2)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.till_prev_day_suspected_count, screening.suspected_Diabetes]
    filters:
      screening.citizen_dm_status: Suspected DM
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.suspected_Diabetes}-${screening.till_prev_day_suspected_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Suspected count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#85c0de",
        font_color: !!null '', color_application: {collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5,
          palette_id: 35e9e067-0bf1-479b-88b2-b05622c0096d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_suspected_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 11
    col: 6
    width: 6
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.no_of_Physiotherapy_MTM_beneficiaries_received_drugs,
      mtm_beneficiary.till_prev_day_Drugs_count_physiotherapy]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.no_of_Physiotherapy_MTM_beneficiaries_received_drugs}-${mtm_beneficiary.till_prev_day_Drugs_count_physiotherapy}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_Drugs_count_physiotherapy]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 17
    col: 12
    width: 6
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (2)
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.no_of_dialysis_capd_MTM_beneficiaries_received_drugs,
      mtm_beneficiary.till_prev_day_Drugs_count_dialysis_capd]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.no_of_dialysis_capd_MTM_beneficiaries_received_drugs}-${mtm_beneficiary.till_prev_day_Drugs_count_dialysis_capd}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#AEC8C1",
        font_color: "#070708", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_Drugs_count_dialysis_capd]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 23
    col: 18
    width: 6
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (3)
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.no_of_Palliative_care_MTM_beneficiaries_received_drugs,
      mtm_beneficiary.till_prev_day_Drugs_count_palliative_care]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.no_of_Palliative_care_MTM_beneficiaries_received_drugs}-${mtm_beneficiary.till_prev_day_Drugs_count_palliative_care}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d9befa",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_Drugs_count_palliative_care]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 23
    col: 6
    width: 6
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (4)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.total_drugs_count, screening.till_prev_day_Drugs_count]
    filters:
      screening.citizen_ht_status: Known HT,Normal,Suspected hypertension
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.total_drugs_count}-${screening.till_prev_day_Drugs_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#7CB342",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_Drugs_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 5
    col: 18
    width: 6
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (5)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.total_drugs_count, screening.till_prev_day_Drugs_count]
    filters:
      screening.citizen_dm_status: DM under control,Known DM,Low blood sugar,Normal,Suspected
        DM,Uncontrolled DM
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.total_drugs_count}-${screening.till_prev_day_Drugs_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#85c0de",
        font_color: !!null '', color_application: {collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5,
          palette_id: 35e9e067-0bf1-479b-88b2-b05622c0096d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_Drugs_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 11
    col: 18
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (3)
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio, mtm_beneficiary.till_prev_day_total_confirmed_Physiotherapy]
    sorts: [mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio desc]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.total_confirmed_MTM_beneficiary_Physio}-${mtm_beneficiary.till_prev_day_total_confirmed_Physiotherapy}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_total_confirmed_Physiotherapy]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 17
    col: 6
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (4)
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative, mtm_beneficiary.till_prev_day_total_confirmed_Palliative]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.total_confirmed_MTM_beneficiary_Palliative}-${mtm_beneficiary.till_prev_day_total_confirmed_Palliative}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    comparison_label: Confirmed Count
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d9befa",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_total_confirmed_Palliative]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 23
    col: 0
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (5)
    model: tnphr-prod-kpi
    explore: mtm_beneficiary
    type: single_value
    fields: [mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD, mtm_beneficiary.till_prev_day_total_confirmed_CAPD]
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${mtm_beneficiary.total_confirmed_MTM_beneficiary_CAPD}-${mtm_beneficiary.till_prev_day_total_confirmed_CAPD}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
        font_color: "#020203", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mtm_beneficiary.till_prev_day_total_confirmed_CAPD]
    listen:
      Community Village: mtm_beneficiary.citizen_village_name
      Community Block: mtm_beneficiary.citizen_block_name
      Community Hud: mtm_beneficiary.citizen_hud_name
      Community Block Type: mtm_beneficiary.citizen_block_type
      Institution Hud: mtm_beneficiary.user_hud_name
      Institution Block: mtm_beneficiary.user_block_name
      Institution District: mtm_beneficiary.user_district_name
      Community District: mtm_beneficiary.citizen_district_name
      Date: mtm_beneficiary.mtm_start_date
    row: 23
    col: 12
    width: 6
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (6)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Confirmed_cervical_cancer, screening.till_prev_day_confirmed_count]
    filters:
      screening.is_cervical_cancer: confirmed cervial cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Confirmed_cervical_cancer}-${screening.till_prev_day_confirmed_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#fcc1e1",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_confirmed_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 29
    col: 8
    width: 8
    height: 4
  - title: Total screened
    name: Total screened (3)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.till_prev_day_screening_count, screening.Total_screenings]
    filters:
      screening.is_cervical_cancer: No cervial cancer,confirmed cervial cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Total_screenings}-${screening.till_prev_day_screening_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#fcc1e1",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_screening_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 29
    col: 0
    width: 8
    height: 4
  - title: Total screened
    name: Total screened (4)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Total_screenings, screening.till_prev_day_screening_count]
    filters:
      screening.is_breast_cancer: No breast cancer,confirmed breast cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Total_screenings}-${screening.till_prev_day_screening_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_screening_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 36
    col: 0
    width: 8
    height: 4
  - title: Total Confirmed
    name: Total Confirmed (7)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.Confirmed_breast_cancer, screening.till_prev_day_confirmed_count]
    filters:
      screening.is_breast_cancer: confirmed breast cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.Confirmed_breast_cancer}-${screening.till_prev_day_confirmed_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_confirmed_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 36
    col: 8
    width: 8
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (6)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.total_drugs_count, screening.till_prev_day_Drugs_count]
    filters:
      screening.is_cervical_cancer: confirmed cervial cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.total_drugs_count}-${screening.till_prev_day_Drugs_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#fcc1e1",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_Drugs_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 29
    col: 16
    width: 8
    height: 4
  - title: Total Drugs Issued
    name: Total Drugs Issued (7)
    model: tnphr-prod-kpi
    explore: screening
    type: single_value
    fields: [screening.total_drugs_count, screening.till_prev_day_Drugs_count]
    filters:
      screening.is_breast_cancer: confirmed breast cancer
    limit: 500
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${screening.total_drugs_count}-${screening.till_prev_day_Drugs_count}",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    comparison_label: Drugs Issued
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FD9577",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [screening.till_prev_day_Drugs_count]
    listen:
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    row: 36
    col: 16
    width: 8
    height: 4
  - name: Hud Wise
    title: Hud Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.Population_age_gt_30, population.citizen_hud_name,
        population.citizen_hud_gid]
      filters:
        population.citizen_district_gid: NOT NULL
        population.citizen_hud_gid: NOT NULL
      sorts: [population.total_population desc]
      limit: 5000
      dynamic_fields: [{table_calculation: expected_ht, label: Expected HT %, expression: 'concat(33.9,"%")',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html,
        screening.unique_screenings_gt_30, screening.citizen_district_gid, screening.citizen_hud_gid]
      filters:
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
      sorts: [screening.suspected_Hypertension desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.total_drugs_count, screening.citizen_district_gid, screening.citizen_hud_gid]
      filters:
        screening.citizen_ht_status: Known HT
        screening.screened_date: 4 weeks
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
      sorts: [screening.total_drugs_count desc]
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.total_population,
      population.Population_age_gt_30, unique_screenings_30_and_above, individual_screened_among_30,
      expected_ht, suspected_hypertension, screening.Confirmed_Hypertension_no_html,
      confirmed_hypertension, drugs_issued_among_confirmed_ht_in_last_4_weeks]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      screening.suspected_Hypertension: Suspected Hypertension
      screening.Confirmed_Hypertension_no_html: Confirmed Hypertension
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
    series_column_widths:
      population.citizen_district_gid: 200
      population.citizen_district_name: 200
      population.total_population: 200
      population.Population_age_gt_30: 200
      screening.suspected_Hypertension: 200
      screening.unique_screenings_gt_30: 200
      individual_screened: 200
      individual_screened_among_30: 200
      screening.Confirmed_Hypertension_no_html: 200
      expected_ht: 200
      screening.total_drugs_count: 200
      drugs_issued_among_confirmed_ht_in_last_4_weeks: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      unique_screenings_30_and_above: 200
      suspected_hypertension: 200
      confirmed_hypertension: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      expected_ht:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      screening.suspected_Hypertension:
        align: center
      individual_screened:
        align: center
      individual_screened_among_30:
        align: center
      screening.Confirmed_Hypertension_no_html:
        align: center
      screening.total_drugs_count:
        align: center
      drugs_issued_among_confirmed_ht_in_last_4_weeks:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      unique_screenings_30_and_above:
        align: center
      suspected_hypertension:
        align: center
      confirmed_hypertension:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
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
        label: Population Population>=30
        label_from_parameter:
        label_short: Population>=30
        map_layer:
        name: population.Population_age_gt_30
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Population>=30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Population_age_gt_30
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=380"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_age
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
        label: Screening Suspected Hypertension
        label_from_parameter:
        label_short: Suspected Hypertension
        map_layer:
        name: screening.suspected_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Suspected Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.suspected_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=971"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: 'coalesce(${TABLE}.total_screening_count,0) '
        sql_case:
        filters:
        - field: screening.citizen_ht_status
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
        label: Screening Confirmed Hypertension No HTML
        label_from_parameter:
        label_short: Confirmed Hypertension No HTML
        map_layer:
        name: screening.Confirmed_Hypertension_no_html
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_no_html
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=977"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=536"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Screening Total Drugs Count
        label_from_parameter:
        label_short: Total Drugs Count
        map_layer:
        name: screening.total_drugs_count
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
        field_group_variant: Total Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.total_drugs_count
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=1024"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_drug_delivered
          condition: 'yes'
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=87"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=81"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=117"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=111"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_hud_gid "
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
      - label: Individual screened % among 30+
        name: individual_screened_among_30
        expression: |2

          if(${unique_screenings_30_and_above}=0,"0%",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),"%"))
        can_pivot: true
        sortable: true
        type: string
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
      - label: Drugs issued among Confirmed HT in last 4 weeks
        name: drugs_issued_among_confirmed_ht_in_last_4_weeks
        expression: if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Unique Screenings (30 and above)
        name: unique_screenings_30_and_above
        expression: if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Suspected Hypertension
        name: suspected_hypertension
        expression: if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Confirmed Hypertension '
        name: confirmed_hypertension
        expression: if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)
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
    hidden_fields: [screening.total_drugs_count, screening.unique_screenings_gt_30,
      screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "\nif(${unique_screenings_30_and_above}=0,\"\
          0%\",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),\"\
          %\"))\n", label: Individual screened % among 30+, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: individual_screened_among_30,
        _type_hint: string}, {category: table_calculation, expression: 'if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)',
        label: Drugs issued among Confirmed HT in last 4 weeks, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_issued_among_confirmed_ht_in_last_4_weeks,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)',
        label: Unique Screenings (30 and above), value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: unique_screenings_30_and_above, _type_hint: number}, {
        category: table_calculation, expression: 'if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)',
        label: Suspected Hypertension, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: suspected_hypertension,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)',
        label: 'Confirmed Hypertension ', value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: confirmed_hypertension, _type_hint: number}]
    listen:
    - Community Village: population.citizen_village_name
      Community Block: population.citizen_block_name
      Community Hud: population.citizen_hud_name
      Community Block Type: population.citizen_block_type
      Community District: population.citizen_district_name
      Date: population.citizen_created_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
    row: 50
    col: 0
    width: 24
    height: 6
  - name: Block Wise
    title: Block Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.Population_age_gt_30, population.citizen_hud_name,
        population.citizen_hud_gid, population.citizen_block_name, population.citizen_block_gid]
      filters:
        population.citizen_district_gid: NOT NULL
        population.citizen_hud_gid: NOT NULL
        population.citizen_block_gid: NOT NULL
      sorts: [population.total_population desc]
      limit: 5000
      dynamic_fields: [{table_calculation: expected_ht, label: Expected HT %, expression: 'concat(33.9,"%")',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html,
        screening.unique_screenings_gt_30, screening.citizen_hud_gid, screening.citizen_district_gid,
        screening.citizen_block_gid]
      filters:
        screening.citizen_hud_gid: NOT NULL
        screening.citizen_district_gid: NOT NULL
        screening.citizen_block_gid: NOT NULL
      limit: 5000
      join_fields:
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_block_gid
        source_field_name: population.citizen_block_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.total_drugs_count, screening.citizen_block_gid, screening.citizen_district_gid,
        screening.citizen_hud_gid]
      filters:
        screening.citizen_ht_status: Known HT
        screening.screened_date: 4 weeks
        screening.citizen_district_gid: NOT NULL
        screening.citizen_block_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
      sorts: [screening.total_drugs_count desc]
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: screening.citizen_block_gid
        source_field_name: population.citizen_block_gid
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.total_population, population.Population_age_gt_30,
      unique_screenings_30_and_above, individual_screened_among_30, expected_ht, suspected_hypertension,
      confirmed_hypertension, drugs_issued_among_confirmed_ht_in_last_4_weeks]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      screening.suspected_Hypertension: Suspected Hypertension
      screening.Confirmed_Hypertension_no_html: Confirmed Hypertension
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
    series_column_widths:
      population.citizen_district_gid: 200
      population.citizen_district_name: 200
      population.total_population: 200
      population.Population_age_gt_30: 200
      screening.suspected_Hypertension: 200
      screening.unique_screenings_gt_30: 200
      individual_screened: 200
      individual_screened_among_30: 200
      screening.Confirmed_Hypertension_no_html: 200
      expected_ht: 200
      screening.total_drugs_count: 200
      drugs_issued_among_confirmed_ht_in_last_4_weeks: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      unique_screenings_30_and_above: 200
      suspected_hypertension: 200
      confirmed_hypertension: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      expected_ht:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      screening.suspected_Hypertension:
        align: center
      individual_screened:
        align: center
      individual_screened_among_30:
        align: center
      screening.Confirmed_Hypertension_no_html:
        align: center
      screening.total_drugs_count:
        align: center
      drugs_issued_among_confirmed_ht_in_last_4_weeks:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      unique_screenings_30_and_above:
        align: center
      suspected_hypertension:
        align: center
      confirmed_hypertension:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
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
        label: Population Population>=30
        label_from_parameter:
        label_short: Population>=30
        map_layer:
        name: population.Population_age_gt_30
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Population>=30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Population_age_gt_30
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=380"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_age
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
        label: Screening Suspected Hypertension
        label_from_parameter:
        label_short: Suspected Hypertension
        map_layer:
        name: screening.suspected_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Suspected Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.suspected_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=971"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: 'coalesce(${TABLE}.total_screening_count,0) '
        sql_case:
        filters:
        - field: screening.citizen_ht_status
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
        label: Screening Confirmed Hypertension No HTML
        label_from_parameter:
        label_short: Confirmed Hypertension No HTML
        map_layer:
        name: screening.Confirmed_Hypertension_no_html
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_no_html
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=977"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=536"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Screening Total Drugs Count
        label_from_parameter:
        label_short: Total Drugs Count
        map_layer:
        name: screening.total_drugs_count
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
        field_group_variant: Total Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.total_drugs_count
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=1024"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_drug_delivered
          condition: 'yes'
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=87"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=81"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=117"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=111"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: population.citizen_block_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: population.citizen_block_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_block_gid "
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
      - label: Individual screened % among 30+
        name: individual_screened_among_30
        expression: |2

          if(${unique_screenings_30_and_above}=0,"0%",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),"%"))
        can_pivot: true
        sortable: true
        type: string
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
      - label: Drugs issued among Confirmed HT in last 4 weeks
        name: drugs_issued_among_confirmed_ht_in_last_4_weeks
        expression: if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Unique Screenings (30 and above)
        name: unique_screenings_30_and_above
        expression: if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Suspected Hypertension
        name: suspected_hypertension
        expression: if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Confirmed Hypertension '
        name: confirmed_hypertension
        expression: if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)
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
    hidden_fields: [screening.total_drugs_count, screening.unique_screenings_gt_30,
      screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "\nif(${unique_screenings_30_and_above}=0,\"\
          0%\",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),\"\
          %\"))\n", label: Individual screened % among 30+, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: individual_screened_among_30,
        _type_hint: string}, {category: table_calculation, expression: 'if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)',
        label: Drugs issued among Confirmed HT in last 4 weeks, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_issued_among_confirmed_ht_in_last_4_weeks,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)',
        label: Unique Screenings (30 and above), value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: unique_screenings_30_and_above, _type_hint: number}, {
        category: table_calculation, expression: 'if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)',
        label: Suspected Hypertension, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: suspected_hypertension,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)',
        label: 'Confirmed Hypertension ', value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: confirmed_hypertension, _type_hint: number}]
    listen:
    - Community Village: population.citizen_village_name
      Community Block: population.citizen_block_name
      Community Hud: population.citizen_hud_name
      Community Block Type: population.citizen_block_type
      Community District: population.citizen_district_name
      Date: population.citizen_created_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
    row: 56
    col: 0
    width: 24
    height: 6
  - name: Village Wise
    title: Village Wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_gid, population.total_population, population.Population_age_gt_30,
        population.citizen_hud_gid, population.citizen_block_gid, population.citizen_village_gid,
        population.citizen_block_name, population.citizen_district_name, population.citizen_hud_name,
        population.citizen_village_name]
      filters:
        population.citizen_district_gid: NOT NULL
        population.citizen_hud_gid: NOT NULL
        population.citizen_block_gid: NOT NULL
        population.citizen_village_gid: NOT NULL
      sorts: [population.total_population desc]
      limit: 5000
      dynamic_fields: [{table_calculation: expected_ht, label: Expected HT %, expression: 'concat(33.9,"%")',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html,
        screening.unique_screenings_gt_30, screening.citizen_block_gid, screening.citizen_district_gid,
        screening.citizen_hud_gid, screening.citizen_village_gid]
      filters:
        screening.citizen_block_gid: NOT NULL
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
        screening.citizen_village_gid: NOT NULL
      limit: 5000
      join_fields:
      - field_name: screening.citizen_block_gid
        source_field_name: population.citizen_block_gid
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
      - field_name: screening.citizen_village_gid
        source_field_name: population.citizen_village_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.total_drugs_count, screening.citizen_block_gid, screening.citizen_district_gid,
        screening.citizen_hud_gid, screening.citizen_village_gid]
      filters:
        screening.citizen_ht_status: Known HT
        screening.screened_date: 4 weeks
        screening.citizen_block_gid: NOT NULL
        screening.citizen_district_gid: NOT NULL
        screening.citizen_hud_gid: NOT NULL
        screening.citizen_village_gid: NOT NULL
      sorts: [screening.total_drugs_count desc]
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: screening.citizen_block_gid
        source_field_name: population.citizen_block_gid
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
      - field_name: screening.citizen_hud_gid
        source_field_name: population.citizen_hud_gid
      - field_name: screening.citizen_village_gid
        source_field_name: population.citizen_village_gid
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.citizen_hud_name, population.citizen_hud_gid, population.citizen_block_name,
      population.citizen_block_gid, population.citizen_village_name, population.citizen_village_gid,
      population.total_population, population.Population_age_gt_30, unique_screenings_30_and_above,
      individual_screened_among_30, expected_ht, suspected_hypertension, confirmed_hypertension,
      drugs_issued_among_confirmed_ht_in_last_4_weeks]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      screening.suspected_Hypertension: Suspected Hypertension
      screening.Confirmed_Hypertension_no_html: Confirmed Hypertension
      population.citizen_hud_name: Community HUD
      population.citizen_hud_gid: Community HUD Gid
      population.citizen_block_name: Community Block
      population.citizen_block_gid: Community Block Gid
      population.citizen_village_name: Community Village
      population.citizen_village_gid: Community Village Gid
    series_column_widths:
      population.citizen_district_gid: 200
      population.citizen_district_name: 200
      population.total_population: 200
      population.Population_age_gt_30: 200
      screening.suspected_Hypertension: 200
      screening.unique_screenings_gt_30: 200
      individual_screened: 200
      individual_screened_among_30: 200
      screening.Confirmed_Hypertension_no_html: 200
      expected_ht: 200
      screening.total_drugs_count: 200
      drugs_issued_among_confirmed_ht_in_last_4_weeks: 200
      population.citizen_hud_name: 200
      population.citizen_hud_gid: 200
      population.citizen_block_name: 200
      population.citizen_block_gid: 200
      population.citizen_village_name: 200
      population.citizen_village_gid: 200
      unique_screenings_30_and_above: 200
      suspected_hypertension: 200
      confirmed_hypertension: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      expected_ht:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      screening.suspected_Hypertension:
        align: center
      individual_screened:
        align: center
      individual_screened_among_30:
        align: center
      screening.Confirmed_Hypertension_no_html:
        align: center
      screening.total_drugs_count:
        align: center
      drugs_issued_among_confirmed_ht_in_last_4_weeks:
        align: center
      population.citizen_hud_name:
        align: center
      population.citizen_hud_gid:
        align: center
      population.citizen_block_name:
        align: center
      population.citizen_block_gid:
        align: center
      population.citizen_village_name:
        align: center
      population.citizen_village_gid:
        align: center
      unique_screenings_30_and_above:
        align: center
      suspected_hypertension:
        align: center
      confirmed_hypertension:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
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
        label: Population Population>=30
        label_from_parameter:
        label_short: Population>=30
        map_layer:
        name: population.Population_age_gt_30
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Population>=30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Population_age_gt_30
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=380"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_age
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
        label: Screening Suspected Hypertension
        label_from_parameter:
        label_short: Suspected Hypertension
        map_layer:
        name: screening.suspected_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Suspected Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.suspected_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=971"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: 'coalesce(${TABLE}.total_screening_count,0) '
        sql_case:
        filters:
        - field: screening.citizen_ht_status
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
        label: Screening Confirmed Hypertension No HTML
        label_from_parameter:
        label_short: Confirmed Hypertension No HTML
        map_layer:
        name: screening.Confirmed_Hypertension_no_html
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Confirmed Hypertension No HTML
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.Confirmed_Hypertension_no_html
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=977"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Known HT%"
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
        label: Screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=536"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Screening Total Drugs Count
        label_from_parameter:
        label_short: Total Drugs Count
        map_layer:
        name: screening.total_drugs_count
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
        field_group_variant: Total Drugs Count
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.total_drugs_count
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=1024"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_drug_delivered
          condition: 'yes'
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=87"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=81"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Name
        label_from_parameter:
        label_short: Citizen Hud Name
        map_layer:
        name: population.citizen_hud_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=117"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Hud Gid
        label_from_parameter:
        label_short: Citizen Hud Gid
        map_layer:
        name: population.citizen_hud_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Hud Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_hud_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=111"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Block Name
        label_from_parameter:
        label_short: Citizen Block Name
        map_layer:
        name: population.citizen_block_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=16"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Block Gid
        label_from_parameter:
        label_short: Citizen Block Gid
        map_layer:
        name: population.citizen_block_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Block Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_block_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=10"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Village Name
        label_from_parameter:
        label_short: Citizen Village Name
        map_layer:
        name: population.citizen_village_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=170"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen Village Gid
        label_from_parameter:
        label_short: Citizen Village Gid
        map_layer:
        name: population.citizen_village_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen Village Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_village_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=164"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_village_gid "
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
      - label: Individual screened % among 30+
        name: individual_screened_among_30
        expression: |2

          if(${unique_screenings_30_and_above}=0,"0%",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),"%"))
        can_pivot: true
        sortable: true
        type: string
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
      - label: Drugs issued among Confirmed HT in last 4 weeks
        name: drugs_issued_among_confirmed_ht_in_last_4_weeks
        expression: if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Unique Screenings (30 and above)
        name: unique_screenings_30_and_above
        expression: if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0"
        is_numeric: true
      - label: Suspected Hypertension
        name: suspected_hypertension
        expression: if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)
        can_pivot: true
        sortable: true
        type: number
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
        is_numeric: true
      - label: 'Confirmed Hypertension '
        name: confirmed_hypertension
        expression: if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)
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
    hidden_fields: [screening.total_drugs_count, screening.unique_screenings_gt_30,
      screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html]
    hide_totals: false
    hide_row_totals: false
    dynamic_fields: [{category: table_calculation, expression: "\nif(${unique_screenings_30_and_above}=0,\"\
          0%\",concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),\"\
          %\"))\n", label: Individual screened % among 30+, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: individual_screened_among_30,
        _type_hint: string}, {category: table_calculation, expression: 'if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)',
        label: Drugs issued among Confirmed HT in last 4 weeks, value_format: "[>9999999]##\\\
          ,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: drugs_issued_among_confirmed_ht_in_last_4_weeks,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.unique_screenings_gt_30}>0,${screening.unique_screenings_gt_30},0)',
        label: Unique Screenings (30 and above), value_format: "[>9999999]##\\,##\\\
          ,##\\,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: unique_screenings_30_and_above, _type_hint: number}, {
        category: table_calculation, expression: 'if(${screening.suspected_Hypertension}>0,${screening.suspected_Hypertension},0)',
        label: Suspected Hypertension, value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\\
          ,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure, table_calculation: suspected_hypertension,
        _type_hint: number}, {category: table_calculation, expression: 'if(${screening.Confirmed_Hypertension_no_html}>0,${screening.Confirmed_Hypertension_no_html},0)',
        label: 'Confirmed Hypertension ', value_format: "[>9999999]##\\,##\\,##\\\
          ,##0;[>99999]##\\,##\\,##0;##,##0", value_format_name: !!null '', _kind_hint: measure,
        table_calculation: confirmed_hypertension, _type_hint: number}]
    listen:
    - Community Village: population.citizen_village_name
      Community Block: population.citizen_block_name
      Community Hud: population.citizen_hud_name
      Community Block Type: population.citizen_block_type
      Community District: population.citizen_district_name
      Date: population.citizen_created_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    - Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Community Hud: screening.citizen_hud_name
      Community Block Type: screening.citizen_block_type
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Community District: screening.citizen_district_name
    row: 62
    col: 0
    width: 24
    height: 6
  - title: Weekly Target Facility Wise
    name: Weekly Target Facility Wise
    model: tnphr-prod-kpi
    explore: screening
    type: looker_grid
    fields: [screening.user_district_name, screening.user_district_gid, screening.user_facility_name,
      screening.user_category_name, screening.Total_screenings, screening.user_hud_name,
      screening.user_hud_gid, screening.user_block_name, screening.user_block_gid]
    filters:
      screening.user_category_name: Rural HSC,Rural PHC,Urban PHC
      screening.screened_week: 4 weeks
    sorts: [screening.user_district_name, screening.user_category_name]
    limit: 5000
    dynamic_fields: [{table_calculation: average_screenings_in_past_4_weeks, label: Average
          screenings in past 4 weeks, expression: "${screening.Total_screenings}/4",
        value_format: "[>9999999]##\\,##\\,##\\,##0;[>99999]##\\,##\\,##0;##,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", screening.user_district_name, screening.user_district_gid,
      screening.user_hud_name, screening.user_hud_gid, screening.user_block_name,
      screening.user_block_gid, screening.user_facility_name, screening.user_category_name,
      average_screenings_in_past_4_weeks]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      screening.user_district_name: Institution District
      screening.user_district_gid: Institution District Gid
      screening.user_facility_name: Institution Facility
      screening.user_category_name: Institution Category
      screening.user_hud_name: Institution Hud
      screening.user_hud_gid: Institution Hud Gid
      screening.user_block_name: Institution Block
      screening.user_block_gid: Institution Block Gid
    series_column_widths:
      screening.user_district_name: 200
      screening.user_district_gid: 200
      screening.user_facility_name: 200
      average_screenings_in_past_4_weeks: 200
      screening.user_category_name: 200
      screening.user_hud_name: 200
      screening.user_hud_gid: 200
      screening.user_block_gid: 200
      screening.user_block_name: 200
    series_text_format:
      screening.user_district_name:
        align: center
      screening.user_district_gid:
        align: center
      screening.user_facility_name:
        align: center
      average_screenings_in_past_4_weeks:
        align: center
      screening.user_category_name:
        align: center
      screening.user_hud_name:
        align: center
      screening.user_hud_gid:
        align: center
      screening.user_block_name:
        align: center
      screening.user_block_gid:
        align: center
    header_font_color: "#fffef4"
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
    hidden_fields: [screening.Total_screenings]
    listen:
      Institution Hud: screening.user_hud_name
      Institution Block: screening.user_block_name
      Institution District: screening.user_district_name
      Date: screening.screened_date
    row: 68
    col: 0
    width: 24
    height: 7
  - name: District wise
    title: District wise
    merged_queries:
    - model: tnphr-prod-kpi
      explore: population
      type: table
      fields: [population.citizen_district_name, population.citizen_district_gid,
        population.total_population, population.Population_age_gt_30]
      filters:
        population.citizen_district_gid: NOT NULL
      sorts: [population.total_population desc]
      limit: 5000
      dynamic_fields: [{table_calculation: expected_ht, label: Expected HT %, expression: 'concat(33.9,"%")',
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          _type_hint: string}]
    - model: tnphr-prod-kpi
      explore: screening
      type: table
      fields: [screening.suspected_Hypertension, screening.Confirmed_Hypertension_no_html,
        screening.unique_screenings_gt_30, screening.citizen_district_gid]
      filters:
        screening.citizen_district_gid: NOT NULL
      sorts: [screening.suspected_Hypertension desc]
      limit: 5000
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
    - model: tnphr-prod-kpi
      explore: screening
      type: looker_grid
      fields: [screening.total_drugs_count, screening.citizen_district_name, screening.citizen_district_gid]
      filters:
        screening.citizen_ht_status: Known HT
        screening.screened_date: 4 weeks
        screening.citizen_district_gid: NOT NULL
      sorts: [screening.total_drugs_count desc]
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
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      defaults_version: 1
      series_types: {}
      join_fields:
      - field_name: screening.citizen_district_gid
        source_field_name: population.citizen_district_gid
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", population.citizen_district_name, population.citizen_district_gid,
      population.total_population, population.Population_age_gt_30, screening.unique_screenings_gt_30,
      individual_screened_among_30, expected_ht, screening.suspected_Hypertension]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      population.citizen_district_name: Community District
      population.citizen_district_gid: Community District Gid
      screening.suspected_Hypertension: Suspected Hypertension
      screening.Confirmed_Hypertension_no_html: Confirmed Hypertension
    series_column_widths:
      population.citizen_district_gid: 200
      population.citizen_district_name: 200
      population.total_population: 200
      population.Population_age_gt_30: 200
      screening.suspected_Hypertension: 200
      screening.unique_screenings_gt_30: 200
      individual_screened: 200
      individual_screened_among_30: 200
      screening.Confirmed_Hypertension_no_html: 200
      expected_ht: 200
      screening.total_drugs_count: 200
      drugs_issued_among_confirmed_ht_in_last_4_weeks: 200
    series_cell_visualizations:
      population.total_population:
        is_active: false
    series_text_format:
      population.citizen_district_name:
        align: center
      population.citizen_district_gid:
        align: center
      expected_ht:
        align: center
      population.total_population:
        align: center
      population.Population_age_gt_30:
        align: center
      screening.unique_screenings_gt_30:
        align: center
      screening.suspected_Hypertension:
        align: center
      individual_screened:
        align: center
      individual_screened_among_30:
        align: center
      screening.Confirmed_Hypertension_no_html:
        align: center
      screening.total_drugs_count:
        align: center
      drugs_issued_among_confirmed_ht_in_last_4_weeks:
        align: center
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_font_color: "#fffefa"
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
        label: Population Total Population
        label_from_parameter:
        label_short: Total Population
        map_layer:
        name: population.total_population
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Total Population
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.total_population
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=359"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
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
        label: Population Population>=30
        label_from_parameter:
        label_short: Population>=30
        map_layer:
        name: population.Population_age_gt_30
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Population>=30
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.Population_age_gt_30
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=380"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.population_count "
        sql_case:
        filters:
        - field: population.citizen_age
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
        label: Screening Unique Screened (30 and above)
        label_from_parameter:
        label_short: Unique Screened (30 and above)
        map_layer:
        name: screening.unique_screenings_gt_30
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
        field_group_variant: Unique Screened (30 and above)
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.unique_screenings_gt_30
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=447"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.is_citizen_screened
          condition: new screening
        - field: screening.age_interval
          condition: 30 or Above
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
        label: Screening Suspected Hypertension
        label_from_parameter:
        label_short: Suspected Hypertension
        map_layer:
        name: screening.suspected_Hypertension
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: screening
        view_label: Screening
        dynamic: false
        week_start_day: monday
        original_view: screening
        dimension_group:
        error:
        field_group_variant: Suspected Hypertension
        measure: true
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: screening
        suggest_dimension: screening.suspected_Hypertension
        suggest_explore: screening
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fscreening.view.lkml?line=941"
        permanent: true
        source_file: tnphr_views/screening.view.lkml
        source_file_path: looker-tnphr/tnphr_views/screening.view.lkml
        sql: "${TABLE}.total_screening_count "
        sql_case:
        filters:
        - field: screening.citizen_ht_status
          condition: "%Suspected hypertension%"
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
        label: Population Citizen District Name
        label_from_parameter:
        label_short: Citizen District Name
        map_layer:
        name: population.citizen_district_name
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Name
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_name
        suggest_explore: population
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=87"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
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
        label: Population Citizen District Gid
        label_from_parameter:
        label_short: Citizen District Gid
        map_layer:
        name: population.citizen_district_gid
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
        view: population
        view_label: Population
        dynamic: false
        week_start_day: monday
        original_view: population
        dimension_group:
        error:
        field_group_variant: Citizen District Gid
        measure: false
        parameter: false
        primary_key: false
        project_name: looker-tnphr
        scope: population
        suggest_dimension: population.citizen_district_gid
        suggest_explore: population
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/looker-tnphr/files/tnphr_views%2Fpopulation.view.lkml?line=81"
        permanent: true
        source_file: tnphr_views/population.view.lkml
        source_file_path: looker-tnphr/tnphr_views/population.view.lkml
        sql: "${TABLE}.citizen_district_gid "
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
      - label: Individual screened % among 30+
        name: individual_screened_among_30
        expression: 'concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),"%")

          '
        can_pivot: true
        sortable: true
        type: string
        align: right
        measure: true
        is_table_calculation: true
        dynamic: true
        value_format:
      pivots: []
    hidden_fields: [screening.total_drugs_count, screening.citizen_district_name]
    dynamic_fields: [{category: table_calculation, expression: 'concat(round(${screening.unique_screenings_gt_30}/${population.Population_age_gt_30}*100,2),"%")

          ', label: Individual screened % among 30+, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: individual_screened_among_30, _type_hint: string},
      {category: table_calculation, expression: 'if(${screening.total_drugs_count}>0,${screening.total_drugs_count},0)',
        label: Drugs issued among Confirmed HT in last 4 weeks, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: drugs_issued_among_confirmed_ht_in_last_4_weeks,
        _type_hint: number}]
    listen:
    - Community District: population.citizen_district_name
      Date: population.citizen_created_date
    - Community Hud: screening.citizen_hud_name
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Institution District: screening.user_district_name
      Community Block Type: screening.citizen_block_type
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Community District: screening.citizen_district_name
      Date: screening.screened_date
    - Community Hud: screening.citizen_hud_name
      Community Village: screening.citizen_village_name
      Community Block: screening.citizen_block_name
      Institution District: screening.user_district_name
      Community Block Type: screening.citizen_block_type
      Institution Block: screening.user_block_name
      Institution Hud: screening.user_hud_name
      Community District: screening.citizen_district_name
    row: 40
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
    explore: screening
    listens_to_filters: [Community Block Type, Community Hud, Community Block, Community
        Village]
    field: screening.citizen_district_name
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
    explore: screening
    listens_to_filters: [Community Block Type, Community District, Community Block,
      Community Village]
    field: screening.citizen_hud_name
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
    explore: screening
    listens_to_filters: [Community Block Type, Community District, Community Hud,
      Community Village]
    field: screening.citizen_block_name
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
    explore: screening
    listens_to_filters: [Community Block Type, Community District, Community Hud,
      Community Block]
    field: screening.citizen_village_name
  - name: Community Block Type
    title: Community Block Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: tnphr-prod-kpi
    explore: screening
    listens_to_filters: [Community District, Community Hud, Community Block, Community
        Village]
    field: screening.citizen_block_type
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
    listens_to_filters: [Institution Hud, Institution Block]
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
    listens_to_filters: [Institution District, Institution Block]
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
    listens_to_filters: [Institution District, Institution Hud]
    field: screening.user_block_name
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
    explore: screening
    listens_to_filters: []
    field: screening.screened_date
