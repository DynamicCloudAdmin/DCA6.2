#
# Module manifest for module 'Az.Synapse'
#
# Generated by: Microsoft Corporation
#
# Generated on: 01/12/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.Synapse.psm1'

# Version number of this module.
ModuleVersion = '2.2.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '89eceb4f-9916-4ec5-8499-d5cca97a9cae'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Azure Synapse Analytics in Windows PowerShell and PowerShell Core.

For more information on Azure Synapse Analytics, please visit the following: https://azure.microsoft.com/en-us/services/synapse-analytics/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Management.Synapse.dll', 
               'Azure.Analytics.Synapse.Spark.dll', 
               'Azure.Analytics.Synapse.AccessControl.dll', 
               'Azure.Analytics.Synapse.Artifacts.dll', 
               'Azure.Analytics.Synapse.ManagedPrivateEndpoints.dll', 
               'Microsoft.DataTransfer.Gateway.Encryption.dll', 
               'Synapse.Autorest\bin\Az.Synapse.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Synapse.format.ps1xml', 
               'Synapse.Autorest\Az.Synapse.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Az.Synapse.psm1', 'Synapse.Autorest\Az.Synapse.psm1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-AzSynapseKustoPoolLanguageExtension', 'Get-AzSynapseKustoPool', 
               'Get-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'Get-AzSynapseKustoPoolDatabase', 
               'Get-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'Get-AzSynapseKustoPoolDataConnection', 
               'Get-AzSynapseKustoPoolFollowerDatabase', 
               'Get-AzSynapseKustoPoolLanguageExtension', 
               'Get-AzSynapseKustoPoolPrincipalAssignment', 
               'Get-AzSynapseKustoPoolSku', 
               'Invoke-AzSynapseDetachKustoPoolFollowerDatabase', 
               'New-AzSynapseKustoPool', 
               'New-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'New-AzSynapseKustoPoolDatabase', 
               'New-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'New-AzSynapseKustoPoolDataConnection', 
               'New-AzSynapseKustoPoolPrincipalAssignment', 
               'Remove-AzSynapseKustoPool', 
               'Remove-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'Remove-AzSynapseKustoPoolDatabase', 
               'Remove-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'Remove-AzSynapseKustoPoolDataConnection', 
               'Remove-AzSynapseKustoPoolLanguageExtension', 
               'Remove-AzSynapseKustoPoolPrincipalAssignment', 
               'Start-AzSynapseKustoPool', 'Stop-AzSynapseKustoPool', 
               'Update-AzSynapseKustoPool', 'Update-AzSynapseKustoPoolDatabase', 
               'Update-AzSynapseKustoPoolDataConnection'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzSynapseSparkJob', 'Stop-AzSynapseSparkJob', 
               'Submit-AzSynapseSparkJob', 'Wait-AzSynapseSparkJob', 
               'Get-AzSynapseSparkSession', 'Reset-AzSynapseSparkSessionTimeout', 
               'Start-AzSynapseSparkSession', 'Stop-AzSynapseSparkSession', 
               'Get-AzSynapseSparkStatement', 'Invoke-AzSynapseSparkStatement', 
               'Stop-AzSynapseSparkStatement', 'Get-AzSynapseSparkPool', 
               'New-AzSynapseSparkPool', 'Remove-AzSynapseSparkPool', 
               'Update-AzSynapseSparkPool', 'Get-AzSynapseWorkspace', 
               'New-AzSynapseWorkspace', 'Remove-AzSynapseWorkspace', 
               'Update-AzSynapseWorkspace', 'Get-AzSynapseSqlPool', 
               'New-AzSynapseSqlPool', 'Remove-AzSynapseSqlPool', 
               'Get-AzSynapseSqlPoolGeoBackup', 'Get-AzSynapseDroppedSqlPool', 
               'Suspend-AzSynapseSqlPool', 'Resume-AzSynapseSqlPool', 
               'Get-AzSynapseSqlPoolRestorePoint', 'Restore-AzSynapseSqlPool', 
               'New-AzSynapseSqlPoolRestorePoint', 
               'Get-AzSynapseSqlActiveDirectoryAdministrator', 
               'Set-AzSynapseSqlActiveDirectoryAdministrator', 
               'Remove-AzSynapseSqlActiveDirectoryAdministrator', 
               'Get-AzSynapseSqlPoolAuditSetting', 
               'Set-AzSynapseSqlPoolAuditSetting', 
               'Reset-AzSynapseSqlPoolAuditSetting', 
               'Get-AzSynapseSqlAuditSetting', 'Set-AzSynapseSqlAuditSetting', 
               'Reset-AzSynapseSqlAuditSetting', 
               'Get-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Update-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Reset-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Get-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Update-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Reset-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Get-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Update-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Reset-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Update-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Reset-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Enable-AzSynapseSqlAdvancedDataSecurity', 
               'Disable-AzSynapseSqlAdvancedDataSecurity', 
               'Get-AzSynapseSqlAdvancedDataSecurityPolicy', 
               'Get-AzSynapseSqlPoolTransparentDataEncryption', 
               'Set-AzSynapseSqlPoolTransparentDataEncryption', 
               'Remove-AzSynapseSqlPoolRestorePoint', 'Update-AzSynapseSqlPool', 
               'Test-AzSynapseWorkspace', 'Test-AzSynapseSparkPool', 
               'Test-AzSynapseSqlPool', 'New-AzSynapseFirewallRule', 
               'Remove-AzSynapseFirewallRule', 'Get-AzSynapseFirewallRule', 
               'Update-AzSynapseFirewallRule', 'Get-AzSynapseRoleAssignment', 
               'New-AzSynapseRoleAssignment', 'Remove-AzSynapseRoleAssignment', 
               'Get-AzSynapseRoleDefinition', 'Get-AzSynapseRoleScope', 
               'Get-AzSynapseSqlDatabase', 'New-AzSynapseSqlDatabase', 
               'Remove-AzSynapseSqlDatabase', 'Update-AzSynapseSqlDatabase', 
               'Test-AzSynapseSqlDatabase', 
               'Disable-AzSynapseSqlPoolSensitivityRecommendation', 
               'Enable-AzSynapseSqlPoolSensitivityRecommendation', 
               'Get-AzSynapseSqlPoolSensitivityRecommendation', 
               'Get-AzSynapseSqlPoolSensitivityClassification', 
               'Remove-AzSynapseSqlPoolSensitivityClassification', 
               'Set-AzSynapseSqlPoolSensitivityClassification', 
               'Clear-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Set-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSynapseIntegrationRuntime', 
               'Get-AzSynapseIntegrationRuntimeKey', 
               'Get-AzSynapseIntegrationRuntimeMetric', 
               'Get-AzSynapseIntegrationRuntimeNode', 
               'Invoke-AzSynapseIntegrationRuntimeUpgrade', 
               'New-AzSynapseIntegrationRuntimeKey', 
               'Remove-AzSynapseIntegrationRuntime', 
               'Remove-AzSynapseIntegrationRuntimeNode', 
               'Set-AzSynapseIntegrationRuntime', 
               'Sync-AzSynapseIntegrationRuntimeCredential', 
               'Update-AzSynapseIntegrationRuntime', 
               'Update-AzSynapseIntegrationRuntimeNode', 'Get-AzSynapsePipeline', 
               'Remove-AzSynapsePipeline', 'Set-AzSynapsePipeline', 
               'Invoke-AzSynapsePipeline', 'Get-AzSynapsePipelineRun', 
               'Stop-AzSynapsePipelineRun', 'Get-AzSynapseActivityRun', 
               'Get-AzSynapseLinkedService', 'Set-AzSynapseLinkedService', 
               'Remove-AzSynapseLinkedService', 'Get-AzSynapseNotebook', 
               'Set-AzSynapseNotebook', 'Remove-AzSynapseNotebook', 
               'Export-AzSynapseNotebook', 'Set-AzSynapseTrigger', 
               'Get-AzSynapseTrigger', 'Remove-AzSynapseTrigger', 
               'Get-AzSynapseTriggerSubscriptionStatus', 
               'Add-AzSynapseTriggerSubscription', 
               'Remove-AzSynapseTriggerSubscription', 'Start-AzSynapseTrigger', 
               'Stop-AzSynapseTrigger', 'Get-AzSynapseTriggerRun', 
               'Set-AzSynapseDataset', 'Get-AzSynapseDataset', 
               'Remove-AzSynapseDataset', 'Set-AzSynapseDataFlow', 
               'Get-AzSynapseDataFlow', 'Remove-AzSynapseDataFlow', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentScanRecord', 
               'Convert-AzSynapseSqlPoolVulnerabilityAssessmentScan', 
               'Start-AzSynapseSqlPoolVulnerabilityAssessmentScan', 
               'Get-AzSynapseManagedIdentitySqlControlSetting', 
               'Set-AzSynapseManagedIdentitySqlControlSetting', 
               'New-AzSynapseWorkspaceKey', 'Get-AzSynapseWorkspaceKey', 
               'Remove-AzSynapseWorkspaceKey', 'Enable-AzSynapseWorkspace', 
               'New-AzSynapseManagedVirtualNetworkConfig', 
               'Update-AzSynapseManagedVirtualNetworkConfig', 
               'Get-AzSynapseSparkJobDefinition', 
               'Remove-AzSynapseSparkJobDefinition', 
               'Set-AzSynapseSparkJobDefinition', 
               'Get-AzSynapseManagedPrivateEndpoint', 
               'New-AzSynapseManagedPrivateEndpoint', 
               'Remove-AzSynapseManagedPrivateEndpoint', 
               'New-AzSynapseGitRepositoryConfig', 'New-AzSynapseWorkspacePackage', 
               'Get-AzSynapseWorkspacePackage', 'Remove-AzSynapseWorkspacePackage', 
               'Start-AzSynapseIntegrationRuntime', 
               'Stop-AzSynapseIntegrationRuntime', 'Invoke-AzSynapseTriggerRun', 
               'Stop-AzSynapseTriggerRun', 
               'New-AzSynapseLinkedServiceEncryptedCredential', 
               'Get-AzSynapseDataFlowDebugSession', 
               'Add-AzSynapseDataFlowDebugSessionPackage', 
               'Invoke-AzSynapseDataFlowDebugSessionCommand', 
               'Stop-AzSynapseDataFlowDebugSession', 
               'Start-AzSynapseDataFlowDebugSession', 'Get-AzSynapseSqlScript', 
               'Remove-AzSynapseSqlScript', 'Export-AzSynapseSqlScript', 
               'Set-AzSynapseSqlScript', 'Get-AzSynapseSparkConfiguration', 
               'New-AzSynapseSparkConfiguration', 
               'Export-AzSynapseSparkConfiguration', 
               'Remove-AzSynapseSparkConfiguration', 'New-AzSynapseKqlScript', 
               'Get-AzSynapseKqlScript', 'Remove-AzSynapseKqlScript', 
               'Export-AzSynapseKqlScript', 
               'Get-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Enable-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Disable-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Set-AzSynapseLinkConnectionLinkTable', 
               'Get-AzSynapseLinkConnectionLinkTable', 
               'Get-AzSynapseLinkConnectionLinkTableStatus', 
               'Update-AzSynapseLinkConnectionLandingZoneCredential', 
               'Get-AzSynapseLinkConnection', 'Set-AzSynapseLinkConnection', 
               'Start-AzSynapseLinkConnection', 'Stop-AzSynapseLinkConnection', 
               'Remove-AzSynapseLinkConnection', 
               'Get-AzSynapseLinkConnectionDetailedStatus'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'New-AzSynapsePipeline', 'New-AzSynapseLinkedService', 
               'New-AzSynapseNotebook', 'Import-AzSynapseNotebook', 
               'New-AzSynapseTrigger', 'New-AzSynapseDataset', 
               'New-AzSynapseDataFlow', 'Get-AzSynapseSqlPoolAudit', 
               'Set-AzSynapseSqlPoolAudit', 'Remove-AzSynapseSqlPoolAudit', 
               'Get-AzSynapseSqlAudit', 'Set-AzSynapseSqlAudit', 
               'Remove-AzSynapseSqlAudit', 
               'Clear-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Clear-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Clear-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Clear-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Enable-AzSynapseSqlAdvancedThreatProtection', 
               'Disable-AzSynapseSqlAdvancedThreatProtection', 
               'New-AzSynapseSparkJobDefinition', 
               'Set-AzSynapseManagedPrivateEndpoint', 'New-AzSynapseSqlScript', 
               'Import-AzSynapseSqlScript', 'Set-AzSynapseSparkConfiguration', 
               'Import-AzSynapseSparkConfiguration', 'Set-AzSynapseKqlScript', 
               'Import-AzSynapseKqlScript', 'New-AzSynapseLinkConnection'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','Synapse','Analytics'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added breaking change message for  ''-SparkConfigFilePath''. It will be deprecated around the middle of December.
* Updated ''New-AzSynapseSparkPool'' and ''Update-AzSynapseSparkPool'' to support for setting spark pool configuration artifact by ''-SparkCongifuration''. ''-SparkCongifuration'' is an alternative of parameter ''-SparkConfigFilePath''.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIInrQYJKoZIhvcNAQcCoIInnjCCJ5oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDByVeR26VZljhk
# /a3dyaZNBSKEuPaivDdxvMmHYw8Jx6CCDYEwggX/MIID56ADAgECAhMzAAACzI61
# lqa90clOAAAAAALMMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAxWhcNMjMwNTExMjA0NjAxWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQCiTbHs68bADvNud97NzcdP0zh0mRr4VpDv68KobjQFybVAuVgiINf9aG2zQtWK
# No6+2X2Ix65KGcBXuZyEi0oBUAAGnIe5O5q/Y0Ij0WwDyMWaVad2Te4r1Eic3HWH
# UfiiNjF0ETHKg3qa7DCyUqwsR9q5SaXuHlYCwM+m59Nl3jKnYnKLLfzhl13wImV9
# DF8N76ANkRyK6BYoc9I6hHF2MCTQYWbQ4fXgzKhgzj4zeabWgfu+ZJCiFLkogvc0
# RVb0x3DtyxMbl/3e45Eu+sn/x6EVwbJZVvtQYcmdGF1yAYht+JnNmWwAxL8MgHMz
# xEcoY1Q1JtstiY3+u3ulGMvhAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUiLhHjTKWzIqVIp+sM2rOHH11rfQw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDcwNTI5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAeA8D
# sOAHS53MTIHYu8bbXrO6yQtRD6JfyMWeXaLu3Nc8PDnFc1efYq/F3MGx/aiwNbcs
# J2MU7BKNWTP5JQVBA2GNIeR3mScXqnOsv1XqXPvZeISDVWLaBQzceItdIwgo6B13
# vxlkkSYMvB0Dr3Yw7/W9U4Wk5K/RDOnIGvmKqKi3AwyxlV1mpefy729FKaWT7edB
# d3I4+hldMY8sdfDPjWRtJzjMjXZs41OUOwtHccPazjjC7KndzvZHx/0VWL8n0NT/
# 404vftnXKifMZkS4p2sB3oK+6kCcsyWsgS/3eYGw1Fe4MOnin1RhgrW1rHPODJTG
# AUOmW4wc3Q6KKr2zve7sMDZe9tfylonPwhk971rX8qGw6LkrGFv31IJeJSe/aUbG
# dUDPkbrABbVvPElgoj5eP3REqx5jdfkQw7tOdWkhn0jDUh2uQen9Atj3RkJyHuR0
# GUsJVMWFJdkIO/gFwzoOGlHNsmxvpANV86/1qgb1oZXdrURpzJp53MsDaBY/pxOc
# J0Cvg6uWs3kQWgKk5aBzvsX95BzdItHTpVMtVPW4q41XEvbFmUP1n6oL5rdNdrTM
# j/HXMRk1KCksax1Vxo3qv+13cCsZAaQNaIAvt5LvkshZkDZIP//0Hnq7NnWeYR3z
# 4oFiw9N2n3bb9baQWuWPswG0Dq9YT9kb+Cs4qIIwggd6MIIFYqADAgECAgphDpDS
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZgjCCGX4CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgNISvMAcs
# 0ZxaoMvwu8/M4CmkhJZ4nZOq/4r79CaRiX4wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQA4Yn664t4cvi0ArUJDTMcU2kRXRYJOQyOoUPAhTsFR
# i+I/YusvpeaJZZOvasgqGKsvILn4EiVFUwYpLGZAa6I0Dvf2pDA3D08jH+k3A4LF
# 6ceR1kHUKqzhFtVnxfu0ITs6/46y7rYKrQWfaKwEbY4+oc2p2acpe75j18o32+QJ
# Gd8yrktTqrdwHw5X2ZCsA0PpeLgWZKmCtRhhCHrvVhY5w2oFzzMMivyw+20AkKeM
# zEwcFwdihtlbPdvUtPQkIsSFnt8WGv9NXlOJZW08rf4lNG10zeI5O2rHpYppvJNC
# t1jUZREydqOWnoyQZdroTNtM1pja0va1yFdEqgxjZkkCoYIXDDCCFwgGCisGAQQB
# gjcDAwExghb4MIIW9AYJKoZIhvcNAQcCoIIW5TCCFuECAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIA2nL6HCmRlqZmVOWwbmUS3A51ub/Wedy7/ZK0br
# f9IRAgZjc8fQiQAYEzIwMjIxMjAxMTEyNjEzLjQyN1owBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0RDJGLUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEV8wggcQMIIE+KADAgECAhMzAAABsKHjgzLojTvAAAEA
# AAGwMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMDMwMjE4NTE0MloXDTIzMDUxMTE4NTE0Mlowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0RDJG
# LUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAJzGbTsM19KCnQc5RC7V
# oglySXMKLut/yWWPQWD6VAlJgBexVKx2n1zgX3o/xA2ZgZ/NFGcgNDRCJ7mJiOeW
# 7xeHnoNXPlg7EjYWulfk3oOAj6a7O15GvckpYsvLcx+o8Se8CrfIb40EJ8W0Qx4T
# IXf0yDwAJ4/qO94dJ/hGabeJYg4Gp0G0uQmhwFovAWTHlD1ci+sp36AxT9wIhHqw
# /70tzMvrnDF7jmQjaVUPnjOgPOyFWZiVr7e6rkSl4anT1tLv23SWhXqMs14wolv4
# ZeQcWP84rV2Frr1KbwkIa0vlHjlv4xG9a6nlTRfo0CYUQDfrZOMXCI5KcAN2BZ6f
# Vb09qtCdsWdNNxB0y4lwMjnuNmx85FNfzPcMZjmwAF9aRUUMLHv626I67t1+dZoV
# PpKqfSNmGtVt9DETWkmDipnGg4+BdTplvgGVq9F3KZPDFHabxbLpSWfXW90MZXOu
# FH8yCMzDJNUzeyAqytFFyLZir3j4T1Gx7lReCOUPw1puVzbWKspV7ModZjtN/IUW
# dVIdk3HPp4QN1wwdVvdXOsYdhG8kgjGyAZID5or7C/75hyKQb5F0Z+Ee04uY9K+s
# DZ3l3z8TQZWAfYurbZCMWWnmJVsu5V4PR5PO+U6D7tAtMvMULNYibT9+sxVZK/WQ
# er2JJ9q3Z7ljFs4lgpmfc6AVAgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUOt8BJDcB
# Jm4dy6ASZHrXIEfWNj8wHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIw
# XwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3Js
# MGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENB
# JTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcD
# CDANBgkqhkiG9w0BAQsFAAOCAgEA3XPih5sNtUfAyLnlXq6MZSpCh0TF+uG+nhIJ
# 44//cMcQGEViZ2N263NwvrQjCFOni/+oxf76jcmUhcKWLXk9hhd7vfFBhZZzcF5a
# Ns07Uligs24pveasFuhmJ4y82OYm1G1ORYsFndZdvF//NrYGxaXqUNlRHQlskV/p
# mccqO3Oi6wLHcPB1/WRTLJtYbIiiwE/uTFEFEL45wWD/1mTCPEkFX3hliXEypxXz
# dZ1k6XqGTysGAtLXUB7IC6CH26YygKQuXG8QjcJBAUG/9F3yNZOdbFvn7FinZyNc
# IVLxld7h0bELfQzhIjelj+5sBKhLcaFU0vbjbmf0WENgFmnyJNiMrL7/2FYOLsgi
# QDbJx6Dpy1EfvuRGsdL5f+jVVds5oMaKrhxgV7oEobrA6Z56nnWYN47swwouucHf
# 0ym1DQWHy2DHOFRRN7yv++zes0GSCOjRRYPK7rr1Qc+O3nsd604Ogm5nR9QqhOOc
# 2OQTrvtSgXBStu5vF6W8DPcsns53cQ4gdcR1Y9Ng5IYEwxCZzzYsq9oalxlH+ZH/
# A6J7ZMeSNKNkrXPx6ppFXUxHuC3k4mzVyZNGWP/ZgcUOi2qV03m6Imytvi1kfGe6
# YdCh32POgWeNH9lfKt+d1M+q4IhJLmX0E2ZZICYEb9Q0romeMX8GZ+cbhuNsFimJ
# ga/fjjswggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3
# DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIw
# MAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAx
# MDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
# 5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/
# XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1
# hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7
# M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3K
# Ni1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy
# 1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF80
# 3RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQc
# NIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahha
# YQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkL
# iWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV
# 2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIG
# CSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUp
# zxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBT
# MFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jv
# c29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYI
# KwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcN
# AQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1
# OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYA
# A7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbz
# aN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6L
# GYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3m
# Sj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0
# SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxko
# JLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFm
# PWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC482
# 2rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7
# vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYIC0jCC
# AjsCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNv
# MSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0RDJGLUUzREQtQkVFRjElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA
# Ap4vkN3fD5FNBVYZklZeS/JFPBiggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOcytOIwIhgPMjAyMjEyMDEwOTA2
# NDJaGA8yMDIyMTIwMjA5MDY0MlowdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA5zK0
# 4gIBADAKAgEAAgIE2QIB/zAHAgEAAgIRSTAKAgUA5zQGYgIBADA2BgorBgEEAYRZ
# CgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0G
# CSqGSIb3DQEBBQUAA4GBAECK9MFramy9gicImH5psA+aRNjVzkRgXEr2G/n3zCt4
# 0GB7NfGNkgHfU+QOe3ikueh6yRn5VkVbTYzLgZumT7nAJqMWxmAhiiAq6V7+9QVG
# PrZfIsud1SLz5/hi9Mu1cpYY/546CYVb6Xvir1lz2UpmvOp8plJzdhzgOkJEsdPD
# MYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMA
# AAGwoeODMuiNO8AAAQAAAbAwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJ
# AzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgg3OBNS2M1/UnduKHR/Po
# lH6jR5kPH3NsiqYfRB12hUMwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCDN
# BgtDd8uf9KTjGf1G67IfKmcNFJmeWTd6ilAy5xWEoDCBmDCBgKR+MHwxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABsKHjgzLojTvAAAEAAAGwMCIEIPyJ
# 0NFMJRzXKgxZnHH3gusCnuTXpg1uTrdgC9ZNXKzlMA0GCSqGSIb3DQEBCwUABIIC
# AGGH6ieKO3hTsAup3z2YBPwDZy/dvJIGyvJjW24q3LBzfnK9iBEYO23kongSnlSQ
# hUYxmyWQxYFlJTYNHi5Xhz94HjmtrMzl6IlQ1mZG8mXz73YRGRHRC5yFbcffh3Fe
# B0+iKDFpy/zkVfagaOZeWgzFT/n9V3ZHMLIsFKGFyP3sL5rMzfwBG3XlSTUzRHCN
# 0TVS5Hw0CkZlYkz+1vAEXvP398if2eOI1oVRJJiHU5p+Hw38H0X4FG7Vwn8NTqCF
# BaHfJZMydfA2ZBI2zG1Xx/T5uFpf9EDUrUkTC/kXFVEyQgIGyNLZsKu0DI/0/PPV
# k2fqw8L0uS3ganrwhCuAzJmn9t6Kd9t7b4ci8mv8k65zqPCuqJroAXed//H4VVNb
# Fa1hNvFoxRo3bXZjlHW6jKij1upIlvxUs81Nv62eu8k9FHpG+PWAh6A4PyzfJKX8
# LMauasMwsnV9LsAA08XZY5Ew7WPWYHGZJYRqXkqUk1YLB+sxlt1M28zXnnfu/yVN
# de0dy1VrFnhJlA+YJEGR796FxB8yWne2Tb93dgoaWfBoWR5k1eqsUOmO0s2lm5pA
# 0fzYx6w3sr9kJh+4V+iMLdJu5EzyeUN/JPAI0GLbioEB8IJhT1+dNU+4AKVrZSdY
# WWPW71Ge1sDJxrqTkQENQJ+jJvutyGBycNzTToWA9cG7
# SIG # End signature block
