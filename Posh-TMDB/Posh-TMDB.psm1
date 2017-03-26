$moduleRoot = Split-Path $MyInvocation.MyCommand.Path

# Importing functions
# will also create $tmdb object
"$moduleRoot\Functions\*.ps1" |
	Resolve-Path |
	ForEach-Object {
		. $_.ProviderPath
	}