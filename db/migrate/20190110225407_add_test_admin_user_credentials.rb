class AddTestAdminUserCredentials < ActiveRecord::Migration[5.2]
  def up
    User.create(email: 'test1@gmail.com', password: '3E4r5t_',
                password_confirmation: '3E4r5t_',
                admin: true,
                confirmed_at: Time.now)
  end

  def down
    User.find_by(email: 'test1@gmail.com')&.destroy
  end
end
