#__________________________________________________________________
#
# Intersight Certificate Management Policy
# GUI Location: Policies > Create Policy > Certificate Management
#__________________________________________________________________

resource "intersight_certificatemanagement_policy" "certificate" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  certificates = [
    {
      additional_properties = ""
      certificate = [
        {
          additional_properties = ""
          class_id              = "x509.Certificate"
          issuer = [
            {
              additional_properties = ""
              class_id              = "pkix.DistinguishedName"
              common_name           = "testserver"
              country               = ["US"]
              locality              = ["Flushing"]
              object_type           = "pkix.DistinguishedName"
              organization          = ["Cisco Systems"]
              organizational_unit   = ["Richfield Lab"]
              state                 = ["Michigan"]
            }
          ]
          not_after       = "2022-10-10T19:31:28Z"
          not_before      = "2021-10-10T19:31:28Z"
          object_type     = "x509.Certificate"
          pem_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURkekNDQWw4Q0ZEamVCc0FuMGxHV2o4dEpKYXVPZ2M4UHVxdEFNQTBHQ1NxR1NJYjNEUUVCQ3dVQU1IZ3gKQ3pBSkJnTlZCQVlUQWxWVE1SRXdEd1lEVlFRSURBaE5hV05vYVdkaGJqRVJNQThHQTFVRUJ3d0lSbXgxYzJocApibWN4RmpBVUJnTlZCQW9NRFVOcGMyTnZJRk41YzNSbGJYTXhGakFVQmdOVkJBc01EVkpwWTJobWFXVnNaQ0JNCllXSXhFekFSQmdOVkJBTU1DblJsYzNSelpYSjJaWEl3SGhjTk1qRXhNREV3TVRrek1USTRXaGNOTWpJeE1ERXcKTVRrek1USTRXakI0TVFzd0NRWURWUVFHRXdKVlV6RVJNQThHQTFVRUNBd0lUV2xqYUdsbllXNHhFVEFQQmdOVgpCQWNNQ0Vac2RYTm9hVzVuTVJZd0ZBWURWUVFLREExRGFYTmpieUJUZVhOMFpXMXpNUll3RkFZRFZRUUxEQTFTCmFXTm9abWxsYkdRZ1RHRmlNUk13RVFZRFZRUUREQXAwWlhOMGMyVnlkbVZ5TUlJQklqQU5CZ2txaGtpRzl3MEIKQVFFRkFBT0NBUThBTUlJQkNnS0NBUUVBeW8zNGYrdGp4T3p5cDdiT1NDWUt6TWlPcW5uQUpsYUpWMTZ2REtyeApvQitiZmczdURFdXhMa0pNazFXcmRLVlR2ZUVSZFpmdWExWFNOWDdVVCtGNHhJblh6cGIrbVlLRHpBUDFaajBBClo3UityTldVQnU0MWZWSmUwTlVqMTJyOURqT1JZY21yZk96cEZVOGhDcHR1UzVpbFcvM1M0NkdLWG5WdE1rZEEKRUpVQlhxOExrZzRqL1VySFY1TW80bzdxdjVQQm0wM3lDNjZ4NUdJU09FZ012MlNnWmQ1eW1zV1FscDBUanR5ZApLeWlEUUExNklsR2VrR1d6T2FBamZvRjBTUnZxUzIycFh5dnZ4T01WTUZmK0loeXNEOUV2SkJ2ZW1JaHFsUkh6CjU4Uk1VVm5IaW4vK0lxQ2RqNE5uRTlVZWpzdW9TRUpuNGxDSEJsREIzVmJYTFFJREFRQUJNQTBHQ1NxR1NJYjMKRFFFQkN3VUFBNElCQVFBUVdGNWVsQytwbHR4L0s4UG1uSTQzRmYxOEI0K0FySDQ1L3BOWjBsY1VQUVpQeFRyTgpjd0FRZVV5clhRZmJUNDdUL3ZGVmwxZTdEU1J4M1FwN1BDOGpwTnllTjJqaHZmSHUwdWFLeU9saGdhUkVoR3VPCkRNcXRWWng3emowb1Z5dGJhMGxNS1pXYk4yYW5oSGJuZzVqVjN0UWFVT1l2cEVneEJtUVJ4RXI1Y2t3eFdNM1YKRFpvekZRUE5hNzdwcEZzcjBScGgrcDZLaEtDQ0I5SzRyb0lwbFVJOEdGa1E1NXhUWCtzdDJhZkRPUDlmcUwrYwpUamRGa2g2dmg1enU1b21pdW56WUt4eW43Z2JTSVg3bm5hWXZYeUcxR2IvRERIRjErTmJ1bUZWWklPM0V1QXd1CmV2UkxqVWZ1a0w3djFDVHpnSlh2SXVSQmEvdFNjWnNIczJ1UgotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0t"
          subject = [
            {
              additional_properties = ""
              class_id              = "pkix.DistinguishedName"
              common_name           = "testserver"
              country               = ["US"]
              locality              = ["Flushing"]
              object_type           = "pkix.DistinguishedName"
              organization          = ["Cisco Systems"]
              organizational_unit   = ["Richfield Lab"]
              state                 = ["Michigan"]
            }
          ]
          sha256_fingerprint  = "B7:14:20:22:69:67:97:A9:64:E3:07:7D:A6:AC:24:59:F8:7B:C3:06:FE:2D:7E:81:92:5E:A5:C1:84:E0:44:22"
          signature_algorithm = "SHA256-RSA"
        }
      ]
      class_id          = "certificatemanagement.Imc"
      enabled           = var.enabled
      is_privatekey_set = true
      object_type       = "certificatemanagement.Imc"
      privatekey        = var.private_key
    }
  ]
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
