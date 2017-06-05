//
//  Player.m
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        NSDictionary *gameLogic = @{
                                    @4 : @14,
                                    @9 : @31,
                                    @17 : @7,
                                    @20 : @38,
                                    @28 : @84,
                                    @40 : @59,
                                    @51 : @67,
                                    @63 : @81,
                                    @64 : @60,
                                    @89 : @26,
                                    @95 : @75,
                                    @99 : @78
                                    };
        _gameLogic = gameLogic;
        _gameOver = NO;
    }
    return self;
}

-(void)roll{
    NSInteger randValue = arc4random_uniform(6) + 1;

    self.currentSquare += randValue;
    
    NSLog(@"You rolled: %ld.", randValue);
    
    if (self.currentSquare >= 100) {
        self.gameOver = YES;
    }else{
        for (NSNumber *key in self.gameLogic) {
            if (key.integerValue == self.currentSquare) {
                self.currentSquare = [self.gameLogic[key] integerValue];
                NSLog(@"You jumped from %ld to %ld", key.integerValue,[self.gameLogic[key] integerValue]);
            }
        }
        NSLog(@"You landed on: %ld", self.currentSquare);
    }
}

@end
