//
//  ViewController.m
//  WIFIDemo
//
//  Created by songjc on 15/8/17.
//  Copyright (c) 2015年 xuliang. All rights reserved.
//

#import "ViewController.h"
#import "MSNetworksManager.h"
#import <SystemConfiguration/CaptiveNetwork.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *ssid = @"Not Found";
//    NSString *macIp = @"Not Found";
//    CFArrayRef myArray = CNCopySupportedInterfaces();
//    if (myArray != nil) {
//        CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0));
//        if (myDict != nil) {
//            NSDictionary *dict = (NSDictionary*)CFBridgingRelease(myDict);
//            
//            ssid = [dict valueForKey:@"SSID"];
//            macIp = [dict valueForKey:@"BSSID"];
//        }
//    }
//    UIAlertView *av = [[UIAlertView alloc] initWithTitle:ssid
//                                                 message:macIp
//                                                delegate:nil
//                                       cancelButtonTitle:nil
//                                       otherButtonTitles:@"OK", nil];
//    [av show];
    MSNetworksManager *net = [MSNetworksManager sharedNetworksManager];
    NSLog(@"%d",[net numberOfNetworks]);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
