//
//  PlayerManager.h
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;

-(void)createPlayers:(NSInteger) numberOfPlayers;
-(void)roll;
-(BOOL)gameOver;
-(void)output;

@end
