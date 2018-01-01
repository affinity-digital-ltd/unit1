Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    ENV.fetch('AUTH0_CLIENT_ID'),
    ENV.fetch('AUTH0_CLIENT_SECRET'),
    ENV.fetch('AUTH0_DOMAIN'),
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://procodersio.eu.auth0.com/userinfo'
    }
  )
end

if Rails.env.production?
  OmniAuth.config.on_failure = Proc.new { |env|
    message_key = env['omniauth.error.type']
    error_description = Rack::Utils.escape(env['omniauth.error'].error_reason)
    new_path = "#{env['SCRIPT_NAME']}#{OmniAuth.config.path_prefix}/failure?message=#{message_key}&error_description=#{error_description}"
    Rack::Response.new(['302 Moved'], 302, 'Location' => new_path).finish
  }
end