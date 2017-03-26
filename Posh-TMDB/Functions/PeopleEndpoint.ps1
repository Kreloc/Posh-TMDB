Function Get-TMDBPersonById
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
            $url = $tmdb.BaseUri + 'person/' + $Id + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'person/' + $Id + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBPersonMovieCredits
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
            $url = $tmdb.BaseUri + 'person/' + $Id + '/movie_credits' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'person/' + $Id + '/movie_credits' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBPersonTVCredits
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
            $url = $tmdb.BaseUri + 'person/' + $Id + '/tv_credits' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'person/' + $Id + '/tv_credits' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBPersonCombinedCredits
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
            $url = $tmdb.BaseUri + 'person/' + $Id + '/combined_credits' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'person/' + $Id + '/combined_credits' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
