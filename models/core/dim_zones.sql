{{ config(materialized='table') }}

select 
    locationid,
    borough,
    zone,
    replace(service_zone,'Boro','Green') service_zone
from {{ ref('taxi_zone_lookup') }}