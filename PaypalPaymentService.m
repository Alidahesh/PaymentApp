//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger *)payment{
    NSLog(@"PayPal $%zd", payment);
}

@end
