Rails.application.routes.draw do
  post '/user_switch/:scope' => 'UserSwitch::UserSwitch#switch'
end