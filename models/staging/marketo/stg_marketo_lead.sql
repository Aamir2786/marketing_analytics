select
    account_id,
    email
from
    {{ source('google_sheets', 'marketo_lead')}}