require File.expand_path("../lib/omniauth-spotify-oauth2/version", __FILE__)

Gem::Specification.new do |gem|
	gem.name = "omniauth-spotify-oauth2"
	gem.summary = "OmniAuth Strategy for Spotify via OAuth2"
	gem.description = "OmniAuth Strategy for Spotify via OAuth2"
	gem.homepage = "https://github.com/jonathantribouharet/omniauth-spotify-oauth2"
	gem.version = OmniAuth::Eivo::VERSION
	gem.files = `git ls-files`.split("\n")
	gem.require_paths = ["lib"]
	gem.authors = ['Jonathan TRIBOUHARET']
	gem.email = 'jonathan.tribouharet@gmail.com'
	gem.license = 'MIT'
	gem.platform = Gem::Platform::RUBY
	
	gem.add_dependency 'omniauth-oauth2', '~> 1.4'
end
