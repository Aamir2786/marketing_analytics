select
    activity_timestamp,
    lead_id,
    campaign_id,
    email_send_id
from {{ source('marketo', 'click_email') }}