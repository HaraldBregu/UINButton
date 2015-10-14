//
//  ViewController.m
//  UINButton
//
//  Created by harald bregu on 13/10/15.
//  Copyright © 2015 Harald. All rights reserved.
//

#import "ViewController.h"
#import "UINButton.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UINButton) NSArray *buttons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (UINButton *btn in self.buttons) {
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
