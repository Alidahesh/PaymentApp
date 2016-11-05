//
//  PaymentGateway.m
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import "PaymentGateway.h"


@implementation PaymentGateway

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)processPaymentAmount:(NSInteger *)payment { 
    
}

- (BOOL) canProcessPayment {
    int randomNumber2 = arc4random_uniform(1);
    switch (randomNumber2) {
        case 1:
            return 1;
            break;
        case 0:
            return 0;
            break;
        default:
            break;
    }
}

@end
