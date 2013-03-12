class Client < ActiveRecord::Base
  attr_accessible :address, :name
  validates :name, presence: true

  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
