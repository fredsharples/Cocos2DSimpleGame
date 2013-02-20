//
//  main.m
//  Cocos2DSimpleGame
//
//  Created by Fred Sharples on 2/19/13.
//  Copyright Orange Design 2013. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"AppController");
    [pool release];
    return retVal;
}
