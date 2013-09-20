//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Camron Schwoegler on 9/17/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
    
    if (self) {
        subitems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSString *)description
{
    NSString *desc = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%ld\n", [self itemName], [self serialNumber], (long)([self totalValue] + [self valueInDollars])];
    
    for (BNRItem *item in subitems) {
            desc = [desc stringByAppendingFormat:@"%@\n", item];
    }
  
    return desc;
    
//    return [[NSString alloc] initWithFormat:@"%@ %d %@", [self itemName], [self valueInDollars] + [self totalValue], [self subItems]];
}

- (NSInteger)totalValue
{
    NSInteger totalValue = 0;
    
    for (int i = 0; i < [subitems count]; i++) {
        if ([[subitems objectAtIndex:i] class] == [BNRContainer class]) {
            totalValue += [[subitems objectAtIndex:i] totalValue];
        }
        else
        {
            totalValue += [[subitems objectAtIndex:i] valueInDollars];
        }
    }
    
    return totalValue;
}

- (void)addItem:(id)item
{
    [subitems addObject:item];
}

- (id)subItems
{
    return subitems;
}

@end
