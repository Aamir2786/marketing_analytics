with salesforce_users as (
    select
        account_id,
        email
    from {{ ref('stg_salesforce_user') }}
    where email is not null and account_id is not null
),
marketo_users as (
    select
        lead_id,
        email
    from {{ ref('stg_marketo_lead') }}
),
joined as (
    select
    lead_id,
    account_id
    from salesforce_users
    left join marketo_users
    on salesforce_users.email = marketo_users.email
)

select * from joined