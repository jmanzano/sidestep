//
//  DefaultsController.m
//  Sidestep
//
//  Created by Chetan Surpur on 11/18/10.
//  Copyright 2010 Chetan Surpur. All rights reserved.
//

#import "DefaultsController.h"
#import "AppUtilities.h"

@implementation DefaultsController

/*	
 *	Class methods
 *******************************************************************************
 */

- (id)init {
	
	self = [super init];
	
    if (self != nil)
    {
		defaults = [NSUserDefaults standardUserDefaults];
    }
	
    return self;	
	
}

- (void)dealloc {
	
	[defaults release];
	[super dealloc];
	
}

/*
 *	Data Storage
 *******************************************************************************
 */

- (void)saveSSHConnectionPID :(int)pid {
	
	XLog(self, @"Saving PID %d to user defaults", pid);
	
	[defaults setInteger:pid forKey:@"sidestep_SSHConnectionPID"];
	[defaults synchronize];

}

- (int)getSSHConnectionPID {
	
	return [defaults integerForKey:@"sidestep_SSHConnectionPID"];

}

- (NSString *)getServerUsername {
	
	return [defaults stringForKey:@"sidestep_ServerUsername"];
	
}

- (NSString *)getServerHostname {
	
	return [defaults stringForKey:@"sidestep_ServerHostname"];
	
}

/*
 *	Preferences
 *******************************************************************************
 */

- (BOOL)rerouteAutomaticallyEnabled {

	return [defaults boolForKey:@"sidestep_rerouteAutomatically"];
	
}

- (BOOL)runOnLogin {
	
	return [defaults boolForKey:@"sidestep_runOnLogin"];
	
}

@end
