with accounts as (
    select
        account_id,
        account_name,
        billing_country
    from {{ ref('stg_salesforce_account') }}
)

select
    *
from
    accounts
where
    account_id in (
        select
            account_id
        from
            {{ ref('stg_salesforce_user') }}
        where
            email is not null and account_id is not null
    )