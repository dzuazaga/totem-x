class TotemLocation < ActiveRecord::Base
	validates :code, presence: true
	validates :location, presence: true
	validate :totem_thing_id_exists
	
	def totem_thing_id_exists
		if !TotemThing.where(code: self.code).exists? then
            errors.add(:code, 'The totem you entered does not exist.')
        end
	end
end
