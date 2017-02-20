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

@class ___FILEBASENAME___ViewModel;
@class ___FILEBASENAME___Response;

@protocol ___FILEBASENAME___PresenterOutput <NSObject>
@required
- (void)displaySomething:(___FILEBASENAME___ViewModel *)viewModel;
@end

@protocol ___FILEBASENAME___PresenterInput <NSObject>
@required
- (void)presentSomething:(___FILEBASENAME___Response *)response;
@end


@interface ___FILEBASENAME___Presenter : NSObject <___FILEBASENAME___PresenterInput>

@property (nonatomic, weak) id<___FILEBASENAME___PresenterOutput> output;
@end
