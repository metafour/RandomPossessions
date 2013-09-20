//
//  main.m
//  RandomPossessions
//
//  Created by Camron Schwoegler on 9/17/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
//        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
//        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        
//        [items insertObject:@"Zero" atIndex:0];
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [items addObject:p];
//        }
//        
//        for (BNRItem *item in items) {
//            NSLog(@"%@", item);
//        }
//        
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Black Sofa" serialNumber:@"C3PO"];
//        NSLog(@"%@", item);
        
        // Begin Chapter 2 - Gold Challenge
        
//        BNRContainer *container = [[BNRContainer alloc] initWithItemName:@"Container 1" valueInDollars:1000000 serialNumber:@"R2D2"];
//        BNRContainer *container2 = [[BNRContainer alloc] initWithItemName:@"Container 2" valueInDollars:382 serialNumber:@"69"];
//        
//        for (int i = 0; i < 11; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [container addItem:p];
//        }
//        
//        for (int i = 0; i < 11; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [container2 addItem:p];
//        }
//        
//        [container addItem:container2];
//        
//        NSLog(@"%@", container);
        
        // End Chapter 2 - Gold Challenge
        
//        BNRItem *p = [[BNRItem alloc] init];
//        
//        [p setItemName:@"Red Sofa"];
//        [p setSerialNumber:@"A1B2C"];
//        [p setValueInDollars:100];
//        
//        NSLog(@"%@", p);
        
//        NSLog(@"Settings items to nil");
//        items = nil;
        
        backpack = nil;
        
        NSLog(@"Container: %@", [calculator container]);
        
        calculator = nil;
        
    }
    return 0;
}

