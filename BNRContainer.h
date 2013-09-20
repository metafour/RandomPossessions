//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Camron Schwoegler on 9/17/13.
//  Copyright (c) 2013 Camron Schwoegler. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subitems;
}

- (NSInteger)totalValue;
- (void)addItem:(id)item;
- (id)subItems;
@end
