select
    account_id,
    email
from
    {{ source('salesforce', 'salesforce_user')}}