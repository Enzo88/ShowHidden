//
//  Controller.m
//  ShowHidden
//
//  Created by Vincenzo Pimpinella on 15/12/13.
//  Copyright (c) 2013 Vincenzo Pimpinella. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (IBAction)show:(id)sender {
    system([@"defaults write com.apple.finder AppleShowAllFiles 1" UTF8String]);
    NSLog(@"Show -> exec: defaults write com.apple.finder AppleShowAllFiles 1");
    system("killall Finder");
}

- (IBAction)hide:(id)sender {
    system([@"defaults write com.apple.finder AppleShowAllFiles 0" UTF8String]);
    NSLog(@"Hide -> exec: defaults write com.apple.finder AppleShowAllFiles 0");
    system("killall Finder");
}
@end
