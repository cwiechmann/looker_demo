view: campaign_details {
  sql_table_name: "CHRIS_DEMO"."CAMPAIGN_DETAILS"
    ;;

  dimension: booking_budget_limit {
    type: number
    sql: ${TABLE}."BOOKING_BUDGET_LIMIT" ;;
  }

  dimension_group: booking_current_brochure {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BOOKING_CURRENT_BROCHURE" ;;
  }

  dimension: booking_forecast {
    type: string
    sql: ${TABLE}."BOOKING_FORECAST" ;;
  }

  dimension: booking_forecast_all {
    type: string
    sql: ${TABLE}."BOOKING_FORECAST_ALL" ;;
  }

  dimension: booking_id {
    type: string
    sql: ${TABLE}."BOOKING_ID" ;;
  }

  dimension: booking_min_clicks_to_limit {
    type: number
    sql: ${TABLE}."BOOKING_MIN_CLICKS_TO_LIMIT" ;;
  }

  dimension: booking_used_budget {
    type: string
    sql: ${TABLE}."BOOKING_USED_BUDGET" ;;
  }

  dimension: count_brochure_clicks {
    type: number
    sql: ${TABLE}."COUNT_BROCHURE_CLICKS" ;;
  }

  dimension_group: cpclimited_reached {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."cpc-limited_reached" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."CUSTOMER" ;;
  }

  dimension: days_until_end {
    type: number
    sql: ${TABLE}."DAYS_UNTIL_END" ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_UPDATED" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
