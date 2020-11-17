- dashboard: business_pulse
  title: Business Pulse
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  query_timezone: user_timezone
  embed_style:
    background_color: "#f7f7f7"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    tile_separator_color: "#bdb7b7"
    tile_border_radius: 2
    show_tile_shadow: false
    text_tile_text_color: "#ffffff"
  elements:
  - title: Number of First Purchasers
    name: Number of First Purchasers
    model: thelook
    explore: order_items
    type: single_value
    fields: [users.count]
    filters:
      users.created_date: 7 days
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '10000', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: dimension, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size: medium
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    text_color: black
    single_value_title: New Users Acquired
    custom_color: forestgreen
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Average Order Sale Price
    name: Average Order Sale Price
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    filters: {}
    sorts: [orders.average_profit desc, order_items.average_sale_price desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: date, label: date, expression: now(), value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: forestgreen
    show_view_names: true
    font_size: medium
    text_color: black
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    series_types: {}
    hidden_fields: []
    y_axes: []
    defaults_version: 1
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
    note_state: expanded
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Orders by Day and Category
    name: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.count, order_items.created_date]
    pivots: [products.category]
    fill_fields: [order_items.created_date]
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts: [products.category, order_items.created_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: Number of Orders, orientation: left, series: [{id: Accessories
              - order_items.count, name: Accessories, axisId: order_items.count},
          {id: Blazers & Jackets - order_items.count, name: Blazers &amp; Jackets,
            axisId: order_items.count}, {id: Fashion Hoodies & Sweatshirts - order_items.count,
            name: Fashion Hoodies &amp; Sweatshirts, axisId: order_items.count}, {
            id: Pants - order_items.count, name: Pants, axisId: order_items.count},
          {id: Shorts - order_items.count, name: Shorts, axisId: order_items.count},
          {id: Sweaters - order_items.count, name: Sweaters, axisId: order_items.count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    y_axis_labels: ["# Order Items"]
    hide_legend: false
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    series_colors: {}
    x_axis_datetime_tick_count: 4
    x_axis_datetime: true
    hide_points: true
    hidden_fields: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 6
    col: 0
    width: 16
    height: 6
  - title: Website Visit Volume vs Conversion Rate
    name: Website Visit Volume vs Conversion Rate
    model: thelook
    explore: events
    type: looker_column
    fields: [events.event_day_of_week, events.sessions_count, events.unique_visitors,
      sessions.overall_conversion]
    filters: {}
    sorts: [events.event_day_of_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: events.unique_visitors,
            name: Unique Visitors}, {id: events.sessions_count, name: Sessions Count}]},
      {label: '', maxValue: !!null '', minValue: !!null '', orientation: right, showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: false, valueFormat: !!null '', series: [{id: sessions.overall_conversion,
            name: Conversion Rate}]}]
    colors: ["#1EA8DF", "#8ED3EF", "#B1A8C4", "#635189"]
    series_types:
      events.count: line
      events.unique_visitors: line
      events.sessions_count: line
    series_colors: {}
    series_labels:
      sessions.overall_conversion: Conversion Rate
      events.sessions_count: Total Visitors
    label_color: ["#EA8A2F", "#e9b404"]
    y_axis_orientation: [left, right]
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: events.event_date
      Country: users.country
    row: 26
    col: 0
    width: 10
    height: 7
  - title: Percent of Cohort Still Active by Traffic Source
    name: Percent of Cohort Still Active by Traffic Source
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.months_since_signup, users.count, users.traffic_source]
    pivots: [users.traffic_source]
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [order_items.months_since_signup, users.age_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: "${users.count} / max(${users.count})", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: []
    y_axis_max: ['50']
    y_axis_labels: [Percent of Cohort still Active]
    y_axis_value_format: "#\\%"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    series_colors: {}
    hidden_fields: [cumulative_lifetime_spend, order_items.total_sale_price, users.count]
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Location: distribution_centers.location
      Country: users.country
    row: 33
    col: 10
    width: 14
    height: 7
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_month_name, order_items.total_sale_price, order_items.created_year]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_name]
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 4 years
    sorts: [order_items.created_year desc 0, order_items.created_month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{id: '2018', name: '2018', axisId: order_items.total_sale_price},
          {id: '2017', name: '2017', axisId: order_items.total_sale_price}, {id: '2016',
            name: '2016', axisId: order_items.total_sale_price}, {id: '2015', name: '2015',
            axisId: order_items.total_sale_price}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear, valueFormat: "$0,\\\
          K\\"}]
    y_axis_value_format: "$#,##0"
    x_axis_label: Month of Year
    colors: ["#635189", "#B1A8C4", "#1EA8DF", "#8ED3EF"]
    series_types: {}
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [calculation_1]
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Location: distribution_centers.location
      Country: users.country
    row: 2
    col: 16
    width: 8
    height: 10
  - title: Highest Spending Users
    name: Highest Spending Users
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, users.gender, order_items.order_count, users.count,
      order_items.total_sale_price, order_items.average_spend_per_user, users.country]
    pivots: [users.gender]
    filters: {}
    sorts: [users.gender 0, order_items.total_sale_price desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 37.57941251343841
    map_longitude: -99.31640625000001
    map_zoom: 4
    map_marker_radius_max: 15
    map_marker_color: ["#4285F4", "#EA4335", "#FBBC04", "#34A853"]
    map_value_colors: [white, purple]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 200
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields: [orders.count, users.count, order_items.total_sale_price, order_items.order_count]
    map: usa
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    y_axes: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 14
    col: 10
    width: 14
    height: 9
  - title: User Behaviors by Traffic Source
    name: User Behaviors by Traffic Source
    model: thelook
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, order_items.average_sale_price, user_order_facts.average_lifetime_orders]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{id: order_items.average_sale_price,
            name: Average Sale Price, axisId: order_items.average_sale_price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{id: user_order_facts.average_lifetime_orders,
            name: Average Lifetime Orders, axisId: user_order_facts.average_lifetime_orders}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    y_axis_labels: [Average Sale Price ($)]
    y_axis_value_format: '0'
    hide_legend: false
    colors: ["#1ea8df", "#a2dcf3", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    font_size: '13'
    series_colors: {}
    y_axis_orientation: [left, right]
    hidden_fields: [percent_repeat_customers]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 33
    col: 0
    width: 10
    height: 7
  - title: User Basic Demographic Profile
    name: User Basic Demographic Profile
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields: [users.gender, users.traffic_source, order_items.count]
    pivots: [users.traffic_source]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source, order_items.count
        desc 0]
    limit: 500
    column_limit: 15
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 15
    hide_legend: false
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    show_view_names: true
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 14
    col: 0
    width: 10
    height: 9
  - title: 30 Day Repeat Purchase Rate
    name: 30 Day Repeat Purchase Rate
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.30_day_repeat_purchase_rate]
    filters: {}
    sorts: [repeat_purchase_facts.30_day_repeat_purchase_rate desc, order_items.30_day_repeat_purchase_rate
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color: ''
    single_value_title: Repeat Purchase Rate
    conditional_formatting: [{type: greater than, value: 0.1, background_color: "#ffffe5",
        font_color: "#FBB555", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.13,
        background_color: '', font_color: "#C2DD67", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 0.15,
        background_color: '', font_color: "#72D16D", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    font_size: medium
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: What percent of orders are followed by a repeat purchase by the same
      user within 30 days?
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: order_items.created_date
      Location: distribution_centers.location
      Country: users.country
    row: 2
    col: 8
    width: 4
    height: 4
  - title: Total Order Count
    name: Total Order Count
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.reporting_period, order_items.count]
    filters:
      order_items.reporting_period: "-NULL"
    sorts: [order_items.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${order_items.count}/offset(${order_items.count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0}]
    query_timezone: America/Los_Angeles
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    single_value_title: Orders This Year
    hidden_fields: [order_items.reporting_period]
    comparison_label: vs Same Period Last Year
    custom_color_enabled: false
    custom_color: forestgreen
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Location: distribution_centers.location
      Country: users.country
    row: 2
    col: 12
    width: 4
    height: 4
  - name: "<span class='fa fa-users'> </span> Customer Demographics"
    type: text
    title_text: "<span class='fa fa-users'> </span> Customer Demographics"
    subtitle_text: Who are our customers?
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Most Viewed Brands Online
    name: Most Viewed Brands Online
    model: thelook
    explore: sessions
    type: looker_grid
    fields: [product_viewed.brand, sessions.count, sessions.cart_to_checkout_conversion,
      product_viewed.department]
    pivots: [product_viewed.department]
    filters:
      product_viewed.brand: "-NULL"
    sorts: [sessions.count desc 0, product_viewed.department]
    limit: 10
    column_limit: 50
    row_total: right
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      sessions.cart_to_checkout_conversion: Cart Conversion
    series_cell_visualizations:
      sessions.count:
        is_active: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#2196F3",
        font_color: !!null '', color_application: {collection_id: f14810d2-98d7-42df-82d0-bc185a074e42,
          palette_id: 493e0f89-1e28-4f9b-9f49-9cb1e77a0331}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_ignored_fields: []
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    truncate_column_names: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    hidden_fields: []
    y_axes: []
    series_types: {}
    defaults_version: 1
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
      Date: events.event_date
      Country: users.country
    row: 26
    col: 10
    width: 14
    height: 7
  - name: "<span class='fa fa-laptop'> </span> Web Analytics"
    type: text
    title_text: "<span class='fa fa-laptop'> </span> Web Analytics"
    subtitle_text: What are customers doing on our website?
    body_text: "**Recommended Action** Dive into successful brands to see what they're\
      \ doing that's working, drill by category or head to the Brand Analytics report"
    row: 23
    col: 0
    width: 24
    height: 3
  - name: "<span class='fa fa-tachometer'> Top Line Metrics</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'> Top Line Metrics</span>"
    subtitle_text: Are we headed in the right direction?
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook
    explore: order_items
    listens_to_filters: [Country]
    field: users.state
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook
    explore: order_items
    listens_to_filters: [State, Country]
    field: users.city
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.traffic_source
  - name: User Gender
    title: User Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.gender
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
  - name: Location
    title: Location
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: distribution_centers.location
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.country



#############################################
##########Brand Analytics ##################
##############################################
- dashboard: brand_lookup
  title: Brand Lookup
  layout: newspaper
  preferred_viewer: dashboards-next
  query_timezone: user_timezone
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    tile_separator_color: "#faf3f3"
    tile_border_radius: 5
    show_tile_shadow: false
    text_tile_text_color: "#556d7a"
  elements:
  - title: Total Orders
    name: Total Orders
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters: {}
    sorts: [order_items.order_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
      State: users.state
    row: 2
    col: 8
    width: 4
    height: 3
  - title: Total Customers
    name: Total Customers
    model: thelook
    explore: order_items
    type: single_value
    fields: [users.count]
    filters: {}
    sorts: [users.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    note_state: expanded
    note_display: hover
    note_text: I've added a note
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
      State: users.state
    row: 2
    col: 0
    width: 4
    height: 3
  - title: Average Order Value
    name: Average Order Value
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    filters: {}
    sorts: [order_items.average_sale_price desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
      State: users.state
    row: 2
    col: 4
    width: 4
    height: 3
  - title: Brand Traffic by Source, OS
    name: Brand Traffic by Source, OS
    model: thelook
    explore: events
    type: looker_donut_multiples
    fields: [users.traffic_source, events.os, events.count]
    pivots: [users.traffic_source]
    filters:
      users.traffic_source: "-NULL"
    sorts: [events.count desc 1, users.traffic_source]
    limit: 20
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 12
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors: {}
    show_view_names: true
    stacking: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
      State: users.state
    row: 28
    col: 14
    width: 10
    height: 11
  - title: Top Product Categories - Cart vs Conversion
    name: Top Product Categories - Cart vs Conversion
    model: thelook
    explore: events
    type: looker_column
    fields: [product_viewed.category, sessions.overall_conversion, sessions.cart_to_checkout_conversion,
      sessions.count_cart_or_later]
    filters:
      product_viewed.category: "-NULL"
    sorts: [sessions.count_cart_or_later desc]
    limit: 8
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Total Added to Cart, maxValue: !!null '', minValue: !!null '',
        orientation: left, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: sessions.count_cart_or_later, name: "(4) Add to Cart or later"}]},
      {label: '', maxValue: !!null '', minValue: !!null '', orientation: right, showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: false, valueFormat: !!null '', series: [{id: sessions.overall_conversion,
            name: Overall Conversion}, {id: sessions.cart_to_checkout_conversion,
            name: Cart to Checkout Conversion}]}]
    y_axis_labels: [Cart to Checkout Conversion Percent, Total Added to Cart]
    hide_legend: false
    colors: ["#64518A", "#8D7FB9"]
    series_types:
      sessions.cart_to_checkout_conversion: line
      sessions.overall_conversion: line
    series_colors: {}
    series_labels:
      sessions.cart_to_checkout_conversion: Cart to Checkout Conversion
      sessions.overall_conversion: Overall Conversion
      sessions.count_cart_or_later: "# of Add to Cart Events"
    y_axis_orientation: [right, left]
    x_axis_label_rotation: -45
    label_rotation: 0
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
      State: users.state
    row: 28
    col: 0
    width: 14
    height: 6
  - title: Top Visitors and Transaction History
    name: Top Visitors and Transaction History
    model: thelook
    explore: events
    type: looker_grid
    fields: [users.name, users.email, users.state, users.traffic_source, sessions.count]
    filters:
      users.name: "-NULL"
    sorts: [sessions.count desc]
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      sessions.count:
        is_active: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    truncate_column_names: false
    series_types: {}
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
      State: users.state
    row: 42
    col: 12
    width: 12
    height: 8
  - title: Sales and Sale Price Trend
    name: Sales and Sale Price Trend
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_date, order_items.total_sale_price, order_items.average_sale_price]
    filters: {}
    sorts: [order_items.total_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axis_combined: false
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axis_labels: [Total Sale Amount, Average Selling Price]
    x_axis_label: Order Date
    hide_legend: true
    colors: ["#F2B431", "#57BEBE"]
    series_colors: {}
    y_axis_orientation: [left, right]
    x_axis_datetime: true
    hide_points: true
    color_palette: Custom
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
      State: users.state
    row: 2
    col: 12
    width: 12
    height: 7
  - title: Top Purchasers of Brand
    name: Top Purchasers of Brand
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [users.name, users.email, order_items.count, order_items.total_sale_price,
      users.state]
    filters: {}
    sorts: [order_items.count desc]
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
      State: users.state
    row: 42
    col: 0
    width: 12
    height: 8
  - title: Website Sessions by Hour of Day and User Lifetime Order Tier
    name: Website Sessions by Hour of Day and User Lifetime Order Tier
    model: thelook
    explore: events
    type: looker_column
    fields: [user_order_facts.lifetime_orders_tier, sessions.count, events.event_hour_of_day]
    pivots: [user_order_facts.lifetime_orders_tier]
    fill_fields: [events.event_hour_of_day]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier 0, events.event_hour_of_day]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    hidden_series: [Undefined]
    colors: ["#2DA5DE", "#57BEBE", "#EA8A2F", "#F2B431", "#64518A", "#8D7FB9", "#7F7977",
      "#B2A898", "#494C52"]
    series_colors: {}
    series_labels:
      '1': 1 Lifetime Purchase
      1 - 2 - sessions.count: '1'
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: These are order totals by hour of day
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
      State: users.state
    row: 34
    col: 0
    width: 14
    height: 5
  - title: Most Correlated Items
    name: Most Correlated Items
    model: thelook
    explore: affinity
    type: looker_grid
    fields: [product_a.item_name, product_b.item_name, affinity.avg_order_affinity,
      affinity.avg_user_affinity]
    filters:
      affinity.product_b_id: "-NULL"
      affinity.avg_order_affinity: NOT NULL
      product_b.brand: '"Levi''s"'
    sorts: [affinity.avg_order_affinity desc]
    limit: 15
    query_timezone: America/Los_Angeles
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    series_cell_visualizations:
      affinity.avg_order_affinity:
        is_active: true
        palette:
          palette_id: 14bc3e56-1edb-5cb6-143e-bc3c0d49dc0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#f20265"
          - "#FFD95F"
          - "#72D16D"
      affinity.avg_user_affinity:
        is_active: true
        palette:
          palette_id: 8182e447-1db4-af27-fe8f-0cc57a1b4132
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#f20265"
          - "#FFD95F"
          - "#72D16D"
    stacking: ''
    trellis: ''
    colors: ["#57BEBE", "#EA8A2F", "#F2B431", "#64518A", "#8D7FB9", "#7F7977", "#B2A898",
      "#494C52"]
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle_outline
    hidden_series: [product_a.count, product_b.count]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    color_palette: Custom
    hidden_fields: []
    series_types: {}
    defaults_version: 1
    listen:
      Brand Name: product_a.brand
    row: 18
    col: 0
    width: 14
    height: 8
  - title: Purchasers of This Brand Also Bought (Brand Affinity)
    name: Purchasers of This Brand Also Bought (Brand Affinity)
    model: thelook
    explore: affinity
    type: looker_grid
    fields: [product_a.brand, product_b.brand, affinity.avg_order_affinity, affinity.avg_user_affinity,
      affinity.combined_affinity]
    filters:
      affinity.product_b_id: "-NULL"
      affinity.avg_order_affinity: NOT NULL
    sorts: [affinity.combined_affinity desc]
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      product_b.brand: Brand Name
    series_cell_visualizations:
      affinity.avg_order_affinity:
        is_active: true
        palette:
          palette_id: 17151457-0425-49e1-f2ab-69c3b7658883
          collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
          custom_colors:
          - "#f20265"
          - "#FFD95F"
          - "#72D16D"
      affinity.avg_user_affinity:
        is_active: true
        palette:
          palette_id: 2c7c9b87-e295-002c-4f6f-d50381deac58
          collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
          custom_colors:
          - "#f20265"
          - "#FFD95F"
          - "#72D16D"
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields: [affinity.combined_affinity, product_a.brand]
    truncate_column_names: false
    series_types: {}
    listen:
      Brand Name: product_a.brand
    row: 18
    col: 14
    width: 10
    height: 8
  - title: Brand Share of Wallet over Customer Lifetime
    name: Brand Share of Wallet over Customer Lifetime
    model: thelook
    explore: orders_with_share_of_wallet_application
    type: looker_line
    fields: [order_items.months_since_signup, order_items_share_of_wallet.brand_share_of_wallet_within_company,
      order_items_share_of_wallet.total_sale_price_brand_v2]
    filters:
      order_items.months_since_signup: "<=18"
    sorts: [order_items.months_since_signup]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{id: order_items_share_of_wallet.brand_share_of_wallet_within_company,
            name: Brand Share of Wallet Within Company, axisId: order_items_share_of_wallet.brand_share_of_wallet_within_company}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{id: order_items_share_of_wallet.total_sale_price_brand_v2, name: Total
              Sales - This Brand, axisId: order_items_share_of_wallet.total_sale_price_brand_v2}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen:
      Brand Name: order_items_share_of_wallet.brand
      Date: order_items.created_date
      State: users.state
    row: 9
    col: 12
    width: 12
    height: 6
  - title: Most Popular Categories
    name: Most Popular Categories
    model: thelook
    explore: order_items
    type: looker_column
    fields: [products.category, products.department, order_items.total_sale_price]
    pivots: [products.department]
    sorts: [products.department 0, order_items.total_sale_price desc 2]
    limit: 500
    column_limit: 50
    row_total: right
    query_timezone: user_timezone
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
    stacking: normal
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_types: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 10
  - name: "<span class='fa fa-dollar'> Brand Overview </span>"
    type: text
    title_text: "<span class='fa fa-dollar'> Brand Overview </span>"
    subtitle_text: What are the high level revenue metrics for this brand?
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-heart'> Affinity Analysis </span>"
    type: text
    title_text: "<span class='fa fa-heart'> Affinity Analysis </span>"
    subtitle_text: What products and brands have the highest affinity?
    body_text: "**Recommended Action** Plan advertising campaign to recommend products\
      \ to users based on affinity"
    row: 15
    col: 0
    width: 24
    height: 3
  - name: "<span class='fa fa-laptop'> Web Analytics </span>"
    type: text
    title_text: "<span class='fa fa-laptop'> Web Analytics </span>"
    subtitle_text: How are users interacting with our website?
    row: 26
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-users'> Top Customers </span>"
    type: text
    title_text: "<span class='fa fa-users'> Top Customers </span>"
    subtitle_text: Who are our highest valued customers?
    body_text: "**Recommended Action** Explore from here to see what products a user\
      \ has purchased and include them in a targeted advertising campaign"
    row: 39
    col: 0
    width: 24
    height: 3
  filters:
  - name: Brand Name
    title: Brand Name
    type: field_filter
    default_value: Calvin Klein
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: products.brand
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.state


#########################################
############Customer Lookup #############
#########################################
- dashboard: customer_lookup
  title: Customer Lookup
  layout: newspaper
  preferred_viewer: dashboards
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: User Info
    name: User Info
    model: thelook
    explore: order_items
    type: looker_single_record
    fields: [users.id, users.email, users.name, users.traffic_source, users.created_month,
      users.age, users.gender, users.city, users.state, users.zip]
    filters:
      order_items.created_date: 99 years
      users.id: ''
    sorts: [users.zip]
    limit: 1
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_null_labels: false
    show_view_names: false
    show_row_numbers: true
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 0
    width: 7
    height: 5
  - title: Lifetime Orders
    name: Lifetime Orders
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.created_date: 99 years
      users.id: ''
    sorts: [order_items.order_count desc]
    limit: 500
    show_null_labels: false
    user_access_filters: {}
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 7
    col: 0
    width: 7
    height: 2
  - title: Total Items Returned
    name: Total Items Returned
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.count]
    filters:
      order_items.returned_date: NOT NULL
    sorts: [order_items.count desc]
    limit: 500
    show_null_labels: false
    font_size: medium
    text_color: black
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 5
    col: 0
    width: 7
    height: 2
  - title: Items Order History
    name: Items Order History
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [order_items.id, products.item_name, order_items.status, order_items.created_date,
      order_items.shipped_date, order_items.delivered_date, order_items.returned_date,
      distribution_centers.name]
    sorts: [order_items.created_date desc]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Email: users.email
    row: 9
    col: 0
    width: 16
    height: 5
  - title: Favorite Categories
    name: Favorite Categories
    model: thelook
    explore: order_items
    type: looker_pie
    fields: [products.category, order_items.count]
    filters:
      order_items.created_date: 99 years
    sorts: [order_items.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    show_view_names: true
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      Email: users.email
    row: 9
    col: 16
    width: 8
    height: 5
  - title: User Location
    name: User Location
    model: thelook
    explore: order_items
    type: looker_geo_coordinates
    fields: [users.zip, users.count]
    sorts: [users.created_month desc, users.zip]
    limit: 1
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: true
    point_color: "#4285F4"
    point_radius: 10
    font_size: medium
    text_color: "#49719a"
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 42.35930500076174
    map_longitude: -71.02283477783203
    map_zoom: 11
    loading: false
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      Email: users.email
    row: 0
    col: 7
    width: 17
    height: 9
  filters:
  - name: Email
    title: Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.email



######################################
########## Web Analytics##############
#######################################
- dashboard: web_analytics_overview
  title: Web Analytics Overview
  layout: newspaper
  preferred_viewer: dashboards
  query_timezone: user_timezone
  embed_style:
    background_color: "#e8f1fa"
    show_title: true
    title_color: "#131414"
    show_filters_bar: true
    tile_text_color: gray
    tile_separator_color: rgba(0, 0, 0, 0.05)
    tile_border_radius: 3
    show_tile_shadow: true
    text_tile_text_color: ''
  elements:
  - title: Total Visitors
    name: Total Visitors
    model: thelook
    explore: events
    type: single_value
    fields: [events.unique_visitors, events.event_week]
    filters:
      events.event_date: 2 weeks ago for 2 weeks
    sorts: [events.event_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${events.unique_visitors}-offset(${events.unique_visitors},1)"}]
    query_timezone: America/Los_Angeles
    font_size: medium
    value_format: ''
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Weekly Change
    single_value_title: Visitors Past Week
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Total Converted Visitors
    name: Total Converted Visitors
    model: thelook
    explore: order_items
    type: single_value
    fields: [users.count]
    sorts: [users.count desc]
    limit: 500
    font_size: medium
    text_color: black
    listen:
      Traffic Source: users.traffic_source
      Date: order_items.created_date
    row: 0
    col: 11
    width: 5
    height: 3
  - title: Total Profit
    name: Total Profit
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters: {}
    sorts: [orders.total_profit_k desc, order_items.total_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    value_format: "$#,###"
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    color_palette: Default
    note_state: expanded
    note_display: below
    note_text: ''
    listen:
      Traffic Source: users.traffic_source
      Date: order_items.created_date
    row: 0
    col: 6
    width: 5
    height: 3
  - title: Visits by Browser
    name: Visits by Browser
    model: thelook
    explore: events
    type: looker_pie
    fields: [events.browser, events.count]
    filters: {}
    sorts: [events.count desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    colors: ["#635189", "#8D7FB9", "#EA8A2F", "#e9b404", "#49cec1", "#a2dcf3", "#1ea8df",
      "#7F7977"]
    series_colors:
      Chrome: "#5245ed"
      Safari: "#a2dcf3"
      Firefox: "#776fdf"
      IE: "#1ea8df"
      Other: "#49cec1"
    show_null_labels: false
    show_view_names: true
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 10
    col: 16
    width: 8
    height: 8
  - title: How Long do Visitors Spend on Website?
    name: How Long do Visitors Spend on Website?
    model: thelook
    explore: events
    type: looker_bar
    fields: [sessions.duration_seconds_tier, sessions.count]
    filters: {}
    sorts: [sessions.duration_seconds_tier]
    limit: 500
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Number of Sessions]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Session Duration in Seconds
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    colors: ["#8D7FB9"]
    point_style: none
    series_colors:
      sessions.count: "#5245ed"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -45
    show_dropoff: false
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 0
    col: 16
    width: 8
    height: 10
  - title: Bounce Rate by Page
    name: Bounce Rate by Page
    model: thelook
    explore: sessions
    type: looker_column
    fields: [events.event_type, events.bounce_rate, sessions.count]
    filters:
      events.event_type: "-Purchase,-Login,-Register,-History,-Cancel,-Return"
      sessions.session_start_date: 7 days
    sorts: [sessions.count desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#a2dcf3", "#64518A", "#8D7FB9"]
    series_types:
      events.bounce_rate: line
    point_style: circle_outline
    series_colors:
      sessions.count: "#1ea8df"
    series_labels:
      events.bounce_rate: Bounce Rate by Page
      events.count: Number of Page Views
    show_value_labels: false
    label_density: 10
    x_axis_scale: auto
    y_axis_combined: false
    y_axis_orientation: [left, right]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 18
    col: 0
    width: 12
    height: 7
  - title: App Overview
    name: App Overview
    model: thelook
    explore: events
    type: table
    fields: [product_viewed.brand, events.count, events.unique_visitors, sessions.count_purchase,
      sessions.cart_to_checkout_conversion]
    filters:
      product_viewed.brand: "-NULL"
    sorts: [events.count desc]
    limit: 10
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    show_value_labels: true
    show_null_labels: false
    stacking: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_combined: true
    series_labels:
      events.count: Total Pageviews
    y_axis_labels: [Total Pageviews]
    x_axis_label: Brand Name
    label_density: 25
    legend_position: center
    ordering: none
    colors: ["#64518A", "#8D7FB9"]
    hide_legend: false
    show_dropoff: false
    truncate_column_names: false
    table_theme: gray
    limit_displayed_rows: false
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 18
    col: 12
    width: 12
    height: 7
  - title: eCommerce Funnel
    name: eCommerce Funnel
    model: thelook
    explore: sessions
    type: looker_column
    fields: [sessions.all_sessions, sessions.count_browse_or_later, sessions.count_product_or_later,
      sessions.count_cart_or_later, sessions.count_purchase]
    filters: {}
    sorts: [sessions.all_sessions desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    series_types: {}
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Sessions
    barColors: ["#5245ed", "#49cec1"]
    smoothedBars: true
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: sessions.session_start_date
    row: 3
    col: 0
    width: 11
    height: 7
  - title: Global Events
    name: Global Events
    model: thelook
    explore: events
    type: looker_map
    fields: [events.approx_location, events.count]
    filters: {}
    sorts: [events.count desc]
    limit: 1000
    query_timezone: America/Los_Angeles
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map: world
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: grey
    inner_border_color: lightgrey
    map_pannable: true
    map_zoomable: true
    map_marker_color: ["#1ea8df"]
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 10
    col: 0
    width: 16
    height: 8
  - title: Daily Session and User Count
    name: Daily Session and User Count
    model: thelook
    explore: sessions
    type: looker_line
    fields: [sessions.session_start_date, sessions.count, sessions.overall_conversion]
    sorts: [sessions.session_start_date]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    colors: ["#5245ed", "#1ea8df", "#353b49", "#49cec1", "#b3a0dd", "#db7f2a", "#706080",
      "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    y_axis_orientation: [left, right]
    show_null_points: true
    interpolation: monotone
    discontinuous_nulls: false
    show_row_numbers: true
    ordering: none
    show_null_labels: false
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 25
    col: 0
    width: 24
    height: 9
  - title: Percent Purchasing Sessions
    name: Percent Purchasing Sessions
    model: thelook
    explore: sessions
    type: looker_pie
    fields: [sessions.includes_purchase, sessions.count]
    filters:
      sessions.session_start_date: 7 days
    sorts: [sessions.all_sessions desc, sessions.includes_purchase]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    colors: ["#5245ed", "#a2dcf3"]
    show_row_numbers: true
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    point_style: circle_outline
    interpolation: linear
    discontinuous_nulls: false
    show_null_points: true
    series_types:
      users.count: column
    inner_radius: 50
    series_labels:
      'No': No Purchase
      'Yes': Results in Purchase
    series_colors: {}
    note_state: collapsed
    note_display: below
    note_text: Percent of unique visits that result in a purchase
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 3
    col: 11
    width: 5
    height: 7
  filters:
  - name: Browser
    title: Browser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: events
    listens_to_filters: []
    field: events.browser
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: thelook
    explore: events
    listens_to_filters: []
    field: users.traffic_source
  - name: Date
    title: Date
    type: date_filter
    default_value: 2 weeks
    allow_multiple_values: true
    required: false


########################################
##########Shipping and Logistics #######
#########################################
- dashboard: shipping_logistics__operations_overview
  title: Shipping Logistics & Operations Overview
  layout: newspaper
  description: 'Shipping and logistics overview for an ecommerce store - showing things like how many orders are processing, and where things are shipping'
  embed_style:
    background_color: ''
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Order Shipment Status
    name: Order Shipment Status
    model: thelook
    explore: order_items
    type: looker_column
    fields: [order_items.created_date, order_items.status, order_items.order_count]
    pivots: [order_items.status]
    filters:
      order_items.created_date: 60 days
      order_items.status: Complete,Shipped,Processing
    sorts: [order_items.created_date desc, order_items.status]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    color_palette: Custom
    limit_displayed_rows: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: [green, red, orange]
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    listen:
      Distribution Center: distribution_centers.name
    row: 5
    col: 0
    width: 16
    height: 8
  - title: Open Orders >3 Days Old
    name: Open Orders >3 Days Old
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [order_items.order_id, users.email, order_items.created_date, order_items.status,
      products.item_name, order_items.days_to_process]
    filters:
      order_items.created_date: before 3 days ago
      order_items.status: Processing
    sorts: [order_items.days_to_process desc]
    limit: 25
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.days_to_process:
        is_active: false
        palette:
          palette_id: 90a81bec-f33f-43c9-a36a-0ea5f037dfa0
          collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#2196F3",
        font_color: !!null '', color_application: {collection_id: f14810d2-98d7-42df-82d0-bc185a074e42,
          palette_id: 90a81bec-f33f-43c9-a36a-0ea5f037dfa0, options: {steps: 5, reverse: true}},
        bold: false, italic: false, strikethrough: false, fields: [order_items.days_to_process]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Distribution Center: distribution_centers.name
    row: 17
    col: 0
    width: 24
    height: 8
  - title: Open Orders - Where do we need to ship?
    name: Open Orders - Where do we need to ship?
    model: thelook
    explore: order_items
    type: looker_map
    fields: [distribution_centers.location, users.approx_location, order_items.average_days_to_process]
    filters:
      order_items.status: '"Processing"'
      order_items.order_count: ">0"
    sorts: [order_items.average_days_to_process desc]
    limit: 500
    map_plot_mode: lines
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 36.31512514748051
    map_longitude: -92.10937499999999
    map_zoom: 3
    hidden_fields: []
    y_axes: []
    listen:
      Distribution Center: distribution_centers.name
    row: 35
    col: 0
    width: 13
    height: 8
  - title: Average Shipping Time to Users
    name: Average Shipping Time to Users
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, order_items.average_shipping_time]
    filters:
      users.approx_location_bin_level: '7'
    sorts: [order_items.average_shipping_time desc]
    limit: 5000
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 36.527294814546245
    map_longitude: -92.19726562500001
    map_zoom: 3
    hidden_fields: []
    y_axes: []
    listen:
      Distribution Center: distribution_centers.name
    row: 27
    col: 13
    width: 11
    height: 16
  - title: Most Common Shipping Locations
    name: Most Common Shipping Locations
    model: thelook
    explore: order_items
    type: looker_map
    fields: [distribution_centers.location, users.approx_location, order_items.order_count]
    filters:
      order_items.order_count: ">30"
    sorts: [order_items.created_date, order_items.order_id, order_items.order_count
        desc]
    limit: 1000
    map_plot_mode: lines
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 43.58039085560786
    map_longitude: -61.52343749999999
    map_zoom: 3
    map_value_scale_clamp_max: 300
    map_value_scale_clamp_min: 30
    hidden_fields: []
    y_axes: []
    listen:
      Distribution Center: distribution_centers.name
    row: 27
    col: 0
    width: 13
    height: 8
  - title: Inventory Aging Report
    name: Inventory Aging Report
    model: thelook
    explore: order_items
    type: looker_column
    fields: [inventory_items.days_in_inventory_tier, inventory_items.count]
    filters:
      inventory_items.is_sold: 'No'
    sorts: [inventory_items.days_in_inventory_tier]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: [grey]
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: Unsold inventory only
    listen:
      Distribution Center: distribution_centers.name
    row: 2
    col: 16
    width: 8
    height: 11
  - title: "# Orders Processing"
    name: "# Orders Processing"
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.status: Processing
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    color_palette: Custom
    limit_displayed_rows: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: [green, red, orange]
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    series_types: {}
    row: 2
    col: 0
    width: 6
    height: 3
  - title: "# Orders Shipped"
    name: "# Orders Shipped"
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.status: Shipped
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    color_palette: Custom
    limit_displayed_rows: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: [green, red, orange]
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    series_types: {}
    row: 2
    col: 11
    width: 5
    height: 3
  - title: Total Amount Processing
    name: Total Amount Processing
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters:
      order_items.status: Processing
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    color_palette: Custom
    limit_displayed_rows: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: [green, red, orange]
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    y_axes: []
    series_types: {}
    row: 2
    col: 6
    width: 5
    height: 3
  - name: "<span class='fa fa-tachometer'> Operations Overview</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'> Operations Overview</span>"
    subtitle_text: How are we doing from a logistics standpoint?
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-bell-o'> Orders Still Processing</span>"
    type: text
    title_text: "<span class='fa fa-bell-o'> Orders Still Processing</span>"
    subtitle_text: What orders should have been shipped but are still processing?
    body_text: "**Recommended Action** Send order id over slack to follow up on the\
      \ order status, then email the customer to let them know that there is a delay"
    row: 13
    col: 0
    width: 24
    height: 4
  - name: "<span class='fa fa-paper-plane'> Shipping by Location</span>"
    type: text
    title_text: "<span class='fa fa-paper-plane'> Shipping by Location</span>"
    subtitle_text: Where can we improve our shipping time?
    row: 25
    col: 0
    width: 24
    height: 2
  filters:
  - name: Distribution Center
    title: Distribution Center
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: distribution_centers.name
