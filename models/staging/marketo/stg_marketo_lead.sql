select
    lead_id,
    email
from
    {{ source('marketo', 'marketo_lead')}}