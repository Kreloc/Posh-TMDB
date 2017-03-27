# Create class for object that all TMDB calls will use.
class MovieDB {
    [String]$ApiKey = "YOUR_APIKEY"
    [String]$BaseUri = "http://api.themoviedb.org/3/"
    [String]$ImagesUri = "http://image.tmdb.org/t/p/"
    [String] query()
    { 
        return Write-Output -InputObject "?api_key=$($this.ApiKey)"        
    }
    [String]SetOptions($options)
    {
        try 
        {
           $jsonObj = $options | ConvertFrom-Json -ErrorAction Stop
        }
        catch 
        {
            throw "Please enter a Here-String or json file as input for `$options"
        }
        $optionsQuery = ''
        $Properties = $jsonObj |
        Get-Member |
        Where-Object {$_.MemberType -like "NoteProperty"} |
        Select-Object -ExpandProperty Name
        ForEach($property in $Properties)
        {
            $optionsQuery = $optionsQuery + "&" + $property + "=" + $jsonObj.$($property)
        }
        # Remove leadinng & , add in actual function instead
        return $optionsQuery.TrimStart("&")   
    }
}
# initialize object into $tmdb variable with scope for Module
$script:tmdb = [MovieDB]::new()
If($tmdb.ApiKey -eq "YOUR_APIKEY")
{
    # throw "Please modify TMDBClass.ps1 by changing `$ApiKey from $ApiKey to your actual`n API from The Movie Database https://www.themoviedb.org/documentation/api"
    Write-Warning "To avoid being prompted for API key when importing, edit the `$ApiKey in TMDBClass.ps1"
    $tmdb.ApiKey = Read-Host "Please enter your TMDB Api Key"
}
# global for testing
# $Global:tmdb = [MovieDB]::new()
# Example of data to give $options parameter of SetOptions method
# #         $options = @"
# # {'language':'en_US',
# # 'sort_by':'popularity.desc'
# # }
# # "@

#moved Genres endpoint functions to GenresEndpoint.ps1

# moved Movies endpoint functions to MoviesEndpoint.ps1

# moved Search endpoint function to SearchEndpoint.ps1
# Moved Discover endpoint functions to DiscoverEndpoints.ps1
