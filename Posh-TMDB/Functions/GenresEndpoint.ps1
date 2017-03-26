#region Genres endpoint
Function Get-TMDBMovieGenres
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
            $url = $tmdb.BaseUri + 'genre/movie/list' + $tmdb.query() + "&" + $tmdb.SetOptions($options)           
        }
        else 
        {
            $url = $tmdb.BaseUri + 'genre/movie/list' + $tmdb.query()          
        }
        Write-Verbose "Sending a Url of $url"
        Invoke-RestMethod -Uri $url
    }
    End{} 
}
Function Get-TMDBtvShowGenres
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
            $url = $tmdb.BaseUri + 'genre/tv/list' + $tmdb.query() + "&" + $tmdb.SetOptions($options)           
        }
        else 
        {
            $url = $tmdb.BaseUri + 'genre/tv/list' + $tmdb.query()          
        }
        Write-Verbose "Sending a Url of $url"
        Invoke-RestMethod -Uri $url
    }
    End{} 
}
Function Get-TMDBMovieByGenreId
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$True,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $Id,
		[Parameter(Mandatory=$False)]            
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
             $url = $tmdb.BaseUri + 'genre/' + $Id + '/movies' + $tmdb.query() + "&" + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'genre/' + $Id + '/movies' + $tmdb.query()            
        }
        Invoke-RestMethod -Uri $url
    }
    End{}   
}
#endregion Genres endpoint