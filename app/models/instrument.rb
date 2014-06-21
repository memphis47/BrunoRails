class Instrument < ActiveRecord::Base
	has_many :orchestras, :through => :integrants, :dependent => :nullify
	has_many :integrants, :dependent => :nullify
end
