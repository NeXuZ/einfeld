//
//  EinFeld.m
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//

#import "EinFeld.h"

@implementation EinFeld;
@synthesize totalLength;
@synthesize last;
@synthesize last2;
@synthesize ratio;
@synthesize ratio2;
@synthesize bvLength;
@synthesize avLength;

- (void) calculatePartialStress 
{
    float bv = (([self calcDist] * last) + ([self calcDist2] * last2)) / totalLength;
    float av = (last + last2) - bv;
    bvLength = bv;
    avLength = av;
};

- (float) calcDist
{
    return (ratio*totalLength);
};

- (float) calcDist2
{
    return (ratio2*totalLength);
};

@end
