//
//  PaymentGateway.h
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

- (void) processPaymentAmount:(NSInteger *)payment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> delegate;
- (int) canProcessPayment : (int)randomNumber;

@end
