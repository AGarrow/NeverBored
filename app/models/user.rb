class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.oauth_token ||= auth["credentials"]["token"]
      user.oauth_expires_at ||= Time.at(auth["credentials"]["expires_at"])
      user.save!
    end
  end
end
