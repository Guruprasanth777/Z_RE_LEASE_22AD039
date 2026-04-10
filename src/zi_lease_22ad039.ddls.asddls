@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Lease 22AD039'
define root view entity ZI_LEASE_22AD039
  as select from zre_ls_22ad039
{
  key lease_uuid            as LeaseUUID,
  lease_id                  as LeaseID,
  tenant_id                 as TenantID,
  property_id               as PropertyID,
  start_date                as StartDate,
  end_date                  as EndDate,
  
  @Semantics.amount.currencyCode: 'CurrencyCode'
  monthly_rent              as MonthlyRent,
  currency_code             as CurrencyCode,

  @Semantics.user.createdBy: true
  created_by                as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at                as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by           as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at           as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at     as LocalLastChangedAt
}
