//
//  AppController.m
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//
// test it

#import "AppController.h"
#import "AppDelegate.h"
#import "EinFeld.h"

@implementation AppController
@synthesize lastBv;
@synthesize lastAv;
@synthesize avF;
@synthesize slider;
@synthesize avF2;
@synthesize slider2;

@synthesize einFeld = _einFeld;

float fullLength;

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
};

- (IBAction)getRatio:(id)sender 
{
    float ratio = [sender floatValue];
    [self.einFeld setRatio:ratio];
    NSLog (@"Ratio= %1.2f", ratio);
    [self updateUserInterface];
};

- (IBAction)getFullLength:(id)sender 
{
    fullLength = [sender floatValue];
    [self.einFeld setTotalLength:fullLength];
    NSLog (@"Length= %1.2f", fullLength);
    [self updateUserInterface];
};

- (IBAction)avF:(id)sender 
{
    float dis = [sender floatValue];
    if (dis >= 0 <= fullLength)
        {
            [self.einFeld setRatio:(dis/fullLength)];
            NSLog (@"dis= %1.2f", dis);
            [self updateUserInterface];
        }
    else
        {
            [self.einFeld setRatio:0];
            NSLog (@"dis= %1.2f", dis);
            [self updateUserInterface];        

        };
};

- (IBAction)getLast2:(id)sender 
{
    float last2 = [sender floatValue];
    [self.einFeld setLast2:last2];
    NSLog (@"Last2= %1.2f", last2);
    [self updateUserInterface];
};

- (IBAction)getRatio2:(id)sender 
{
    float ratio2 = [sender floatValue];
    [self.einFeld setRatio2:ratio2];
    NSLog (@"Ratio2= %1.2f", ratio2);
    [self updateUserInterface];
};

- (IBAction)avF2:(id)sender 
{
    float dis2 = [sender floatValue];
    if (dis2 >= 0 <= fullLength)
    {
        [self.einFeld setRatio2:(dis2/fullLength)];
        NSLog (@"dis2= %1.2f", dis2);
        [self updateUserInterface];
    }
    else
    {
        [self.einFeld setRatio2:0];
        NSLog (@"dis2= %1.2f", dis2);
        [self updateUserInterface];        
        
    };
};

- (void) updateUserInterface
{
    float av = [self.einFeld avLength];
    float bv = [self.einFeld bvLength];
    float dis = [self.einFeld calcDist];
    float dis2 = [self.einFeld calcDist2];
    [self.avF setFloatValue:dis];
    [self.avF2 setFloatValue:dis2];
    [self.slider setFloatValue:dis/fullLength];
    [self.slider2 setFloatValue:dis2/fullLength];
    [self.einFeld calculatePartialStress];
    if (av >= 0)
    {
        [self.lastBv setFloatValue:bv];
        [self.lastAv setFloatValue:av];
    };
};

@end
