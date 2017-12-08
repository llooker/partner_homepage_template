#----------------------------
- dashboard: 1_business_pulse
#---------------------------

  title: "1) Business Pulse"
  layout: newspaper
  elements:
  - name: Cohort Analysis
    type: text
    title_text: Cohort Analysis
    subtitle_text: Customers by Signup Month
    row: 30
    col: 0
    width: 24
    height: 3
  - name: Logo
    type: text
    title_text: <img src="https://avatars2.githubusercontent.com/u/1437874?v=3&s=400"
      >
    body_text: ''
    row: 0
    col: 0
    width: 6
    height: 6
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <strong> <font size="4">Pulse Metrics</font></strong> <br>
      For more granular info, see these dashboards:<br>
      [1) Brand Overview](/dashboards/thelook::2_brand_overview) <br>
      [2) Category Lookup](/dashboards/thelook::3_category_lookup)<br>
      <a href="/dashboards/thelook::4_user_lookup">3) User Lookup</a>
      <br>
      Or check out our internal [docs](https://looker.com/docs) for more info!
    row: 0
    col: 6
    width: 6
    height: 6
  - name: Average Order Profit
    label: Average Order Profit
    model: thelook
    explore: orders
    type: single_value
    fields:
    - orders.average_order_profit
    font_size: medium
    listen:
      Date: orders.created_date
      State: users.state
    row: 3
    col: 18
    width: 6
    height: 3
  - name: Orders by Day and Category
    label: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_area
    fields:
    - orders.created_date
    - order_items.count
    - products.category_name
    pivots:
    - products.category_name
    filters:
      products.category_name: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies
        & Sweatshirts,Accessories
    sorts:
    - orders.created_date
    - products.category_name
    limit: 500
    column_limit: 50
    colors:
    - "#651F81"
    - "#80237D"
    - "#C488DD"
    - "#Ef7F0F"
    - "#FEAC47"
    - "#8ED1ED"
    legend_align:
    y_axis_labels:
    - "# Order Items"
    stacking: normal
    x_axis_datetime: true
    hide_points: true
    hide_legend: false
    x_axis_datetime_tick_count: 4
    show_x_axis_label: false
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
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: orders.created_date
      State: users.state
    row: 6
    col: 0
    width: 14
    height: 8
  - name: Year over Year Sales
    label: Year over Year Sales
    model: thelook
    explore: order_items
    type: looker_line
    fields:
    - orders.created_year
    - orders.created_month_name
    - order_items.total_sale_price
    pivots:
    - orders.created_year
    fill_fields:
    - orders.created_year
    - orders.created_month_name
    filters:
      orders.created_date: before 0 months ago
      orders.created_year: after 3 years ago
    sorts:
    - orders.created_year
    - orders.created_year
    - orders.created_month_name
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    show_null_points: false
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    series_types: {}
    hidden_series: []
    colors:
    - "#651F81"
    - "#80237D"
    - "#C488DD"
    - "#Ef7F0F"
    - "#FEAC47"
    - "#8ED1ED"
    listen:
      State: users.state
    row: 6
    col: 14
    width: 10
    height: 8
  - name: New Users
    label: New Users
    model: thelook
    explore: orders
    type: single_value
    fields:
    - orders.first_purchase_count
    column_limit: 50
    font_size: medium
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: orders.created_date
      State: users.state
    row: 0
    col: 12
    width: 6
    height: 3
  - name: Return Shopper Revenue
    label: Return Shopper Revenue
    model: thelook
    explore: orders
    type: single_value
    fields:
    - orders.total_returning_shopper_revenue

    limit: 1000
    column_limit: 50
    font_size: medium
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: orders.created_date
      State: users.state
    row: 0
    col: 18
    width: 6
    height: 3
  - name: Return User Information
    label: Return User Information
    model: thelook
    explore: orders
    type: looker_column
    fields:
    - users_orders_facts.lifetime_number_of_orders_tier
    - orders.average_order_profit
    - users.average_age
    sorts:
    - users_orders_facts.lifetime_number_of_orders_tier
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    series_types:
      orders.average_order_profit: line
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: users.average_age
        name: Users Average Age
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: orders.average_order_profit
        name: Orders Average Order Profit
    colors:
    - "#651F81"
    - "#C488DD"
    - "#FEAC47"
    - "#8ED1ED"
    series_colors: {}
    listen:
      State: users.state
    row: 14
    col: 0
    width: 11
    height: 8
  - name: Sales by State
    label: Sales by State
    model: thelook
    explore: order_items
    type: looker_map
    fields:
    - users.state
    - order_items.total_sale_price
    filters:
      users.is_lower_48: 'Yes'
    sorts:
    - order_items.total_sale_price desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: false
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    map: usa
    colors:
    - "#651F81"
    map_projection: ''
    quantize_colors: false
    series_types: {}
    map_latitude: 39.027718840211605
    map_longitude: -94.482421875
    map_zoom: 3
    map_value_colors:
    - green
    - red
    map_value_scale_clamp_min:
    map_value_scale_clamp_max:
    hidden_fields:
    listen:
      Date: orders.created_date
      State: users.state
    row: 14
    col: 11
    width: 13
    height: 8
  - name: Top 15 Brands
    label: Top 15 Brands
    model: thelook
    explore: order_items
    type: table
    fields:
    - products.brand_name
    - order_items.count
    - order_items.total_sale_price
    - order_items.average_sale_price
    sorts:
    - order_items.count desc
    limit: 15
    listen:
      Date: orders.created_date
      State: users.state
    row: 22
    col: 12
    width: 12
    height: 8
  - name: Sales by Date and Category (Last 6 Weeks)
    label: Sales by Date and Category (Last 6 Weeks)
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields:
    - orders.created_week
    - order_items.count
    - products.category_name
    pivots:
    - products.category_name
    filters:
      orders.created_date: 6 weeks ago for 6 weeks
      products.category_name: Accessories, Active, Blazers & Jackets, Clothing Sets
    sorts:
    - orders.created_week desc
    limit: 24
    colors:
    - "#651F81"
    - "#EF7F0F"
    - "#555E61"
    - "#2DA7CE"
    charts_across:
    show_value_labels: true
    listen:
      State: users.state
    row: 22
    col: 0
    width: 12
    height: 8
  - name: Cohort - Orders Layered by Sign Up Month
    label: Cohort - Orders Layered by Sign Up Month
    model: thelook
    explore: orders
    type: looker_area
    fields:
    - orders.created_month
    - orders.count
    - users.created_month
    pivots:
    - users.created_month
    filters:
      orders.created_month: 12 months ago for 12 months
      users.created_month: 12 months ago for 12 months
    sorts:
    - orders.created_month
    limit: 500
    y_axis_labels:
    - Number of orders
    x_axis_label: Order Month
    legend_align: right
    colors:
    - "#FF0000"
    - "#DE0000"
    - "#C90000"
    - "#9C0202"
    - "#800101"
    - "#6B0000"
    - "#4D006B"
    - "#0D0080"
    - "#080054"
    - "#040029"
    - "#000000"
    stacking: normal
    hide_points: true
    listen:
      State: users.state
    row: 33
    col: 0
    width: 12
    height: 8
  - name: Total Orders
    label: Total Orders
    model: thelook
    explore: orders
    type: single_value
    fields:
    - orders.count
    font_size: medium
    listen:
      Date: orders.created_date
      State: users.state
    row: 3
    col: 12
    width: 6
    height: 3
  - name: Cohort - Cumulative Sales by User Sign Up Month
    label: Cohort - Cumulative Sales by User Sign Up Month
    model: thelook
    explore: order_items
    type: looker_line
    fields:
    - orders.months_since_user_created_sharp
    - users.created_month
    - order_items.total_sale_price
    pivots:
    - users.created_month
    fill_fields:
    - users.created_month
    filters:
      orders.months_since_user_created_sharp: "[0, 12]"
      users.created_month: 12 months ago for 12 months
    sorts:
    - users.created_month
    - orders.months_since_user_created_sharp
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_sale_price
      label: Total Sale Price
      expression: |-
        if(
        is_null(${order_items.total_sale_price})
        ,null
        ,running_total(${order_items.total_sale_price}))
      value_format:
      value_format_name: usd
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_null_points: false
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_colors: {}
    series_types: {}
    x_axis_label_rotation: 0
    colors:
    - "#FF0000"
    - "#DE0000"
    - "#C90000"
    - "#9C0202"
    - "#800101"
    - "#6B0000"
    - "#4D006B"
    - "#0D0080"
    - "#080054"
    - "#040029"
    - "#000000"
    hidden_fields:
    - order_items.total_sale_price
    listen:
      State: users.state
    row: 33
    col: 12
    width: 12
    height: 8
  - name: Customer Cohort
    label: Customer Cohort
    model: thelook
    explore: orders
    type: table
    fields:
    - users.created_month
    - users.count
    - orders.created_month
    pivots:
    - orders.created_month
    filters:
      orders.created_month: 12 months ago for 12 months
      users.created_month: 12 months ago for 12 months
    sorts:
    - users.created_month
    limit: 500
    listen:
      State: users.state
    row: 41
    col: 0
    width: 24
    height: 8
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    model: thelook
    explore: users
    field: users.state
    listens_to_filters: []
    allow_multiple_values: true
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    model:
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true


#----------------------------
- dashboard: 2_brand_overview
#----------------------------
  title: "2) Brand Overview"
  layout: grid
  show_applied_filters: false
  rows:
    - elements: [total_orders, total_customers, average_order_value]
      height: 180
    - elements: [sales_over_time]
      height: 300
    - elements: [sales_by_department_and_category, connoisseur]
      height: 400

  filters:



  - name: brand
    title: 'Brand Name'
    type: field_filter
    explore: products
    field: products.brand_name
    default_value: Calvin Klein


  - name: date
    title: "Date"
    type: date_filter
    default_value: Last 90 Days

  elements:

  - name: total_orders
    type: single_value
    explore: order_items
    measures: [orders.count]
    listen:
      date: orders.created_date
      brand: products.brand_name
    font_size: medium

  - name: total_customers
    type: single_value
    explore: order_items
    measures: [users.count]
    listen:
      date: orders.created_date
      brand: products.brand_name
    font_size: medium

  - name: average_order_value
    type: single_value
    explore: order_items
    measures: [order_items.average_sale_price]
    listen:
      date: orders.created_date
      brand: products.brand_name
    font_size: medium

  - name: sales_over_time
    title: Sales
    type: looker_line
    explore: order_items
    dimensions: [orders.created_date]
    measures: [order_items.total_sale_price, order_items.average_sale_price]
    listen:
      brand: products.brand_name
    filters:
      orders.created_date: 90 days
    limit: 500
    x_axis_datetime: yes
    hide_points: yes
    show_view_names: false
    y_axis_combined: true
    show_x_axis_label: false
    series_labels:
      order_items.total_sale_price: Total Sales
      order_items.average_sale_price: Average Sale Price
    series_colors:
      order_items.total_sale_price: purple
      order_items.average_sale_price: orange

  - name: sales_by_department_and_category
    title: "Sales by Department and Category"
    type: table
    explore: order_items
    dimensions: [products.category_name]
    pivots: [products.department_name]
    measures: [order_items.count, order_items.total_sale_price]
    listen:
      date: orders.created_date
      brand: products.brand_name
    sorts: [order_items.count desc]
    limit: 500

  - name: connoisseur
    title: Top Purchasers
    type: table
    explore: order_items
    dimensions: [users.name, users.email, users.history]
    measures: [order_items.count, order_items.total_sale_price]
    listen:
      date: orders.created_date
      brand: products.brand_name
    sorts: [order_items.count desc]
    limit: 15

#-----------------------------
- dashboard: 3_category_lookup
#-----------------------------
  title: "3) Category Lookup"
  layout: grid
  rows:
    - elements: [total_orders, total_customers, average_order_value]
      height: 180
    - elements: [comparison, sales_by_day]
      height: 400
    - elements: [demographic, top_brands_within_category]
      height: 400

  filters:

  - name: category
    title: 'Category Name'
    type: field_filter
    explore: products
    field: products.category_name
    default_value: Jeans

  - name: department
    title: 'Department'
    type: field_filter
    explore: products
    field: products.department_name



  - name: date
    title: "Date"
    type: date_filter
    default_value: Last 90 Days

  elements:

  - name: total_orders
    type: single_value
    explore: order_items
    measures: [orders.count]
    listen:
      category: products.category_name
      date: orders.created_date
      department: products.department_name
    font_size: medium

  - name: total_customers
    type: single_value
    explore: order_items
    measures: [users.count]
    listen:
      date: orders.created_date
      category: products.category_name
      department: products.department_name
    font_size: medium

  - name: average_order_value
    type: single_value
    explore: order_items
    measures: [order_items.average_sale_price]
    listen:
      date: orders.created_date
      category: products.category_name
      department: products.department_name
    font_size: medium

  - name: comparison
    title: "All Categories Comparison"
    type: table
    explore: order_items
    dimensions: [products.category_name]
    measures: [order_items.average_sale_price, users.count, orders.count]
    listen:
      date: orders.created_date
      department: products.department_name
    sorts: [order_items.average_sale_price desc]
    limit: 50

  - name: sales_by_day
    title: "Sales by Date"
    type: looker_line
    explore: order_items
    dimensions: [orders.created_date]
    measures: [order_items.average_sale_price, order_items.total_sale_price]
    listen:
      date: orders.created_date
      category: products.category_name
      department: products.department_name
    sorts: [orders.created_date]
    x_axis_datetime: yes
    y_axis_orientation: [left,right]
    y_axis_labels: ["Average Selling Price ($)","Total Sale Amount ($)"]
    hide_points: yes

  - name: demographic
    title: "Age Demographic"
    type: looker_column
    explore: order_items
    dimensions: [users.age_tier]
    measures: [order_items.average_sale_price, order_items.count]
    listen:
      date: orders.created_date
      category: products.category_name
      department: products.department_name
    sorts: [users.age_tier]
    limit: 500
    x_axis_label: "Age Tier"
    y_axis_orientation: [left,right]
    y_axis_labels: ["Average Selling Price ($)","# orders"]

  - name: top_brands_within_category
    title: "Top Brands"
    type: table
    explore: order_items
    dimensions: [products.brand_name]
    measures: [order_items.count, order_items.total_sale_price]
    listen:
      date: orders.created_date
      category: products.category_name
      department: products.department_name
    sorts: [order_items.total_sale_price desc]
    limit: 25

#-------------------------
- dashboard: 4_user_lookup
#-------------------------
  title: "4) User Lookup"
  show_applied_filters: false
  layout: grid
  rows:
    - elements: [lifetime_orders, total_items_returned, lifetime_spend]
      height: 180
    - elements: [user_info, item_order_history, favorite_categories]
      height: 400

  filters:

  - name: email
    title: 'Email'
    type: field_filter
    explore: users
    field: users.email

  elements:

  - name: user_info
    title: "User Info"
    type: looker_single_record
    explore: order_items
    dimensions: [users.id, users.email, users.name, users.created_month, users.age,
      users.state, users.city, users.zip, users.history]
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    limit: 500
    show_null_labels: false

  - name: lifetime_orders
    title: "Lifetime Orders"
    type: single_value
    explore: order_items
    measures: [orders.count]
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    sorts: [orders.count desc]
    limit: 500
    show_null_labels: false

  - name: total_items_returned
    title: "Total Items Returned"
    type: single_value
    explore: order_items
    measures: [order_items.count]
    filters:
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    sorts: [order_items.count desc]
    limit: 500
    show_null_labels: false

  - name: lifetime_spend
    title: "Lifetime Spend"
    type: single_value
    explore: order_items
    measures: [order_items.total_sale_price]
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    sorts: [order_items.total_sale_price desc]
    limit: 500
    show_null_labels: false

  - name: item_order_history
    title: "Items Order History"
    type: table
    explore: order_items
    dimensions: [products.item_name]
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    sorts: [products.item_name]
    limit: 500

  - name: favorite_categories
    title: "Favorite Categories"
    type: looker_pie
    explore: order_items
    dimensions: [products.category_name]
    measures: [order_items.count]
    listen:
      email: users.email
    filters:
      orders.created_date: 99 years
    sorts: [order_items.count desc]
    limit: 500

#----------------------------------------
- dashboard: sample_dashboard_with_images
#----------------------------------------
  title: 'Product Dashboard With Images'
  layout: grid
  tile_size: 100

#  filters:

  rows:
  - height: 1000
    elements: [dashboard_with_images]

  elements:
  - name: dashboard_with_images
    title: 'Product Dashboard with Images'
    type: table
    model: thelook
    explore: products
    dimensions: [products.id, products.category_name, products.brand_name, products.item_name, products.product_image,
      products.retail_price]
    filters:
      products.id: '2671,7612,17264,24492,7201,3388,603,19921,25175,3607,21479,21397,14605,10249,1448,4859,6028,14359,17866,9933,24074,22444,11972,11380,4357,3796,16321,9261,6732,13204'
    sorts: [products.id]
    limit: 500
    total: false
