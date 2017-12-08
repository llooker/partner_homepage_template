view: users_revenue_facts {
  derived_table: {
    sql: SELECT u.id AS "user_id"
        , SUM(CASE WHEN o.created_at <= u.created_at + INTERVAL 24 HOUR THEN oi.sale_price ELSE 0 END) AS 24_hour_revenue
        , SUM(CASE WHEN o.created_at <= u.created_at + INTERVAL 30 DAY THEN oi.sale_price ELSE 0 END) AS 30_day_revenue
        , SUM(CASE WHEN o.created_at <= u.created_at + INTERVAL 90 DAY THEN oi.sale_price ELSE 0 END) AS 90_day_revenue
        , SUM(CASE WHEN o.created_at <= u.created_at + INTERVAL 365 DAY THEN oi.sale_price ELSE 0 END) AS 365_day_revenue
      FROM order_items AS oi
      LEFT JOIN orders AS o ON o.id = oi.order_id
      LEFT JOIN users AS u ON u.id = o.user_id
      GROUP BY 1
       ;;
    indexes: ["user_id"]  #Builds an index on the PDT for faster joins
    persist_for: "12 hours" #Indicates to 'persist' this to the db as a PDT.  I.e. create table.  Table will rebuild after 12 hours
  }

  dimension: user_id {
    primary_key: yes
    hidden: yes
  }

  dimension: 24_hour_revenue {
    type: number
    value_format_name: decimal_2
  }

  dimension: 30_day_revenue {
    type: number
    value_format_name: decimal_2
  }

  dimension: 90_day_revenue {
    type: number
    value_format_name: decimal_2
  }

  dimension: 365_day_revenue {
    type: number
    value_format_name: decimal_2
  }

  dimension: 30_day_revenue_tier {
    type: tier
    tiers: [0, 5, 10, 25, 50, 100, 250]
    sql: ${24_hour_revenue} ;;
  }

  measure: total_24_hour_revenue {
    type: sum
    sql: ${24_hour_revenue} ;;
    value_format_name: decimal_2
  }

  measure: average_24_hour_revenue {
    type: average
    sql: ${24_hour_revenue} ;;
    value_format_name: decimal_2
  }

  measure: total_30_day_revenue {
    type: sum
    sql: ${30_day_revenue} ;;
    value_format_name: decimal_2
  }

  measure: average_30_day_revenue {
    type: average
    sql: ${30_day_revenue} ;;
    value_format_name: decimal_2
  }

  measure: total_90_day_revenue {
    type: sum
    sql: ${90_day_revenue} ;;
    value_format_name: decimal_2
  }

  measure: average_90_day_revenue {
    type: average
    sql: ${90_day_revenue} ;;
    value_format_name: decimal_2
  }

  measure: total_365_day_revenue {
    type: sum
    sql: ${365_day_revenue} ;;
    value_format_name: decimal_2
  }

  measure: average_365_day_revenue {
    type: average
    sql: ${365_day_revenue} ;;
    value_format_name: decimal_2
  }
}
