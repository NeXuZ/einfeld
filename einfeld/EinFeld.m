//
//  EinFeld.m
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//

#import "EinFeld.h"

@implementation EinFeld
@synthesize totalLength;
@synthesize last;
@synthesize ratio;
@synthesize bvLength;
@synthesize avLength;
@synthesize dist;

- (void) calculatePartialStress 
{
float bv = [self calcDist] * last / totalLength;
    float av = last - bv;
    bvLength = bv;
    avLength = av;

};

- (float) calcDist
{
    return (ratio*totalLength);
}

@end
