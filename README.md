# Robyn's SpotifyApp

SpotifyApp is Robyn Wang's final project for UC Berkley's Full Stack Coding Bootcamp. This app showcases her ability to build a Ruby on Rails Application, incorporate an external API, test with RSpec, and deploy to Heroku. 

Link: http://project-robyn-wang.herokuapp.com/
Github: https://github.com/robynwang314/project

This allows users to: 
  1. seach artists and view the artist's top 10 songs
  2. add a top 10 song to their existing playlist
  3. view their existing playlists 
  4. view the songs in their existing playlists (up to 100 songs)
  5. remove a track from their existing playlist 

# User Manual

Users can either begin a search for an artist from the Navigation Bar without logging in, or choose to sign in with spotify. 
  <img src="/app/assets/images/homepage.png" alt="App homepage">

Beginning a search without logging in, will eventually return results with the artist's top 10 tracks, however, users must sign in to perform any further action.
  <img src="/app/assets/images/index.png" alt="Artists results">
  <img src="/app/assets/images/else.png" alt="Not logged in search results">

  By choosing to sign in, users will be redirected to Spotify's login page for their credentials.
  <img src="/app/assets/images/callback.png" alt="Spotify Login">

After which, the user will be redirected to their user homepage. 
  <img src="/app/assets/images/users.png" alt="Users Homepage">

From here, the user may navigate to view their existing playlists...
  <img src="/app/assets/images/playlists.png" alt="User's playlists">

  further choose to view the contents of their playlists (up to 100 songs) 
  <img src="/app/assets/images/playlist.png" alt="User's playlist">

  and remove tracks from an existing playlist
  <img src="/app/assets/images/remove_track.png" alt="Remove_track">

Alternatively, Users who are logged in may search an artist, view their top 10 hits, and add a track to an existing playlist. 
  <img src="/app/assets/images/search.png" alt="Search Form">
  <img src="/app/assets/images/add_track.png" alt="Add_track">

  Choosing to add a track will redirect user to the chosen playlist with the track added. 

Clicking "Sign Out" in the Navbar will sign the user out of the app, but the user must go to "My Account" to view their Spotify account page, and to fully log out of the Spotify session. 
  <img src="/app/assets/images/navbar.png" alt="Navbar">







