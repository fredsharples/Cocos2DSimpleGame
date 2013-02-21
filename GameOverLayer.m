//
//  GameOverLayer.m
//  Cocos2DSimpleGame
//
//  Created by Fred Sharples on 2/19/13.
//  Copyright 2013 Orange Design. All rights reserved.
//

#import "GameOverLayer.h"
#import "HelloWorldLayer.h"

@implementation GameOverLayer

+(CCScene *) sceneWithWon:(BOOL)won {
    CCScene *scene = [CCScene node];
    GameOverLayer *layer = [[GameOverLayer alloc] initWithWon:won];
    [scene addChild: layer];
    return scene;
}

- (id)initWithWon:(BOOL)won {
    if ((self = [super initWithColor:ccc4(255, 255, 255, 255)])) {
        
        NSString * message;
        if (won) {
            message = [NSString stringWithFormat:@"You Won! \r You destroyed : %d monsters", _monstersDestroyed];
        } else {
            message = [NSString stringWithFormat:@"You Lost \r but you destroyed : %d monsters", _monstersDestroyed];
        }
        
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        CCLabelTTF * label = [CCLabelTTF labelWithString:message fontName:@"Arial" fontSize:32];
        label.color = ccc3(0,0,0);
        label.position = ccp(winSize.width/2, winSize.height/2);
        [self addChild:label];
        
        [self runAction:
         [CCSequence actions:
          [CCDelayTime actionWithDuration:3],
          [CCCallBlockN actionWithBlock:^(CCNode *node) {
             [[CCDirector sharedDirector] replaceScene:[HelloWorldLayer scene]];
         }],
          nil]];
    }
    return self;
}

@end