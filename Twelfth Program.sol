//SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract learnNestedMapping
{
    struct Movie
    {
        string Title;
        string Director;
        uint256 Movie_id;
    }

    mapping(address => mapping(uint256 => Movie)) public movie;

    function setMovie(string memory _Title, string memory _Director, uint256 _Movie_id) public 
    {
        movie[msg.sender][_Movie_id] = Movie(_Title, _Director, _Movie_id);
    }

    function getMovies(uint256 _Movie_id) public view returns (string memory, string memory, uint256)
    {
        Movie memory m = movie[msg.sender][_Movie_id];
        return (m.Title, m.Director, m.Movie_id);
    }
}
