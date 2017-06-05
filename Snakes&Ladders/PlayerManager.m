//
//  PlayerManager.m
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _currentIndex = 0;
    }
    return self;
}

-(void)createPlayers:(NSInteger) numberOfPlayers{
    for (NSInteger i = 1; i <= numberOfPlayers; ++i) {
        Player *player = [Player new];
        NSString *indexNumber = [NSString stringWithFormat:@"%ld", i];
        NSString *jointName = [@"player" stringByAppendingString:indexNumber];
        player.playerName = jointName;
        [self.players addObject:player];
    }
}

-(void)roll{
    [self.currentPlayer roll];
    [self output];
    self.currentIndex++;
}

-(BOOL)gameOver{
    return [self currentPlayer].gameOver;
}

-(void)output{
    NSLog(@"%@ %@", [self currentPlayer].playerName, [self currentPlayer].outputRolledString);
    if([self gameOver] == NO){
        NSLog(@"%@ %@", [self currentPlayer].playerName, [self currentPlayer].outputString);
    }
}

-(Player *)currentPlayer{
    return self.players[self.currentIndex % self.players.count];
}

@end
