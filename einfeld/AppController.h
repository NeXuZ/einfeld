//
//  AppController.h
//  einfeld
//
//  Created by Kolja Wilutzky on 09.02.12.
//  Copyright (c) 2012 Privat. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EinFeld;

@interface AppController : NSObject

@property (weak) IBOutlet NSTextField *lastBv;
@property (weak) IBOutlet NSTextField *lastAv;
@property (strong) EinFeld *einFeld;

- (IBAction)getLast:(id)sender;
- (IBAction)getRatio:(id)sender;
- (IBAction)getFullLength:(id)sender;
- (IBAction)avF:(id)sender;

- (void)updateUserInterface;

@end
