#!/bin/bash

# Spotify Now Playing
# https://github.com/jamieweavis/spotify-now-playing
#
# Simple now playing Spotify plugin for BitBar
#
# by Jamie Weavis <jamie.weavis@gmail.com>
#
# metadata
# <bitbar.title>Spotify Now Playing</bitbar.title>
# <bitbar.version>v1.0.1</bitbar.version>
# <bitbar.author>Jamie Weavis</bitbar.author>
# <bitbar.author.github>jamieweavis</bitbar.author.github>
# <bitbar.desc>Simple now playing Spotify plugin for BitBar</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/jamieweavis/spotify-now-playing/master/demo@2x.gif</bitbar.image>

function tellSpotify() {
  osascript -e "tell application \"Spotify\" to $1"
}

if [ "$1" = 'launch' ]; then
  tellSpotify 'activate'
  exit
fi

if [ "$(osascript -e 'application "Spotify" is running')" = "false" ]; then
  echo "| templateImage=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"
  echo "---"
  echo "Spotify is not running"
  echo "Launch Spotify... | bash='$0' param1=launch terminal=false"
  exit
fi

function truncate() {
  if [ ${#1} -gt 20 ]; then
    echo ${1:0:20}...
  else
    echo $1
  fi
}

track=$(tellSpotify 'name of current track as string');
artist=$(tellSpotify 'artist of current track as string');
album=$(tellSpotify 'album of current track as string');

echo "$(truncate "$artist") - $(truncate "$track") | color=#1db954 image=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"
echo "---"
echo -e "Artist:\t$artist"
echo -e "Album:\t$album"
echo -e "Track:\t$track"
