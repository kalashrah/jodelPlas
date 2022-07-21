//
//  ViewController.m
//  jdelet
//
//  Created by macbook on 22/12/1443 AH.
//

#import "ViewController.h"
#import "imports.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    k10vc *kvc = [[k10vc alloc]init];
    [kvc loadk10JodelppSetting:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
