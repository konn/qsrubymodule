#
#  load_ruby.rb
#  QSRubyModule
#
#  Created by 石井 大海 on 08/08/25.
#  Copyright (c) 2008 __MyCompanyName__. All rights reserved.
#
require 'osx/cocoa'

def load_ruby_programs(bundle, logger)
  path = bundle.resourcePath.fileSystemRepresentation
  rbfiles = Dir.entries(path).select {|x| /\.rb\z/ =~ x}
  rbfiles -= [ File.basename(__FILE__) ]
  rbfiles.each do |path|
    require( File.basename(path) )
  end
  Shared.logger = logger
end

OSX.init_for_bundle do |bundle, param, logger|
  # bundle  - the bundle related RBApplicationInit
  # param   - the 4th argument of RBApplicationInit
  # logger  - NSLog wrapper for this block
  #             usage: log.info("param=%p", param.to_s)

  load_ruby_programs(bundle, logger)
end
