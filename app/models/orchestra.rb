class Orchestra < ActiveRecord::Base
	has_one :conductor 
	has_many :instruments, :through => :integrants 
	has_many :integrants
end
