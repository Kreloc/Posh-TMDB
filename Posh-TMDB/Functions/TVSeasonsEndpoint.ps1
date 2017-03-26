Function Get-TMDBtvShowSeaonsById
{
    [CmdletBinding()]
    param 
    (
		[Parameter(Mandatory=$True,
		ValueFromPipeline=$True, ValueFromPipelinebyPropertyName=$true)]            
        $Id,
		[Parameter(Mandatory=$True,
		ValueFromPipelinebyPropertyName=$true)]            
        $SeasonNumber,        
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
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/season/' + $SeasonNumber + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'tv/' + $Id + '/season/' + $SeasonNumber + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}
# Changes API Call

