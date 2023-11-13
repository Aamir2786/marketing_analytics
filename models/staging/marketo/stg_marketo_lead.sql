select
    account_id,
    email
from
    {{ source('marketo', 'marketo_lead')}}