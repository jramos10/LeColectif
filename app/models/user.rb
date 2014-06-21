class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation, :full_name

  def ==(user)
    self.email == user.email && self.id == user.id
  end
end
