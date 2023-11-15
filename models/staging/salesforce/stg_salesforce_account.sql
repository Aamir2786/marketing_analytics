select
    account_id,
    account_name,
    billing_country
from
    {{ source('salesforce', 'salesforce_account')}}