//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void)processPaymentAmount:(NSInteger *)payment{
    NSLog(@"Amazon $%zd", payment);
}

@end
