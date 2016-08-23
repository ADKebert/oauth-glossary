class User < ApplicationRecord
  has_many :terms

  def self.from_omniauth(authentication_data)
    user = User.where(provider: authentication_data['provider'],
                      uid: authentication_data['uid']).first_or_create
    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.access_token = authentication_data.info.access_token

    user.save!

    return user
  end
end
