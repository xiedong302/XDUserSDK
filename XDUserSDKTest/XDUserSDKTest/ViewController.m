//
//  ViewController.m
//  XDUserSDKTest
//
//  Created by xiedong on 2021/2/2.
//

#import "ViewController.h"
#import <XDUserSDK/XDUserManager.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [XDUserManager start];
    // Do any additional setup after loading the view.
}


@end
