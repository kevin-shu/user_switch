module UserSwitch

  module Panel

    def self.included(base)
      base.after_filter :user_switch_output, :if => lambda { response.content_type == "text/html" && !(!!request.xhr?) }
    end

    def user_switch_output
      # self.
      self.response.body += "<link href='#{Rails.application.config.assets.prefix}/user_switch.css' media='all' rel='stylesheet' type='text/css' />"
      self.response.body += "<div class='user-switch-panel'><div class='icon'></div><div class='detail'><b>User Switch</b><hr>"
      UserSwitch.available_users.each do |scope,proc|
        self.response.body += "#{scope}: <form action='/user_switch/#{scope}' method='post'><select name='resource_id'>"
        users = proc[]
        users.each do |user|
          self.response.body += "<option value='#{user.id}'>" + (user.name||user.email) + "</option>"
        end
        self.response.body += "</select><input type='submit' value='switch'/></form><br>"
      end
      self.response.body += "
                            </div></div>"
    end

  end
end