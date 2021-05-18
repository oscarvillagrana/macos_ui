//
//  ViewController.h
//  TodosManager
//
//  Created by Oscar Villagrana on 5/8/21.
//

#import <Cocoa/Cocoa.h>
#import "TextViews.h"


@interface ContainerViews : NSViewController {
    __weak IBOutlet NSView *ui_container;
    
    __weak IBOutlet NSView *ui_container1;
    
    // instatiate available views
    TextViews *v1;
    TextViews *v2;
    TextViews *v3;
    TextViews *v4;
    TextViews *v5;
    
    // track the view that is inbeded in the controller view
    NSViewController *current_controller;
        
}

- (IBAction)LoadView1:(id)sender;
- (IBAction)LoadView2:(id)sender;
- (IBAction)LoadView3:(id)sender;
- (IBAction)LoadView4:(id)sender;
- (IBAction)LoadView5:(id)sender;

@end
