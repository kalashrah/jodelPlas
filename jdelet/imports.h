//
//  imports.h
//  jdelet
//
//  Created by macbook on 22/12/1443 AH.
//
#import "k10vc.h"
#import <UIKit/UIKit.h>
#import "choose.h"
#include <objc/runtime.h>
#import "FRPrefs.h"
#import "k10Cell.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CLLocation+LOSPAdditions.h"
#import "CLPlacemark+LOSPAdditions.h"
#import "LOSPLocationDebugViewController.h"
#import "LOSPLocationProvider.h"
#import "LOSPLocationSpoofer.h"
#import "LOSPTrip+LOSPPresets.h"
#import "LOSPTrip.h"
#import "MKCoordinateSpan+LOSPAdditions.h"
#import "LOSPRootViewController.h"


#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]

#define JDL10PPColor [UIColor colorWithRed:0.85 green:0.55 blue:0.17 alpha:1.0]
#define JDL10black [UIColor colorWithRed:0.33 green:0.33 blue:0.33 alpha:1.0]


static UIViewController *_topMostController(UIViewController *cont) {
UIViewController *topController = cont;
 while (topController.presentedViewController) {
 topController = topController.presentedViewController;
 }
 if ([topController isKindOfClass:[UINavigationController class]]) {
 UIViewController *visible = ((UINavigationController *)topController).visibleViewController;
 if (visible) {
topController = visible;
 }
}
 return (topController != cont ? topController : nil);
 }
 static UIViewController *topMostController() {
 UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
 UIViewController *next = nil;
  while ((next = _topMostController(topController)) != nil) {
 topController = next;
 }
 return topController;
}


@interface JDLRestApi : NSObject

- (id)deletePostWithPostId:(id)arg1 completionBlock:(void (^ __nullable)(void))arg2;
@end

@interface SWGPost : NSObject

- (id)postId;
@end

@interface _TtC5Jodel25UserSectionViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;


@end


@interface _TtC5Jodel21MyPostsViewController : UIViewController

-(void)deletAction;

@end

@interface JDLMainFeedViewController : UIViewController

-(void)k10UpVote;

@end
@interface _TtC5Jodel19JDLFeedCellVoteView : UITableViewCell
{
    // Error parsing type: , name: experiments
    // Error parsing type: , name: premiumHintManager
    // Error parsing type: , name: voteLabel
    // Error parsing type: , name: voteDownButton
    // Error parsing type: , name: voteUpButton
    // Error parsing type: , name: viewModel
}


- (void)upvoteTap:(BOOL)arg1;
@end

#ifndef imports_h
#define imports_h


#endif /* imports_h */
