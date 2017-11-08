//
//  ViewController.m
//  ViewControllers-IB
//
//  Created by Kareem Sabri on 2017-11-08.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *twoButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if (self.buttonTitle != nil) {
        [self.twoButton setTitle:self.buttonTitle forState:UIControlStateNormal];
    } else {
        [self.twoButton setTitle:@"Button" forState:UIControlStateNormal];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SegueThree"]) {
        ViewController *three = segue.destinationViewController;
        three.buttonTitle = @"Three!!";
    }
}

- (IBAction)didTapButton:(id)sender {
    //UINavigationController *nav = [self navigationController];
    //UIViewController *three = [self.storyboard instantiateViewControllerWithIdentifier:@"Three"];
    //[nav pushViewController:three animated:true];
    [self performSegueWithIdentifier:@"SegueThree" sender:nil];
}




@end
