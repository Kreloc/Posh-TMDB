Function Get-TMDBtvShowById
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
# Get Account States - requires session
Function Get-TMDBtvShowAlternateTitles
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/alternative_titles' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/alternative_titles' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowChanges
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/changes' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/changes' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowContentRatings
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/content_ratings' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/content_ratings' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowRecommendations
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/recommendations' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/recommendations' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowSimilar
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/similiar' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/similar' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowAiringToday
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
            $url = $tmdb.BaseUri + 'tv/airing_today' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/airing_today' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowPopular
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
            $url = $tmdb.BaseUri + 'tv/popular' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/popular' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
Function Get-TMDBtvShowTopRated
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
            $url = $tmdb.BaseUri + 'tv/top_rated' + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/top_rated' + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}