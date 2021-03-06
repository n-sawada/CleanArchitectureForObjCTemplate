//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

#import "___FILEBASENAME___ViewController.h"
#import "___FILEBASENAME___Router.h"
#import "___FILEBASENAME___Configurator.h"
#import "___FILEBASENAME___Models.h"

@interface ___FILEBASENAME___ViewController ()

@end

@implementation ___FILEBASENAME___ViewController

+ (instancetype)selfViewController {
    return [[self class] selfViewControllerWithStoryboardName:@"Sample"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [[___FILEBASENAME___Configurator sharedInstance] configureViewController:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self doSomethingOnLoad];
}

#pragma mark - Event Handling

- (void)doSomethingOnLoad {
    ___FILEBASENAME___Request *request = [___FILEBASENAME___Request new];
    [self.output doSomething:request];
}

#pragma mark - Transition

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self.router passDataToNextScene:segue];
}

#pragma mark - UIButton Action

- (IBAction)tapped:(UIButton *)sender {
    // programmatically create instance base on storyboard
//    [self.router transitionToNextScene];
}

#pragma mark - Display Logic

- (void)displaySomething:(___FILEBASENAME___ViewModel *)viewModel {
    // 描画に必要なデータを設定して描画処理
}

@end

#pragma mark - Storyboard

@implementation ___FILEBASENAME___ViewController (Storyboard)
+ (instancetype)selfViewControllerWithStoryboardName:(NSString *)storyboardName {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
}
@end
