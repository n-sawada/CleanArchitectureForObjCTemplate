//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean ObjectiveC Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, base on http://clean-swift.com

@import Foundation;
@import UIKit;
@class ___FILEBASENAME___ViewController;

@protocol ___FILEBASENAME___RouterInput <NSObject>

@required
- (void)navigateToSomeWhere;

@end

@interface ___FILEBASENAME___Router : NSObject <___FILEBASENAME___RouterInput>

@property (nonatomic, weak) ___FILEBASENAME___ViewController *viewController;

- (void)navigateToSomeWhere;
- (void)passDataToNextScene:(UIStoryboardSegue *)segue;

- (void)transitionToNextScene;

@end
