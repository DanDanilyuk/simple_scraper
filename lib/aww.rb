class Aww < ActiveRecord::Base
  validates(:title, uniqueness: true)
  validates(:link, uniqueness: true)
end
