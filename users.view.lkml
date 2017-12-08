view: users {
  # DIMENSIONS #

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql:${TABLE}.age ;;
  }

  measure: average_age {
    type: average
    value_format_name: decimal_2
    sql: ${age} ;;
  }

  dimension: age_tier {
    type: tier
    style: integer
    sql: ${age} ;;
    tiers: [0, 10, 20, 30, 40, 50, 60, 70, 80]
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
    drill_fields: [state]
    # Drill on a dimension will run the same query with the selected country
    # as a filter and swap the country dimension with the state dimension
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
    link: {
      label: "User Lookup"
      url: "/dashboards/thelook/4_user_lookup?email={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
      }
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    sql: CONCAT(${TABLE}.first_name,' ', ${TABLE}.last_name) ;;
  }


#This dimension uses the html parameter to link to a custom explore showing the users order or item history
  dimension: history {
    sql: ${TABLE}.id ;;
    html: <a href="/explore/thelook/orders?fields=orders.detail*&f[users.id]={{ value }}">Orders</a>
      | <a href="/explore/thelook/order_items?fields=order_items.detail*&f[users.id]={{ value }}">Items</a>
      ;;
  }

  dimension: state {
    type: string
    sql:${TABLE}.state  ;;
    drill_fields: [zip, city]
    map_layer_name: us_states  ## Map layers allow plotting on zoomable map, us_states and others are built in
  }                            ## but you can add custom topo JSON maps as well -- see discourse.looker.com

  dimension: is_lower_48{
    hidden: yes
    type: yesno
    sql: NOT(${state}='Alaska' or ${state}='Hawaii') ;;
  }

  dimension: zip {
    label: "Zipcode"
    #label changes how the field appears in the UI
    sql: ${TABLE}.zip ;;
    type: zipcode
    drill_fields: [city]
  }



  # MEASURES #

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_percent_of_total {
    label: "Count (Percent of Total)"
    type: percent_of_total
    drill_fields: [detail*]
    value_format: "0\%"       #Percent_of_total automatically adds multiply by 100 so use value_format
    sql: ${count} ;;
  }

  # SETS #

  set: detail {
    fields: [id, name, email, city, state, country, zip, gender, age, history,
      # Counters for views that join 'users'
      orders.count, order_items.count]
  }
}
