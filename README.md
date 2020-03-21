# SpotifyApp #

SpotifyApp is Robyn Wang's final project for UC Berkley's Full Stack Coding Bootcamp. This app demonstrates her ability to build a Ruby on Rails Application, incorporate an external API, test with RSpec, and deploy to Heroku. 

## Table of Contents ##
<ul> 
  <li><a href="#about"> About </a></li>
  <li><a href="#technologies"> Built With </a></li>
  <li><a href="#setup"> Getting Started </a></li>
  <li><a href="#usage"> Deployment </a></li>
  <li><a href="#contact"> Contact</a></li>
</ul>

<div id="about"></div> 

## About ##
This allows users to: 
  1. seach artists and view the artist's top 10 songs
  2. add a top 10 song to their existing playlist
  3. view their existing playlists 
  4. view the songs in their existing playlists (up to 100 songs)
  5. remove a track from their existing playlist 

<div id="technologies"></div> 

## Built With ##
Spotify App integrates the following: 

<ul>
  <li><a href="https://getbootstrap.com/">Bootstrap</a></li>
  <li><a href="https://github.com/guilhermesad/rspotify">rSpotify Gem</a></li>
  <li><a href="#">OAuth</a></li>
  <li><a href="#">RSpec</a></li>
</ul>


<div id="setup"></div> 

## Getting Started ##
-----

### Set Up Database ###

------


<div id="usage"></div> 

## Deployment ##
This live project can be view at: http://project-robyn-wang.herokuapp.com/

And it's code can be found at: https://github.com/robynwang314/project

### User Manual ###

<p>Users can either begin a search for an artist from the Navigation Bar without logging in, or choose to sign in with spotify.</p>
  <img src="/app/assets/images/homepage.png" alt="App homepage" width="45%" float="left">

<p>Beginning a search without logging in, will eventually return results with the artist's top 10 tracks, however, users must sign in to perform any further action.</p>
  <img src="/app/assets/images/index.png" alt="Artists results" width="45%" float="left"> &nbsp;&nbsp;&nbsp;
  <img src="/app/assets/images/else.png" alt="Not logged in search results" width="45%" float="right">

<p>By choosing to sign in, users will be redirected to Spotify's login page for their credentials.</p>
  <img src="/app/assets/images/callback.png" alt="Spotify Login" width="45%" float="left">

<p>After which, the user will be redirected to their user homepage. </p>
  <img src="/app/assets/images/users.png" alt="Users Homepage" width="45%" float="left">

<p>From here, the user may navigate to view their existing playlists...</p>
  <img src="/app/assets/images/playlists.png" alt="User's playlists" width="45%" float="left">

  <p>further choose to view the contents of their playlists (up to 100 songs) </p>
  <img src="/app/assets/images/playlist.png" alt="User's playlist" width="45%" float="left">

  <p>and remove tracks from an existing playlist</p>
  <img src="/app/assets/images/remove_track.png" alt="Remove_track" width="45%" float="left">

<p>Alternatively, Users who are logged in may search an artist, view their top 10 hits, and add a track to an existing playlist.</p>
  <img src="/app/assets/images/search.png" alt="Search Form" width="45%" float="left"> &nbsp;&nbsp;&nbsp;
  <img src="/app/assets/images/add_track.png" alt="Add_track" width="45%" float="right">

<p>Choosing to add a track will redirect user to the chosen playlist with the track added.</p>>

<p>Clicking "Sign Out" in the Navbar will sign the user out of the app, but the user must go to "My Account" to view their Spotify account page, and to fully log out of the Spotify session. </p>
  <img src="/app/assets/images/navbar.png" alt="Navbar" float="left">


<div id="contact"></div> 

## Contact ##

<ul>
  <li><a href="http://robynwang-portfolio.herokuapp.com/" target="_blank">Portfolio</a></li>
  <li><a href="https://www.linkedin.com/in/tyrobynwang" target="_blank">LinkedIn</a></li>
  <li><a href="https://github.com/robynwang314" target="_blank">GitHub</a></li>
</ul>
