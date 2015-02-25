#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------


#Sample function that provides the location of the script
function Get-ScriptDirectory
{
<#
	.SYNOPSIS
		Get-ScriptDirectory returns the proper location of the script.

	.OUTPUTS
		System.String
	
	.NOTES
		Returns the correct path within a packaged executable.
#>
	[OutputType([string])]
	param ()
	if ($hostinvocation -ne $null)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory

# variables that are truly 'global' I try to preface with 'atlas'
[System.String]$atlasExportsPath = 'C:\'
[System.String]$atlasQuickExportsPath = 'C:\'
[System.String]$atlasReportsPath = 'C:\'
[System.String]$atlasInputPath = 'C:\'
[System.String]$atlasLogsPath = 'C:\'
[System.String]$atlasScriptDirectory = Get-ScriptDirectory

[System.Array]$adForestDomainsQuery = (Get-ADForest).Domains
[System.Array]$atlasAdDomains = @()
[System.String]$adDomain = $null

foreach ($adDomain in $adForestDomainsQuery) {
	
	[System.String]$shortDomain = $null
	
	$shortDomain = ($adDomain.Split('.')[0]).toupper()
	
	$atlasAdDomains += $shortDomain
	
} # end foreach $domain


