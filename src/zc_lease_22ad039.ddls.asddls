@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Lease 22AD039'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_LEASE_22AD039
  provider contract transactional_query
  as projection on ZI_LEASE_22AD039
{
  key LeaseUUID,
  
  @Search.defaultSearchElement: true
  LeaseID,
  
  @Search.defaultSearchElement: true
  TenantID,
  
  PropertyID,
  StartDate,
  EndDate,
  MonthlyRent,
  CurrencyCode,
  
  /* Exposing the ETag field is required for updates */
  LocalLastChangedAt
}
