#region Discover endpoint
Function Find-TMDBMovie
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$False,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $options
    )
    Begin
    {
        If(!$tmdb)
        {
            throw "Please run New-akTMDBObject before running other commands"
        }
    }
    Process
    {
        If($options)
        {
            # Set-akTMDBOptions -options $options
            $url = $tmdb.BaseUri + 'discover/movie' + $tmdb.query() + "&" + $tmdb.SetOptions($options)           
        }
        else 
        {
            $url = $tmdb.BaseUri + 'discover/movie' + $tmdb.query()          
        }
        Write-Verbose "Sending a Url of $url"
        Invoke-RestMethod -Uri $url
    }
    End{}      
}
Function Find-TMDBtvShow
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$False,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $options
    )
    Begin
    {
        If(!$tmdb)
        {
            throw "Please run New-akTMDBObject before running other commands"
        }
    }
    Process
    {
        If($options)
        {
            # Set-akTMDBOptions -options $options
            $url = $tmdb.BaseUri + 'discover/tv' + $tmdb.query() + "&" + $tmdb.SetOptions($options)           
        }
        else 
        {
            $url = $tmdb.BaseUri + 'discover/tv' + $tmdb.query()          
        }
        Write-Verbose "Sending a Url of $url"
        Invoke-RestMethod -Uri $url
    }
    End{}   
}
#endregion Discover endpoint