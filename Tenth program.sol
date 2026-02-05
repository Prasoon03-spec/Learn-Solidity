//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

contract learnStruct
{
    struct Movie
    {
        string Title;
        string Director;
        uint256 Movie_id;
    }

    Movie movie;
    Movie newMovie;

    function setDefaultMovie() public
    {
        movie = Movie('LLXM', 'Mike', 2026001);
    }

    function setNewMovie(string memory _Title, string memory _Director, uint256 _Movie_id) public 
    {
        newMovie = Movie(_Title, _Director, _Movie_id);
    }

    function getDefaultMovieDetails() public view returns (string memory, string memory, uint256)
    {
        return (movie.Title, movie.Director, movie.Movie_id);
    }

    function getNewMovieDetails() public view returns (string memory, string memory, uint256)
    {
        return (newMovie.Title, newMovie.Director, newMovie.Movie_id);
    }
}
