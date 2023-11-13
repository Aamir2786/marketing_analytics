select
    account_id,
    email
from
    {{ source('google_sheets', 'salesforce_user')}}