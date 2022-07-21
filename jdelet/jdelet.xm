
#import "imports.h"




%hook _TtC5Jodel25UserSectionViewController




- (void)viewDidLoad {

    %orig;

    
    UIButton *k10Prefcbtntn = [[UIButton alloc]init];
      [k10Prefcbtntn setFrame:CGRectMake(0.5, 0.5, 48, 48)];
      [k10Prefcbtntn addTarget:self action:@selector(JodelPPPreset) forControlEvents:UIControlEventTouchUpInside];
      k10Prefcbtntn.layer.cornerRadius = 24;
      k10Prefcbtntn.layer.masksToBounds = YES;
      k10Prefcbtntn.layer.borderWidth = 3;
      k10Prefcbtntn.layer.borderColor = [UIColor whiteColor].CGColor;

      UILabel *lable = [[UILabel alloc]init];
      [lable setText:@"+"];
      [lable setTextAlignment:NSTextAlignmentCenter];
      [lable setFrame:k10Prefcbtntn.frame];
      [lable setTextColor:[UIColor whiteColor]];
      [lable setFont:[UIFont fontWithName:@"AvenirNext-Bold" size:40]];
      
      
         
         
         
    
    [self.view addSubview:k10Prefcbtntn];
    [self.view addSubview:lable];
    
    
}



%new
-(void)JodelPPPreset{
//    k10vc *vc = [[k10vc alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [self presentViewController:vc animated:YES completion:nil];
    k10vc *kvc = [[k10vc alloc]init];
    [kvc loadk10JodelppSetting:self];
}

- (NSUInteger)tableView:(id)tableView numberOfRowsInSection:(NSUInteger)section {
  if (section == 5) {
    return %orig + 1;
  }
  return %orig;
  
}
%end

%hook _TtC5Jodel21MyPostsViewController

- (void)viewDidLoad {
    %orig;
    
    UIBarButtonItem *fakeLocationButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(k10Alert)];
    
//    self.navigationController.navigationItem.rightBarButtonItem = fakeLocationButton;
    self.navigationItem.rightBarButtonItem = fakeLocationButton;
}
%new
-(void)k10Alert{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Deleted All" message:@"?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self deletAction];
//        NSLog(@"URL: %@", [self filtarUrl:self.urlField.text]);
    }];
    
    UIAlertAction *canselAction = [UIAlertAction actionWithTitle:@"Cansel" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:deleteAction];
    [alert addAction:canselAction];
    [self presentViewController:alert animated:YES completion:nil];
}
%new
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

%end

%ctor {
    %init(UserSectionViewController = objc_getClass("Jodel.UserSectionViewController"));
}

