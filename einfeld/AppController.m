//
//  AppController.m
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//

#import "AppController.h"
#import "AppDelegate.h"
#import "EinFeld.h"

@implementation AppController
@synthesize lastBv;
@synthesize lastAv;
@synthesize einFeld = _einFeld;

- (void) awakeFromNib 
{
    EinFeld *aEinFeld = [[EinFeld alloc] init];
    self.einFeld = aEinFeld;
};

- (IBAction)getLast:(id)sender 
{
    float last = [sender floatValue];
    [self.einFeld setLast:last];
    NSLog (@"Last= %1.2f", last);
    [self updateUserInterface];
}

- (IBAction)getRatio:(id)sender 
{
    float ratio = [sender floatValue];
    [self.einFeld setRatio:ratio];
    NSLog (@"Ratio= %1.2f", ratio);
    [self updateUserInterface];
}

- (IBAction)getFullLength:(id)sender 
{
    float fullLength = [sender floatValue];
    [self.einFeld setTotalLength:fullLength];
    NSLog (@"Length= %1.2f", fullLength);
    [self updateUserInterface];
}

- (IBAction)avF:(id)sender 
{
    float dis = [self.einFeld calcDist];
}

- (void) updateUserInterface
{
    float av = [self.einFeld avLength];
    float bv = [self.einFeld bvLength];
    [self.einFeld calculatePartialStress];
    if (av >= 0) 
    {
        [self.lastBv setFloatValue:bv];
        [self.lastAv setFloatValue:av];
    };
};

@end
