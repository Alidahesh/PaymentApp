//
//  StripPaymentService.m
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import "StripPaymentService.h"

@implementation StripPaymentService

-(void)processPaymentAmount:(NSInteger *)payment{
    NSLog(@"Stripe $%zd", payment);
}

@end
