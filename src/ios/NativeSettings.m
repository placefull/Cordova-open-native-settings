//
//  NativeSettings.m
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//
//

#import "NativeSettings.h"

@implementation NativeSettings

- (void)openBluetoothSettings:(CDVInvokedUrlCommand*)command
{
		NSString *settingsUrl= @"App-Prefs:root=Bluetooth";
		if ([[UIApplication sharedApplication] respondsToSelector:@selector(openURL:options:completionHandler:)]) {
			[[UIApplication sharedApplication] openURL:[NSURL URLWithString:settingsUrl] options:@{} completionHandler:^(BOOL success) {
			NSLog(@"URL opened");
			}];
		}
}

- (void)open:(CDVInvokedUrlCommand*)command
{
        NSURL *appSettings = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:appSettings];
}

@end
