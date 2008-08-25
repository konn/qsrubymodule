#
#  RubyAction.rb
#  QSRubyModule
#
#  Created by 石井 大海 on 08/08/25.
#  Copyright (c) 2008 __MyCompanyName__. All rights reserved.
#

class RubyAction < OSX::QSActionProvider
	def act(arg)
		rslt = eval(arg.stringValue)
		dic = OSX::NSUserDefaultsController.sharedUserDefaultsController.values
		t = dic.valueForKey("QRM.notInspectString").to_i != 0
		if !rslt.is_a?(String) || !t
			rslt = rslt.inspect
		end
		rslt = rslts.inspect unless rslt.is_a?(String)
		return OSX::QSObject.objectWithString(rslt)
	end
end
