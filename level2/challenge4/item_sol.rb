class Item < ActiveRecord::Base
  scope :by_name, ->(name){where(name: name) if name.present? }
  scope :recent, -> {where('created_on > ?', 2.days.ago)}
end
