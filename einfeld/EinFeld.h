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
@property (assign) float last2;
@property (assign) float ratio;
@property (assign) float ratio2;
@property (assign) float bvLength;
@property (assign) float avLength;

- (void) calculatePartialStress;
- (float) calcDist;
- (float) calcDist2;

@end
