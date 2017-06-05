//
//  Player.h
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) NSString *outputRolledString;
@property (nonatomic) NSString *outputString;
@property (nonatomic) BOOL gameOver;
@property (nonatomic) NSString *playerName;


-(void)roll;

@end
