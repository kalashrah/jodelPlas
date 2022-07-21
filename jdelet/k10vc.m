//
//  k10vc.m
//  jdelet
//
//  Created by macbook on 14/12/1443 AH.
//

#import "imports.h"


@interface k10vc ()

@end

@implementation k10vc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    [self loadk10JodelppSetting:self];
 
}

-(void)openFakeLocation{
    LOSPLocationDebugViewController *LOSP = [[LOSPLocationDebugViewController alloc]init];
    [self.navigationController presentViewController:LOSP animated:YES completion:nil];
}
-(void)deletAction{
    self.view.backgroundColor = [UIColor blackColor];
    
    NSArray *choArray = [choose choose:objc_getClass("NSUserDefaults")];
    
    NSMutableArray *newArr = [[NSMutableArray alloc]init];
    NSArray <SWGPost *>*swgArray = [choose choose:objc_getClass("SWGPost")];
    for (int i = 0; i < [swgArray count]; i++){
        id postId = [swgArray[i] postId];
        [newArr addObject:postId];
    }
    
    for (int i = 0; i < [choArray count]; i++){
        [choArray[i] setValue:newArr forKey:@"postsIds"];
    }
    
    JDLRestApi *jdlR = [choose choose:objc_getClass("JDLRestApi")][0];
    for (int k = 0; k < [newArr count]; k++){
        id deletString = newArr[k];
        [jdlR deletePostWithPostId:deletString completionBlock:nil];
    }
}
-(void)newModeration{
    NSArray *choArray = [choose choose:objc_getClass("NSUserDefaults")];
//    NSLog(@"%@", choArray);
    for (int i = 0; i < [choArray count]; i++){
        [choArray[i] setBool:YES forKey:@"kJDLModerationCapabilitiesKey"];
    }
}
-(void)loadk10JodelppSetting:(UIViewController *)viewController{
    
    FRPreferences *table;
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                   initBlock:^(UITableViewCell *cell) {
                                       /* design your cell as you wish */
                                       /* block of code executed during cell initialization */
                                       cell.backgroundColor = [UIColor clearColor];
                                       
                                       UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                       label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:60];
                                       [label setText:@"Jodel++"];
                                       [label setTextColor:[UIColor blackColor]];
                                       // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                                       [label setShadowOffset:CGSizeMake(1,1)];
                                       [label setTextAlignment:NSTextAlignmentCenter];
                                       [label setTag:111];
                                       
                                       UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                                       [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                                       [underLabel setText:@"Thanks for interrupting Jodel++"];
                                       [underLabel setTextColor:[UIColor grayColor]];
                                       [underLabel setTextAlignment:NSTextAlignmentCenter];
                                       [underLabel setTag:222];
                                       
                                        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                                        if ([defaults valueForKey:@"kDarkfeedActive"]) {
                                            [label setTextColor:[UIColor whiteColor]];
                                        }
                                       [cell.contentView addSubview:label];
                                       [cell.contentView addSubview:underLabel];
                                   }
                                 layoutBlock:^(UITableViewCell *cell) {
                                     /* block of code executed during cell layoutSubviews */
                                     [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                                     [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                                 }];


       FRPSection *sectionSettingJodelPP = [FRPSection sectionWithTitle:@"" footer:@""];
       
       
       
       FRPSwitchCell *switchClearBlur = [FRPSwitchCell cellWithTitle:@"ازالة ضبابية الصور"
                                                             setting:[FRPSettings settingsWithKey:@"ClearBlur" defaultValue:@NO]
                                                    postNotification:nil
                                                         changeBlock:^(UISwitch *switchView) {
                                                             // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                         }];
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       FRPSwitchCell *switchUpload = [FRPSwitchCell cellWithTitle:@"رفع صور من الالبوم"
                                                          setting:[FRPSettings settingsWithKey:@"ShowUploadBtn" defaultValue:@NO]
                                                 postNotification:nil
                                                      changeBlock:^(UISwitch *switchView) {
                                                          // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                      }];
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       
       ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       FRPSwitchCell *switchPastOption = [FRPSwitchCell cellWithTitle:@"تفعيل النسخ واللصق"
                                                        setting:[FRPSettings settingsWithKey:@"PastOption" defaultValue:@NO]
                                               postNotification:nil
                                                    changeBlock:^(UISwitch *switchView) {
                                                        
                                                    }];
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSwitchCell *switchAdsBlock = [FRPSwitchCell cellWithTitle:@"إزالة الاعلانات"
             setting:[FRPSettings settingsWithKey:@"noAdsEnabled" defaultValue:@NO]
    postNotification:nil
         changeBlock:^(UISwitch *switchView) {
             
         }];
       //    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
       //    FRPSwitchCell *switchFLEXible = [FRPSwitchCell cellWithTitle:@"FLEXible"
       //                                                       setting:[FRPSettings settingsWithKey:@"FLEXible" defaultValue:@NO]
       //                                              postNotification:nil
       //                                                     changeBlock:^(UISwitch *switchView) {
       //                                                         // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
       //                                                     }];
       
       
       [switchClearBlur.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       [switchUpload.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       
       //    [switchFakeLocation.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       //    [switchFLEXible.switchView setOnTintColor:[UIColor colorWithRed:0 green:0.545 blue:0.894 alpha:1]];
       
    [sectionSettingJodelPP addCell:switchClearBlur];
    [sectionSettingJodelPP addCell:switchUpload];
    [sectionSettingJodelPP addCell:switchPastOption];
    [sectionSettingJodelPP addCell:switchAdsBlock];
       //    [sectionSettingJodelPP addCell:switchFakeLocation];
       //    [sectionSettingJodelPP addCell:switchFLEXible];
       /////////////////////////////////////////////////////////////////////////////////////////////////////
    FRPSection *LocationFakeSection = [FRPSection sectionWithTitle:@"" footer:@""];
    
    
    
                           
    FRPLinkCell *LocationCell = [FRPLinkCell cellWithTitle:@"تغيير الموقع" selectedBlock:^(id sender){
        //LOSPLocationDebugViewController *vc = [[LOSPLocationDebugViewController alloc] init];
        
       
        //[self.navigationController pushViewController:vc animated:YES];
        LOSPLocationDebugViewController *LOSP = [[LOSPLocationDebugViewController alloc]init];
       
       
        [topMostController() presentViewController:LOSP animated:YES completion:nil];
//        [viewController presentViewController:LOSP animated:YES completion:nil];
//        [table.navigationController pushViewController:LOSP animated:YES];
        
//        [viewController.navigationController pushViewController:table animated:YES];
    }
        ];
    
    [LocationFakeSection addCell:LocationCell];
    
    ////////////////////////////////////////////////
       NSURL *kalashrahprofile = [[NSURL alloc] initWithString:@"https://pbs.twimg.com/profile_images/1004899885391532033/YJsPLyUM_400x400.jpg"];
       NSData *kalashrahdata = [NSData dataWithContentsOfURL:kalashrahprofile];
       
    
      
       
       FRPSection *sectionDeveloper = [FRPSection sectionWithTitle:@"مطور الاداة" footer:@""];
       
       [sectionDeveloper addCell:[FRPDeveloperCell cellWithTitle:@"khalid Alashrah" detail:@"@kalashrah" image:[UIImage imageWithData:kalashrahdata] url:@"https://twitter.com/kalashrah"]];
       /////////////////////////////////////////////////////////////////////////////////////////////////////
       
       
       table = [FRPreferences tableWithSections:@[headerSection, sectionSettingJodelPP,LocationFakeSection, sectionDeveloper]
                                                         title:@"k10"
                                                     tintColor:JDL10Color];
       
       

    [topMostController() presentViewController:table animated:YES completion:nil];
}



@end
