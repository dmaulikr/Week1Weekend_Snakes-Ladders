//
//  main.m
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *input = [InputHandler new];
        PlayerManager *playerManager = [PlayerManager new];
        
        NSString *userInput = [NSString string];
        
        while(true){
            if([playerManager.players count] > 0){
                break;
            }else{
                userInput = [input inputForPrompt:@"How many players? \n>"];
                if([userInput integerValue]){
                    [playerManager createPlayers:userInput.integerValue];
                }else{
                    continue;
                }
            }
        }
        
        while(true){
            if(playerManager.gameOver == YES){
                NSLog(@"Game Over!");
                break;
            }else{
                userInput = [input inputForPrompt:@"\nr - Roll\n>"];
                
                if([userInput isEqualToString:@"r"]){
                    [playerManager roll];
                }
            }
        }
    }
    return 0;
}
