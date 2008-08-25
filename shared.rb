#
#  shared.rb
#  QSRubyModule
#
#  Created by 石井 大海 on 08/08/25.
#  Copyright (c) 2008 __MyCompanyName__. All rights reserved.
#

class Shared

	def self.logger=(l)
		@@logger = l
	end

	def self.logger
		@@logger
	end

end
