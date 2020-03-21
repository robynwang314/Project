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
First go <a href="https://developer.spotify.com/dashboard/">here</a> to create an account, fill out your information and whitelist your address by adding it to your redirect URI list. A Redirect URI might look something like http://localhost:3000/auth/spotify/callback.

<p>Then in your coding environment, create a new application using PostgreSQL:</p>
<pre><code> $ rails new SpotifyApp --database=postgresql </code></pre>

<p>Once the application is created, enter into your "SpotifyApp" text editor and edit your database.yml file accordingly.</p>

Then go into your Gemfile and install the <a href="https://github.com/guilhermesad/rspotify">rSpotify</a> Gem, which is a ruby wrapper for the Spotify API. 
<pre>gem 'rspotify'</pre>
And execute:
<pre>bundle</pre>

<p>Then change directory into your SpotifyApp project and create the initial database and start the server</p>
<pre><code> $ rake db:create</code></pre>

After, you may refer to <a href="https://github.com/guilhermesad/rspotify">rSpotify</a> and begin building out controllers, routes, views, models, and set up OAuth accordingly.

<div id="usage"></div> 

## Deployment ##
This live project can be view at: http://project-robyn-wang.herokuapp.com/

And it's code can be found at: https://github.com/robynwang314/project

### User Manual ###

Users can either begin a search for an artist from the Navigation Bar without logging in, or choose to sign in with spotify. <br/>
<img src="/app/assets/images/homepage.png" alt="App homepage" width="45%" float="left">

Beginning a search without logging in, will eventually return results with the artist's top 10 tracks, however, users must sign in to perform any further action.<br/>
<img src="/app/assets/images/index.png" alt="Artists results" width="45%" float="left"> &nbsp;&nbsp;&nbsp;<img src="/app/assets/images/else.png" alt="Not logged in search results" width="45%" float="right">

By choosing to sign in, users will be redirected to Spotify's login page for their credentials.<br/>
<img src="/app/assets/images/callback.png" alt="Spotify Login" width="45%" float="left">

After which, the user will be redirected to their user homepage.<br/>
<img src="/app/assets/images/users.png" alt="Users Homepage" width="45%" float="left">

From here, the user may navigate to view their existing playlists...<br/>
<img src="/app/assets/images/playlists.png" alt="User's playlists" width="45%" float="left">

further choose to view the contents of their playlists (up to 100 songs)<br/>
<img src="/app/assets/images/playlist.png" alt="User's playlist" width="45%" float="left">

and remove tracks from an existing playlist<br/>
<img src="/app/assets/images/remove_track.png" alt="Remove_track" width="45%" float="left">

Alternatively, Users who are logged in may search an artist, view their top 10 hits, and add a track to an existing playlist.<br/>
<img src="/app/assets/images/search.png" alt="Search Form" width="45%" float="left">&nbsp;&nbsp;&nbsp;<img src="/app/assets/images/add_track.png" alt="Add_track" width="45%" float="right">

Choosing to add a track will redirect user to the chosen playlist with the track added.<br/>

Clicking "Sign Out" in the Navbar will sign the user out of the app, but the user must go to "My Account" to view their Spotify account page, and to fully log out of the Spotify session. <br/>
  <img src="/app/assets/images/navbar.png" alt="Navbar" float="left">


<div id="contact"></div> 

## Contact ##

<ul>
  <li><a href="http://robynwang-portfolio.herokuapp.com/" target="_blank">Portfolio</a></li>
  <li><a href="https://www.linkedin.com/in/tyrobynwang" target="_blank">LinkedIn</a></li>
  <li><a href="https://github.com/robynwang314" target="_blank">GitHub</a></li>
</ul>
