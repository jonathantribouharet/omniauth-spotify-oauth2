# OmniAuth Spotify OAuth2

[![Gem Version](https://badge.fury.io/rb/omniauth-spotify-oauth2.svg)](http://badge.fury.io/rb/omniauth-spotify-oauth2)

Strategy to authenticate [Spotify](https://www.spotify.com) in OmniAuth.

## Installation

OmniAuth Spotify OAuth2 is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem 'omniauth-spotify-oauth2', '~> 1.0'

Integrate this strategy to your OmniAuth middleware.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :spotify, ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET']
end
```

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

OmniAuth Spotify OAuth2 is released under the MIT license. See the LICENSE file for more info.
