class Admin::ApplicationController < ::ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'password'

  layout "admin"
end