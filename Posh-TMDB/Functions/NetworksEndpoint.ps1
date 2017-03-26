Function Get-TMDBNetworks
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
            $url = $tmdb.BaseUri + 'network/' + $Id + $tmdb.query() + '&' + $tmdb.SetOptions($options)
        }
        else 
        {
            $url = $tmdb.BaseUri + 'network/' + $Id + $tmdb.query()            
        }        
        Invoke-RestMethod -Uri $url
    }
    End{}
}