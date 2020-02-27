if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_quickdraw-backend-with-cookies', domain: 'https://kai-is-coding.github.io/quickdraw-frontend/'
else
  Rails.application.config.session_store :cookie_store, key: '_quickdraw-backend-with-cookies'
end
