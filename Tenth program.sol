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

    function setMovie() public 
    {
        movie = Movie('Llx', 'Jane', 2026001);
    }

    function getMovieID() public view returns (uint256)
    {
        return movie.Movie_id;
    }

    function getMovieDirector() public view returns (string memory)
    {
        return movie.Director;
    }

    function getMovieTitle() public view returns (string memory)
    {
        return movie.Title;
    }
}
