class User < ActiveRecord::Base

  has_secure_password

  validates :username,
            :presence => true

  validates :password, 
            :length => { :in => 8..24 }, 
            :allow_nil => true

  validates :email,
            :presence => true,
            :uniqueness => true

end