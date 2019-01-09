class User < ApplicationRecord
  # Include default devise modules
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  before_save :downcase_email!

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    unless user
      user = User.create(name: data['name'],
      email: data['email'],
      password: Devise.friendly_token[0,20]
      )
    end
    user
  end

  private

  def downcase_email!
    self.email.downcase!
  end
end
