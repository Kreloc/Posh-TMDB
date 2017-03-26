# Purpose - Search for a movie by a string and return lots of information
# about it from The Movie Database
# 
[CmdletBinding()]
param 
(
    $Title
)

$results = Search-TMDBMovie "$Title"
$BestResult = $results.results[0]

# Get movie information
Get-TMDBMovieById -Id $BestResult.id

# Get recommendations from movie
Get-TMDBMovieRecommendations -Id $BestResult.id