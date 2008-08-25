//
//  QSRubyModule.m
//  QSRubyModule
//
//  Created by ?? ?? on 08/08/25.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "QSRubyModule.h"

@implementation QSRubyModule

+(void)load{
	static bool installed = NO;
	if (! installed) {
		if(! RBBundleInit("load_ruby_qsrbm.rb", [self class], self)) {
			installed = YES;
		}
	}
}

@end
