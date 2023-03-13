
# # ----------------------------------------------------------------------------------
# #
# # Copyright Microsoft Corporation
# # Licensed under the Apache License, Version 2.0 (the "License");
# # you may not use this file except in compliance with the License.
# # You may obtain a copy of the License at
# # http://www.apache.org/licenses/LICENSE-2.0
# # Unless required by applicable law or agreed to in writing, software
# # distributed under the License is distributed on an "AS IS" BASIS,
# # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# # See the License for the specific language governing permissions and
# # limitations under the License.
# # ----------------------------------------------------------------------------------

# <#
# .Synopsis
# Update a virtual machine image template
# .Description
# Update a virtual machine image template

# .Link
# https://docs.microsoft.com/powershell/module/az.imagebuilder/update-AzImageBuilderTemplate
# #>
# function Update-AzImageBuilderTemplate {
#     [OutputType([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IImageTemplate])]
#     [CmdletBinding(DefaultParameterSetName='Name', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
#     param(
#         [Parameter(ParameterSetName='Name', Mandatory, HelpMessage="The name of the image Template.")]
#         [Alias('Name')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
#         [System.String]
#         # The name of the image Template
#         ${ImageTemplateName},
    
#         [Parameter(ParameterSetName='Name', Mandatory, HelpMessage="The name of the resource group.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
#         [System.String]
#         # The name of the resource group.
#         ${ResourceGroupName},
    
#         [Parameter(ParameterSetName='Name', HelpMessage="Subscription credentials which uniquely identify Microsoft Azure subscription.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
#         [System.String]
#         # Subscription credentials which uniquely identify Microsoft Azure subscription.
#         # The subscription Id forms part of the URI for every service call.
#         ${SubscriptionId},
    
#         [Parameter(ParameterSetName='InputObject', Mandatory, ValueFromPipeline, HelpMessage="Identity Parameter.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Path')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.IImageBuilderIdentity]
#         # Identity Parameter
#         # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
#         ${InputObject},
    
#         [Parameter(HelpMessage="Resource location.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Resource location
#         ${Location},
    
#         [Parameter(HelpMessage="Maximum duration to wait while building the image template. Omit or specify 0 to use the default (4 hours).")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.Int32]
#         # Maximum duration to wait while building the image template.
#         # Omit or specify 0 to use the default (4 hours).
#         ${BuildTimeoutInMinute},
    
#         [Parameter(HelpMessage="Specifies the properties used to describe the customization steps of the image, like Image source etc.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IImageTemplateCustomizer[]]
#         # Specifies the properties used to describe the customization steps of the image, like Image source etc
#         # To construct, see NOTES section for CUSTOMIZE properties and create a hash table.
#         ${Customize},
    
#         [Parameter(HelpMessage="The distribution targets where the image output needs to go to.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IImageTemplateDistributor[]]
#         # The distribution targets where the image output needs to go to.
#         # To construct, see NOTES section for DISTRIBUTE properties and create a hash table.
#         ${Distribute},

#         [Parameter(Mandatory, HelpMessage="Describes a virtual machine image source for building, customizing and distributing.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IImageTemplateSource]
#         ${Source},
    
#         [Parameter(HelpMessage="The type of identity used for the image template.")]
#         [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ResourceIdentityType])]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ResourceIdentityType]
#         # The type of identity used for the image template.
#         # The type 'None' will remove any identities from the image template.
#         ${IdentityType},
    
#         [Parameter(HelpMessage="The list of user identities associated with the image template.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IImageTemplateIdentityUserAssignedIdentities]))]
#         [System.Collections.Hashtable]
#         # The list of user identities associated with the image template.
#         # The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
#         ${UserAssignedIdentity},
    
#         [Parameter(HelpMessage="End time of the last run (UTC).")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.DateTime]
#         # End time of the last run (UTC)
#         ${LastRunStatusEndTime},
    
#         [Parameter(HelpMessage="Verbose information about the last run state.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Verbose information about the last run state
#         ${LastRunStatusMessage},
    
#         [Parameter(HelpMessage="State of the last run.")]
#         [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.RunState])]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.RunState]
#         # State of the last run
#         ${LastRunStatusRunState},
    
#         [Parameter(HelpMessage="Sub-state of the last run.")]
#         [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.RunSubState])]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.RunSubState]
#         # Sub-state of the last run
#         ${LastRunStatusRunSubState},
    
#         [Parameter(HelpMessage="Start time of the last run (UTC).")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.DateTime]
#         # Start time of the last run (UTC)
#         ${LastRunStatusStartTime},
    
#         [Parameter(HelpMessage="Error code of the provisioning failure.")]
#         [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ProvisioningErrorCode])]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.ProvisioningErrorCode]
#         # Error code of the provisioning failure
#         ${ProvisioningErrorCode},
    
#         [Parameter(HelpMessage="Verbose error message about the provisioning failure.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Verbose error message about the provisioning failure
#         ${ProvisioningErrorMessage},
    
#         [Parameter(HelpMessage="Specifies the type of source image you want to start with.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Specifies the type of source image you want to start with.
#         ${SourceType},
    
#         [Parameter(HelpMessage="Resource tags.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.IResourceTags]))]
#         [System.Collections.Hashtable]
#         # Resource tags
#         ${Tag},
    
#         [Parameter(HelpMessage="Size of the OS disk in GB. Omit or specify 0 to use Azure's default OS disk size.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.Int32]
#         # Size of the OS disk in GB.
#         # Omit or specify 0 to use Azure's default OS disk size.
#         ${VMProfileOsdiskSizeInGb},
    
#         [Parameter(HelpMessage="Size of the virtual machine used to build, customize and capture images. Omit or specify empty string to use the default (Standard_D1_v2).")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Size of the virtual machine used to build, customize and capture images.
#         # Omit or specify empty string to use the default (Standard_D1_v2).
#         ${VMProfileVmSize},
    
#         [Parameter(HelpMessage="Resource id of a pre-existing subnet.")]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
#         [System.String]
#         # Resource id of a pre-existing subnet.
#         ${VnetConfigSubnetId},
    
#         #region HideParameter
#         [Parameter()]
#         [Alias('AzureRMContext', 'AzureCredential')]
#         [ValidateNotNull()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Azure')]
#         [System.Management.Automation.PSObject]
#         # The credentials, account, tenant, and subscription used for communication with Azure.
#         ${DefaultProfile},
    
#         [Parameter()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Management.Automation.SwitchParameter]
#         # Run the command as a job
#         ${AsJob},
    
#         [Parameter(DontShow)]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Management.Automation.SwitchParameter]
#         # Wait for .NET debugger to attach
#         ${Break},
    
#         [Parameter(DontShow)]
#         [ValidateNotNull()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.SendAsyncStep[]]
#         # SendAsync Pipeline Steps to be appended to the front of the pipeline
#         ${HttpPipelineAppend},
    
#         [Parameter(DontShow)]
#         [ValidateNotNull()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.SendAsyncStep[]]
#         # SendAsync Pipeline Steps to be prepended to the front of the pipeline
#         ${HttpPipelinePrepend},
    
#         [Parameter()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Management.Automation.SwitchParameter]
#         # Run the command asynchronously
#         ${NoWait},
    
#         [Parameter(DontShow)]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Uri]
#         # The URI for the proxy server to use
#         ${Proxy},
    
#         [Parameter(DontShow)]
#         [ValidateNotNull()]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Management.Automation.PSCredential]
#         # Credentials for a proxy server to use for the remote call
#         ${ProxyCredential},
    
#         [Parameter(DontShow)]
#         [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Runtime')]
#         [System.Management.Automation.SwitchParameter]
#         # Use the default credentials for the proxy
#         ${ProxyUseDefaultCredentials}
#         #endregion HideParameter
#     )
    
#     process {
#         try {
#             $Parameter = [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20200214.ImageTemplate]::New()

#             $Parameter.Source = $Source
#             $Null = $PSBoundParameters.Remove('Source')

#             if ($PSBoundParameters.ContainsKey('Location')) {
#                 $Parameter.Location = $Location
#                 $Null = $PSBoundParameters.Remove('Location')
#             }
#             if ($PSBoundParameters.ContainsKey('Tag')) {
#                 $Parameter.Tag = $Tag
#                 $Null = $PSBoundParameters.Remove('Tag')
#             }
#             if ($PSBoundParameters.ContainsKey('BuildTimeoutInMinute')) {
#                 $Parameter.BuildTimeoutInMinute = $BuildTimeoutInMinute
#                 $Null = $PSBoundParameters.Remove('BuildTimeoutInMinute')
#             }
#             if ($PSBoundParameters.ContainsKey('Customize')) {
#                 $Parameter.Customize = $Customize
#                 $Null = $PSBoundParameters.Remove('Customize')
#             }
#             if ($PSBoundParameters.ContainsKey('Distribute')) {
#                 $Parameter.Distribute = $Distribute
#                 $Null = $PSBoundParameters.Remove('Distribute')
#             }
#             if ($PSBoundParameters.ContainsKey('IdentityType')) {
#                 $Parameter.IdentityType = $IdentityType
#                 $Null = $PSBoundParameters.Remove('IdentityType')
#             }
#             if ($PSBoundParameters.ContainsKey('UserAssignedIdentity')) {
#                 $Parameter.IdentityUserAssignedIdentity = $UserAssignedIdentity
#                 $Null = $PSBoundParameters.Remove('UserAssignedIdentity')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatus')) {
#                 $Parameter.LastRunStatus = $LastRunStatus
#                 $Null = $PSBoundParameters.Remove('LastRunStatus')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatusEndTime')) {
#                 $Parameter.LastRunStatusEndTime = $LastRunStatusEndTime
#                 $Null = $PSBoundParameters.Remove('LastRunStatusEndTime')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatusMessage')) {
#                 $Parameter.LastRunStatusMessage = $LastRunStatusMessage
#                 $Null = $PSBoundParameters.Remove('LastRunStatusMessage')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatusRunState')) {
#                 $Parameter.LastRunStatusRunState = $LastRunStatusRunState
#                 $Null = $PSBoundParameters.Remove('LastRunStatusRunState')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatusRunSubState')) {
#                 $Parameter.LastRunStatusRunSubState = $LastRunStatusRunSubState
#                 $Null = $PSBoundParameters.Remove('LastRunStatusRunSubState')
#             }
#             if ($PSBoundParameters.ContainsKey('LastRunStatusStartTime')) {
#                 $Parameter.LastRunStatusStartTime = $LastRunStatusStartTime
#                 $Null = $PSBoundParameters.Remove('LastRunStatusStartTime')
#             }
#             if ($PSBoundParameters.ContainsKey('ProvisioningErrorCode')) {
#                 $Parameter.ProvisioningErrorCode = $ProvisioningErrorCode
#                 $Null = $PSBoundParameters.Remove('ProvisioningErrorCode')
#             }
#             if ($PSBoundParameters.ContainsKey('ProvisioningState')) {
#                 $Parameter.ProvisioningState = $ProvisioningState
#                 $Null = $PSBoundParameters.Remove('ProvisioningState')
#             }
#             if ($PSBoundParameters.ContainsKey('VMProfileOsdiskSizeInGb')) {
#                 $Parameter.VMProfileOsdiskSizeGb = $VMProfileOsdiskSizeInGb
#                 $null = $PSBoundParameters.Remove('VMProfileOsdiskSizeInGb')
#             }
#             if ($PSBoundParameters.ContainsKey('VMProfileVmSize')) {
#                 $Parameter.VMProfileVmsize = $VMProfileVmSize
#                 $Null = $PSBoundParameters.Remove('VMProfileVmSize')
#             }
#             if ($PSBoundParameters.ContainsKey('VnetConfigSubnetId')) {
#                 $Parameter.VnetConfigSubnetId = $VnetConfigSubnetId
#                 $Null = $PSBoundParameters.Remove('VnetConfigSubnetId')
#             }
#             $PSBoundParameters.Add("Parameter", $Parameter)
#             Az.ImageBuilder.internal\Update-AzImageBuilderTemplate @PSBoundParameters
#         } catch {
#             throw
#         }
#     }
# }
    
# SIG # Begin signature block
# MIIjngYJKoZIhvcNAQcCoIIjjzCCI4sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAu0vKyRvWQ5VVQ
# JJz19yVqbHSMECFVKE1D5ryM1cDzu6CCDYEwggX/MIID56ADAgECAhMzAAAB32vw
# LpKnSrTQAAAAAAHfMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjAxMjE1MjEzMTQ1WhcNMjExMjAyMjEzMTQ1WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQC2uxlZEACjqfHkuFyoCwfL25ofI9DZWKt4wEj3JBQ48GPt1UsDv834CcoUUPMn
# s/6CtPoaQ4Thy/kbOOg/zJAnrJeiMQqRe2Lsdb/NSI2gXXX9lad1/yPUDOXo4GNw
# PjXq1JZi+HZV91bUr6ZjzePj1g+bepsqd/HC1XScj0fT3aAxLRykJSzExEBmU9eS
# yuOwUuq+CriudQtWGMdJU650v/KmzfM46Y6lo/MCnnpvz3zEL7PMdUdwqj/nYhGG
# 3UVILxX7tAdMbz7LN+6WOIpT1A41rwaoOVnv+8Ua94HwhjZmu1S73yeV7RZZNxoh
# EegJi9YYssXa7UZUUkCCA+KnAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUOPbML8IdkNGtCfMmVPtvI6VZ8+Mw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDYzMDA5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAnnqH
# tDyYUFaVAkvAK0eqq6nhoL95SZQu3RnpZ7tdQ89QR3++7A+4hrr7V4xxmkB5BObS
# 0YK+MALE02atjwWgPdpYQ68WdLGroJZHkbZdgERG+7tETFl3aKF4KpoSaGOskZXp
# TPnCaMo2PXoAMVMGpsQEQswimZq3IQ3nRQfBlJ0PoMMcN/+Pks8ZTL1BoPYsJpok
# t6cql59q6CypZYIwgyJ892HpttybHKg1ZtQLUlSXccRMlugPgEcNZJagPEgPYni4
# b11snjRAgf0dyQ0zI9aLXqTxWUU5pCIFiPT0b2wsxzRqCtyGqpkGM8P9GazO8eao
# mVItCYBcJSByBx/pS0cSYwBBHAZxJODUqxSXoSGDvmTfqUJXntnWkL4okok1FiCD
# Z4jpyXOQunb6egIXvkgQ7jb2uO26Ow0m8RwleDvhOMrnHsupiOPbozKroSa6paFt
# VSh89abUSooR8QdZciemmoFhcWkEwFg4spzvYNP4nIs193261WyTaRMZoceGun7G
# CT2Rl653uUj+F+g94c63AhzSq4khdL4HlFIP2ePv29smfUnHtGq6yYFDLnT0q/Y+
# Di3jwloF8EWkkHRtSuXlFUbTmwr/lDDgbpZiKhLS7CBTDj32I0L5i532+uHczw82
# oZDmYmYmIUSMbZOgS65h797rj5JJ6OkeEUJoAVwwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVczCCFW8CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAd9r8C6Sp0q00AAAAAAB3zAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgFvw6mz4J
# TORu0mMb4j8uKbLnX1/Y46XZ+Xn8onM7I6AwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBuur0p4kUTFbn3KPGvn7vzIFVgSjYIx88xwuk2nyeJ
# fX1Q0cP8qnOmf1tMMVsjfc5KWUC+1taQK9gtYo97hwGsrnyW/jIW/IomeogB6IYd
# 8C8KweaXYYAB+cHo69vU+niBizADWpqFuXmLQUrzsOiT5LYmsMrtKAeFp4C/xzwX
# vlLrTFL31EvlizG4P1O7SnhyLfwZ9T2BJaPBLe1s3eDiSuhf/GBnTMtJk5bKnbH7
# LRBftdrhgnv9O5W39OJuznOmnH0yvUWRVb4UhUzgkdFyOD6X25vayQWVc/dZSjF1
# XUnosOpZBcxnF6dWcEcOzhZCGCRN4EMmSCqDzytVwcdZoYIS/TCCEvkGCisGAQQB
# gjcDAwExghLpMIIS5QYJKoZIhvcNAQcCoIIS1jCCEtICAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIAWdP3hjgVP4wiRailU6KmPo87F2DxqhapJ0NImn
# /8pWAgZgPOvglhAYEzIwMjEwMzE3MTI1OTAzLjQ0N1owBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2Wggg5MMIIE+TCCA+GgAwIBAgITMwAAATqNjTH3d0lJ
# wgAAAAABOjANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMDEwMTUxNzI4MjJaFw0yMjAxMTIxNzI4MjJaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjhENDEtNEJGNy1CM0I3MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzl8k518P
# lz8JTIXYn/O9OakqcWqdJ8ZXJhAks9hyLB8+ANW7Zngb1t7iw7TmgeooOwMnbhCQ
# QH14UwWd8hQFWexKqVpcIFnY3b15+PYmgVeQ4XKfWJ3PPMjTiXu73epXHj9XX7mh
# S2IVqwEvDOudOI3yQL8D8OOG24b+10zDDEyN5wvZ5A1Wcvl2eQhCG61GeHNaXvXO
# loTQblVFbMWOmGviHvgRlRhRjgNmuv1J2y6fQFtiEw0pdXKCQG68xQlBhcu4Ln+b
# YL4HoeT2mrtkpHEyDZ+frr+Ka/zUDP3BscHkKdkNGOODfvJdWHaV0Wzr1wnPuUgt
# ObfnBO0oSjIpBQIDAQABo4IBGzCCARcwHQYDVR0OBBYEFBRWoJ8WXxJrpslvHHWs
# rQmFRfPLMB8GA1UdIwQYMBaAFNVjOlyKMZDzQ3t8RhvFM2hahW1VMFYGA1UdHwRP
# ME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1
# Y3RzL01pY1RpbVN0YVBDQV8yMDEwLTA3LTAxLmNybDBaBggrBgEFBQcBAQROMEww
# SgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMv
# TWljVGltU3RhUENBXzIwMTAtMDctMDEuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0l
# BAwwCgYIKwYBBQUHAwgwDQYJKoZIhvcNAQELBQADggEBAF435D6kAS2jeAJ8BG1K
# Tm5Az0jpbdjpqSvMLt7fOVraAEHldgk04BKcTmhzjbTXsjwgCMMCS+jX4Toqi0cn
# zcSoD2LphZA98DXeH6lRH7qQdXbHgx0/vbq0YyVkltSTMv1jzzI75Z5dhpvc4Uwn
# 4Fb6CCaF2/+r7Rr0j+2DGCwl8aWqvQqzhCJ/o7cNoYUfJ4WSCHs1OsjgMmWTmglu
# PIxt3kV8iLZl2IZgyr5cNOiNiTraFDq7hxI16oDsoW0EQKCV84nV1wWSWe1SiAKI
# wr5BtqYwJ+hlocPw5qehWbBiTLntcLrwKdAbwthFr1DHf3RYwFoDzyNtKSB/TJsB
# 2bMwggZxMIIEWaADAgECAgphCYEqAAAAAAACMA0GCSqGSIb3DQEBCwUAMIGIMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNy
# b3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0xMDA3MDEy
# MTM2NTVaFw0yNTA3MDEyMTQ2NTVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAy
# MDEwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqR0NvHcRijog7PwT
# l/X6f2mUa3RUENWlCgCChfvtfGhLLF/Fw+Vhwna3PmYrW/AVUycEMR9BGxqVHc4J
# E458YTBZsTBED/FgiIRUQwzXTbg4CLNC3ZOs1nMwVyaCo0UN0Or1R4HNvyRgMlhg
# RvJYR4YyhB50YWeRX4FUsc+TTJLBxKZd0WETbijGGvmGgLvfYfxGwScdJGcSchoh
# iq9LZIlQYrFd/XcfPfBXday9ikJNQFHRD5wGPmd/9WbAA5ZEfu/QS/1u5ZrKsajy
# eioKMfDaTgaRtogINeh4HLDpmc085y9Euqf03GS9pAHBIAmTeM38vMDJRF1eFpwB
# BU8iTQIDAQABo4IB5jCCAeIwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFNVj
# OlyKMZDzQ3t8RhvFM2hahW1VMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsG
# A1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJc
# YmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9z
# b2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIz
# LmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0
# MIGgBgNVHSABAf8EgZUwgZIwgY8GCSsGAQQBgjcuAzCBgTA9BggrBgEFBQcCARYx
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL1BLSS9kb2NzL0NQUy9kZWZhdWx0Lmh0
# bTBABggrBgEFBQcCAjA0HjIgHQBMAGUAZwBhAGwAXwBQAG8AbABpAGMAeQBfAFMA
# dABhAHQAZQBtAGUAbgB0AC4gHTANBgkqhkiG9w0BAQsFAAOCAgEAB+aIUQ3ixuCY
# P4FxAz2do6Ehb7Prpsz1Mb7PBeKp/vpXbRkws8LFZslq3/Xn8Hi9x6ieJeP5vO1r
# VFcIK1GCRBL7uVOMzPRgEop2zEBAQZvcXBf/XPleFzWYJFZLdO9CEMivv3/Gf/I3
# fVo/HPKZeUqRUgCvOA8X9S95gWXZqbVr5MfO9sp6AG9LMEQkIjzP7QOllo9ZKby2
# /QThcJ8ySif9Va8v/rbljjO7Yl+a21dA6fHOmWaQjP9qYn/dxUoLkSbiOewZSnFj
# nXshbcOco6I8+n99lmqQeKZt0uGc+R38ONiU9MalCpaGpL2eGq4EQoO4tYCbIjgg
# tSXlZOz39L9+Y1klD3ouOVd2onGqBooPiRa6YacRy5rYDkeagMXQzafQ732D8OE7
# cQnfXXSYIghh2rBQHm+98eEA3+cxB6STOvdlR3jo+KhIq/fecn5ha293qYHLpwms
# ObvsxsvYgrRyzR30uIUBHoD7G4kqVDmyW9rIDVWZeodzOwjmmC3qjeAzLhIp9cAv
# VCch98isTtoouLGp25ayp0Kiyc8ZQU3ghvkqmqMRZjDTu3QyS99je/WZii8bxyGv
# WbWu3EQ8l1Bx16HSxVXjad5XwdHeMMD9zOZN+w2/XU/pnR4ZOC+8z1gFLu8NoFA1
# 2u8JJxzVs341Hgi62jbb01+P3nSISRKhggLWMIICPwIBATCCAQChgdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAAclkdn1j1gXgdyvYj41
# B8rkNZ4IoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJ
# KoZIhvcNAQEFBQACBQDj+9iuMCIYDzIwMjEwMzE3MDkyMzU4WhgPMjAyMTAzMTgw
# OTIzNThaMHYwPAYKKwYBBAGEWQoEATEuMCwwCgIFAOP72K4CAQAwCQIBAAIBAQIB
# /zAHAgEAAgIRfjAKAgUA4/0qLgIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# AFdULnwhRpFq41SZ/8kevgc+qJzrpNg/UqwC3Hi9LucRE5jK8rWetukFiDQsk8or
# OAvDUwRkmY4ANsQyqCHT0THxJ+J/fwwOVbPVVF32+HUbVhS/p4kU+otysEIray/3
# pxYHMxLXZAX4pucZvMugu4V3ajkbMp6SEToZLgIOcueZMYIDDTCCAwkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAE6jY0x93dJScIAAAAA
# ATowDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQgsomcloXn55Hhg9wrifFSXmD8yOKuT8fkkgWXGAq6
# 08AwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCCfr9CEB6ksX/sF2y9+7wY5
# P6KEv1zhyCjk1/VpQ3y0bTCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABOo2NMfd3SUnCAAAAAAE6MCIEIBKD+UjOQwAO6t0FKAnmuq2f
# 6qWdbCqSjG8V3IwIGR0qMA0GCSqGSIb3DQEBCwUABIIBAAJwuz0i+V9nKCf8sdsC
# 2BARah8FFDjLuJxUvb8KtS8Xs5qoKiKHWsxpryc2aQKH71e15O1ZMMZe8VA3rlfD
# sBGO6LFltsoPogdH/a8ayvGEVMSCLU8oyjVhaNj9mxbxkB1A2aICefP8TrsMldF4
# 5wVxrn81Tq96lxgyTqX8RDrpEDd5CY+LYRE5vbgbKQS2E4igtoAgrg626H3DEnek
# 6dZlkffGq4YwBEmX1B5BZ8WdnWpwr3TfjaBJj55zxPH56ZJTxlXvdLut+ikZZE6t
# mHGTDGrCfeXjoQX4svDT+/lybv+tyl27meMUY1JwIVO+MwQCLFOHrN1v9cXfE4HD
# o/g=
# SIG # End signature block
