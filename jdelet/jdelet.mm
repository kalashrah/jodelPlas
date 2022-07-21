#line 1 "/Users/macbook/Documents/monApp/jdelet/jdelet/jdelet.xm"

#import "imports.h"





#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _TtC5Jodel21MyPostsViewController; @class _TtC5Jodel25UserSectionViewController; 
static void (*_logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$JodelPPPreset(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST, SEL); static NSUInteger (*_logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST, SEL, id, NSUInteger); static NSUInteger _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST, SEL, id, NSUInteger); static void (*_logos_orig$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$k10Alert(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$deletAction(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST, SEL); 

#line 7 "/Users/macbook/Documents/monApp/jdelet/jdelet/jdelet.xm"





static void _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    _logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad(self, _cmd);

    
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




static void _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$JodelPPPreset(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){



    k10vc *kvc = [[k10vc alloc]init];
    [kvc loadk10JodelppSetting:self];
}

static NSUInteger _logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel25UserSectionViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id tableView, NSUInteger section) {
  if (section == 5) {
    return _logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$(self, _cmd, tableView, section) + 1;
  }
  return _logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
  
}




static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad(self, _cmd);
    
    UIBarButtonItem *fakeLocationButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(k10Alert)];
    

    self.navigationItem.rightBarButtonItem = fakeLocationButton;
}

static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$k10Alert(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Deleted All" message:@"?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self deletAction];

    }];
    
    UIAlertAction *canselAction = [UIAlertAction actionWithTitle:@"Cansel" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:deleteAction];
    [alert addAction:canselAction];
    [self presentViewController:alert animated:YES completion:nil];
}

static void _logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$deletAction(_LOGOS_SELF_TYPE_NORMAL _TtC5Jodel21MyPostsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
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



static __attribute__((constructor)) void _logosLocalCtor_6d70790a(int __unused argc, char __unused **argv, char __unused **envp) {
    {Class _logos_class$_ungrouped$_TtC5Jodel25UserSectionViewController = objc_getClass("_TtC5Jodel25UserSectionViewController"); { MSHookMessageEx(_logos_class$_ungrouped$_TtC5Jodel25UserSectionViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$viewDidLoad);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$_TtC5Jodel25UserSectionViewController, @selector(JodelPPPreset), (IMP)&_logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$JodelPPPreset, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$_TtC5Jodel25UserSectionViewController, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$_TtC5Jodel25UserSectionViewController$tableView$numberOfRowsInSection$);}Class _logos_class$_ungrouped$_TtC5Jodel21MyPostsViewController = objc_getClass("_TtC5Jodel21MyPostsViewController"); { MSHookMessageEx(_logos_class$_ungrouped$_TtC5Jodel21MyPostsViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$_TtC5Jodel21MyPostsViewController$viewDidLoad);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$_TtC5Jodel21MyPostsViewController, @selector(k10Alert), (IMP)&_logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$k10Alert, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$_TtC5Jodel21MyPostsViewController, @selector(deletAction), (IMP)&_logos_method$_ungrouped$_TtC5Jodel21MyPostsViewController$deletAction, _typeEncoding); }}
}

