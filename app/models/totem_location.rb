class TotemLocation < ActiveRecord::Base
	validates :code, presence: true
	validates :location, presence: true
end
