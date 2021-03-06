class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    User.find_or_create_by(provider: auth.provider, uid: auth.uid ) do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
