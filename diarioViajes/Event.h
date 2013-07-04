//
//  Event.h
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 13/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * destino;

@end
