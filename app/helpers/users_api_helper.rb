module UsersApiHelper
  def api_gavatar_url(user, options = { })
    if Setting.gravatar_enabled?
      options.merge!(:default => Setting.gravatar_default)
      email = nil
      if user.respond_to?(:mail)
        email = user.mail
      elsif user.to_s =~ %r{<(.+?)>}
        email = $1
      end
      return gravatar_url(email.to_s.downcase, options) unless email.blank? rescue nil
    else
      ''
    end
  end
end
