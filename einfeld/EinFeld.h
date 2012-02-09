//
//  EinFeld.h
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EinFeld : NSObject
@property (assign) float totalLength;
@property (assign) float last;
@property (assign) float ratio;
@property (assign) float bvLength;
@property (assign) float avLength;
@property (assign) float dist;


- (void) calculatePartialStress;
@end
