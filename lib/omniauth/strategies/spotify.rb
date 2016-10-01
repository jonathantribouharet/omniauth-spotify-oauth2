require 'omniauth-oauth2'

module OmniAuth
	module Strategies
		class Spotify < OmniAuth::Strategies::OAuth2
		
			option :name, "spotify"

			option :client_options, {
				:site          => 'https://api.spotify.com/v1',
				:authorize_url => 'https://accounts.spotify.com/authorize',
				:token_url     => 'https://accounts.spotify.com/api/token',
			}

			uid { raw_info['id'] }

			info do
				{
					:name => raw_info['display_name'],
					:urls => raw_info['external_urls'],
					:email => raw_info['email'],
					:image => image_url,
					:location => raw_info['country'],
				}
			end

			extra do
				{
					'raw_info' => raw_info
				}
			end

			def image_url
				if raw_info['images'] && raw_info['images'][0]
					raw_info['images'][0]['url']
				end
			end

			def raw_info
				@raw_info ||= access_token.get('me').parsed
			end

			# Required for omniauth-oauth2 >= 1.4
			# https://github.com/intridea/omniauth-oauth2/issues/81
			def callback_url
				full_host + script_name + callback_path
			end

		end
	end
end