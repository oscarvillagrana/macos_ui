//
//  AppDelegate.h
//  macOS_UI
//
//  Created by Os on 5/17/21.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

