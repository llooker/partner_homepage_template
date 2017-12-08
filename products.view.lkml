view: products {
  # DIMENSIONS #

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  # brand name is a string in the db
  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand ;;
    link: {
      label: "Brand Overview Dashboard"
      url: "/dashboards/thelook/2_brand_overview?brand={{ value }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
    #Example of using Google Search and 'I feel lucky' with Liquid to link to external website
    link: {
      label: "Website"
      url: "http://www.google.com/search?q={{ value | encode_uri }}+clothes&btnI"
      icon_url: "http://www.google.com/s2/favicons?domain=www.{{ value | encode_uri }}.com"
      ## If google can't find the favicon in this search it defaults to a globe
    }
    # Link to facebook!
    link: {
      label: "Facebook"
      url: "http://www.google.com/search?q=site:facebook.com+{{ value | encode_uri }}+clothes&btnI"
      icon_url: "https://static.xx.fbcdn.net/rsrc.php/yl/r/H3nktOa7ZMg.ico"
    }

  }

  dimension: category_name {
    type:  string
    sql: ${TABLE}.category ;;
    link: {
      label: "Item Category Dashboard"
      url: "/dashboards/thelook/3_category_lookup?category={{ value  }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }

  }


  dimension: department_name {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type:  string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    value_format_name: usd
    sql: ${TABLE}.retail_price ;;
  }

  dimension: retail_price_tiered {
    type: tier
    style: interval
    sql: ${retail_price} ;;
    tiers: [0, 100, 200, 300, 400, 500, 600, 700, 800, 900, 999]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  # these next two dimensions dyanmically builds an image file based on the product_id fior image dashboard
  dimension: image_file {
    type: string
    sql: (concat('http://www.looker.com/_content/docs/images/image_',${id},'.png')) ;;
  }

  dimension: product_image {
    sql: ${image_file} ;;
    html: <img src="{{ value }}" width="100" height="100"/>;;
  }

  # MEASURES #

  # number of different products
  measure: count {
    type: count
    # set to show when the count field is clicked
    drill_fields: [detail*]
  }

  # number of different brands.
  measure: brand_count {
    type: count_distinct
    sql: ${TABLE}.brand ;;
    drill_fields: [
      # show the brand
      brand_name,
      # a bunch of counts (see the set below)
      sub_detail*,
      # but don't show the brand count, because it will always be 1
      -brand_count]
  }

  #
  measure: category_count {
    type: count_distinct
    sql: ${TABLE}.category ;;
    drill_fields: [category_name, sub_detail*, -category_count]
  }

  measure: department_count {
    type: count_distinct
    sql: ${TABLE}.department ;;
    drill_fields: [department_name, sub_detail*, -department_count]
  }

  measure: brand_list {
    type: list
    list_field: brand_name
  }

  measure: list {
    type: list
    list_field: item_name
  }

  # SETS #

  set: detail {
    fields: [id, item_name, brand_name, category_name, department_name, retail_price,
      # Counters for views that join 'products'
      customers.count, orders.count, order_items.count, inventory_items.count]
  }

  set: sub_detail {
    fields: [category_count, brand_count, department_count, count, customers.count, orders.count, order_items.count, inventory_items.count, products.count]
  }
}
