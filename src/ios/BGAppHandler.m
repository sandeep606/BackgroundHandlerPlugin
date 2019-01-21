/********* BGAppHandler.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface BGAppHandler : CDVPlugin {
  // Member variables go here.
}

- (void)startAppInBackground:(CDVInvokedUrlCommand*)command;
@end

@implementation BGAppHandler

- (void)startAppInBackground:(CDVInvokedUrlCommand*)command
{

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success occured"];
    
    UIBackgroundTaskIdentifier bgTask = UIBackgroundTaskInvalid;
    bgTask = [[UIApplication sharedApplication]
         beginBackgroundTaskWithExpirationHandler:^{
            //  [[UIApplication sharedApplication] endBackgroundTask:bgTask];
    }];
   
   [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

    // send to server with a synchronous request

    // AFTER ALL THE UPDATES, close the task
    // if (bgTask != UIBackgroundTaskInvalid)
    // {
    //     [[UIApplication sharedApplication] endBackgroundTask:bgTask];
    // }
}


@end
