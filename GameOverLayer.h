//
//  GameOverLayer.h
//  Cocos2DSimpleGame
//
//  Created by Fred Sharples on 2/19/13.
//  Copyright 2013 Orange Design. All rights reserved.
//
#import "cocos2d.h"

@interface GameOverLayer : CCLayerColor

+(CCScene *) sceneWithWon:(BOOL)won;
- (id)initWithWon:(BOOL)won;

@end