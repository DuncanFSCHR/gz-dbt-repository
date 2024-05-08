SELECT 
    average_basket,
    operational_margin-ads_cost as ads_margin,
    date_date,
    margin,
    average_basket,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    shipping_fee,
    logcost,
    ship_cost

FROM {{ ref('int_campaign_days') }}
FULL OUTER JOIN {{ ref('finance_days') }} 
    USING (date_date)
ORDER BY date_date DESC
