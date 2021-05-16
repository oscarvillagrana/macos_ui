//
//  ViewController.m
//  cocoapods-playground
//
//  Created by Os on 5/15/21.
//

#import "ViewController.h"
#import "textview.h"

@interface ViewController () {
    
    
    __weak IBOutlet NSView *ui_container;
    
    // instatiate available views
        textview *v1;
        textview *v2;
        textview *v3;
        textview *v4;
        textview *v5;
        
        // track the view that is inbeded in the controller view
        NSViewController *current_controller;

}

- (IBAction)LoadView1:(id)sender;
- (IBAction)LoadView2:(id)sender;
- (IBAction)LoadView3:(id)sender;
- (IBAction)LoadView4:(id)sender;
- (IBAction)LoadView5:(id)sender;

@end


@implementation ViewController


-(void)RemoveCiewController{
    // remove current view that is attached
    [current_controller.view removeFromSuperview];
    [current_controller removeFromParentViewController];
}

-(void)BindToViewController:(NSViewController*)target_viewcontroller{
    if(current_controller!=nil){
        [self RemoveCiewController];
    }
    [self addChildViewController:target_viewcontroller];
    target_viewcontroller.view.frame=ui_container.frame;
    [ui_container addSubview:target_viewcontroller.view];
    current_controller=target_viewcontroller;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    v1=[self.storyboard instantiateControllerWithIdentifier:@"vc1"];
    v2=[self.storyboard instantiateControllerWithIdentifier:@"vc2"];
    v3=[self.storyboard instantiateControllerWithIdentifier:@"vc3"];
    v4=[self.storyboard instantiateControllerWithIdentifier:@"vc4"];
    v5=[self.storyboard instantiateControllerWithIdentifier:@"vc5"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)LoadView5:(id)sender {
    [self BindToViewController:v5];
}

- (IBAction)LoadView4:(id)sender {
    [self BindToViewController:v4];
}

- (IBAction)LoadView3:(id)sender {
    [self BindToViewController:v3];
}

- (IBAction)LoadView2:(id)sender {
    [self BindToViewController:v2];
}

- (IBAction)LoadView1:(id)sender {
    [self BindToViewController:v1];
}
@end
