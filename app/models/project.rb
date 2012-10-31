class Project < ActiveRecord::Base
  has_many :tickets, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => true

  has_many :permissions, :as => :thing

  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => { :action => "view",
                                                :user_id => user.id })
  }


  attr_accessible :name

  def self.for(user)
    user.admin? ? Project : Project.readable_by(user)
  end
end
