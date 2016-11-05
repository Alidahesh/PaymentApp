//
//  main.m
//  Payments
//
//  Created by Ali Dahesh on 2016-11-04.
//  Copyright © 2016 Ali Dahesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripPaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    
    
    NSInteger *randomNumber;
    int paymentMethod;
    StripPaymentService *stripePS;
    AmazonPaymentService *amazonPS;
    PaypalPaymentService *paypalPS;
    
    char inputNumber[3];
    PaymentGateway *pg = [[PaymentGateway alloc] init];
    
    randomNumber = (NSInteger *) 100 + arc4random_uniform(900);
    
    
    fgets(inputNumber, 3, stdin);
    
    printf("Thank you for shopping at Acme.com Your total today is $%zd Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomNumber);
    
    scanf("%d", paymentMethod);
    
    switch (paymentMethod) {
        case 2:
            stripePS = [[StripPaymentService alloc] init];
            pg.delegate = stripePS;
            break;
        case 1:
            paypalPS = [[PaypalPaymentService alloc] init];
            pg.delegate = paypalPS;
            break;
        case 3:
            amazonPS = [[AmazonPaymentService alloc] init];
            pg.delegate = amazonPS;
            break;
            
        default:
            break;
    }
    
    [pg.delegate processPaymentAmount:randomNumber];
    
    
    return 0;
}
