class User < ActiveRecord::Base
    has_secure_password

    validates :username, :uniqueness => true, :presence => true
    validates :password, :length => { :minimum => 5 }
    validates :email, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
