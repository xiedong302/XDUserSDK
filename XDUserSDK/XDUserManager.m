//
//  XDUserManager.m
//  XDUserSDK
//
//  Created by xiedong on 2021/2/4.
//

#import "XDUserManager.h"
#import <XDTAF/XDTAF.h>

@interface XDUserManager () <XDTAFHandlerDelegate>

@property (nonatomic, strong) XDTAFHandler *workHandler;

@end

@implementation XDUserManager

+ (instancetype)defaultManager {
    static XDUserManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[XDUserManager alloc] init];
    });
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        dispatch_queue_t workQueue = dispatch_queue_create("com.XDUserManager.handler", DISPATCH_QUEUE_SERIAL);
        self.workHandler = [[XDTAFHandler alloc] initWithSerialQueue:workQueue delegate:self];
    }
    return self;
}

+ (void)start {
    [[XDUserManager defaultManager] start];
}

// MARK: - XDTAFHandlerDelegate
- (void)handleMessage:(int)what object:(id)anObject {
    
}

// MARK: - Private

- (void)start {
    NSLog(@"XDUserManager start");
}

@end
