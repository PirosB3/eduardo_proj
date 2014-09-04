class Shop < ActiveRecord::Base
    mount_uploader :logo, LogoUploader

    validates :logo, :presence => true
    validates :name, :presence => true, :uniqueness => true
    validates :address, :presence => true
end
