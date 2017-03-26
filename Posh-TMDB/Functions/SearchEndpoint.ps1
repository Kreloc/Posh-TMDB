Function Search-TMDBMovie
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$True,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $Filter,
		[Parameter(Mandatory=$False)]            
        $options        
    )
    Begin{}
    Process
    {
        # "search/movie"
        If($options)
        {
            $url = $tmdb.BaseUri + 'search/movie/' + $tmdb.query() + "&" + "query" + '=' + $Filter + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'search/movie/' + $tmdb.query() + "&" + "query" + '=' + $Filter            
        }
        
        Invoke-RestMethod $url
    }
    End{}
}
Function Search-TMDBTvShow
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$True,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $Filter,
		[Parameter(Mandatory=$False)]            
        $options           
    )
    Begin{}
    Process
    {
        # url: "search/tv"
        If($options)
        {
            $url = $tmdb.BaseUri + 'search/tv/' + $tmdb.query() + "&query=" + $Filter + "&" + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'search/tv/' + $tmdb.query() + "&query=" + $Filter            
        }        
        Invoke-RestMethod $url
    }
    End{} 
}