class User < ActiveRecord::Base
  attr_accessible :data, :desc, :email, :name, :published
end
