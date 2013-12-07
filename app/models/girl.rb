class Girl < ActiveRecord::Base
  attr_accessible :age, :bio, :name

  has_many:books

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
