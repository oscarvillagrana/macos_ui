//
//  ViewController.m
//  TodosManager
//
//  Created by Oscar Villagrana on 5/8/21.
//

#import "ContainerViews.h"

@implementation ContainerViews

- (void)viewDidLoad
{
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

- (IBAction)LoadView1:(id)sender {
    [self BindToViewController:v1];
}

- (IBAction)LoadView2:(id)sender {
    [self BindToViewController:v2];
}

- (IBAction)LoadView5:(id)sender {
    [self BindToViewController:v5];
}

- (IBAction)LoadView3:(id)sender {
    [self BindToViewController:v3];
}

- (IBAction)LoadView4:(id)sender {
    [self BindToViewController:v4];
}

@end
