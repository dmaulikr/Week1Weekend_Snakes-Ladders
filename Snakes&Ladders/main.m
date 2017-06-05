//
//  main.m
//  Snakes&Ladders
//
//  Created by Harry Li on 2017-06-04.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *input = [InputHandler new];
        Player *player1 = [Player new];
        
        while(true){
            if(player1.gameOver == YES){
                NSLog(@"You win. Game Over!");
                break;
            }else{
                NSString *userInput = [input inputForPrompt:@"\nr - Roll\n>"];
                
                if([userInput isEqualToString:@"r"]){
                    [player1 roll];
                }
            }
        }
    }
    return 0;
}
