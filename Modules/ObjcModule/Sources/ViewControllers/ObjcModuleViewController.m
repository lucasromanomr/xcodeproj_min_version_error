#import "ObjcModuleViewController.h"
//#import <ObjcModule/ObjcModule-Swift.h>
//#import "ObjcModule-Swift.h"
#import "Modules/ObjcModule/ObjcModule-Swift.h"


@interface ObjcModuleViewController ()

@end

@implementation ObjcModuleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureLabelView];
    
    self.title = @"ObjcModule Title";
    if (@available(iOS 13.0, *)) {
        self.view.backgroundColor = UIColor.systemBackgroundColor;
    } else {
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor;
    }
}

- (void)configureLabelView {
    LabelView *labelView = [[LabelView alloc] init];
    [self.view addSubview:labelView];
    labelView.translatesAutoresizingMaskIntoConstraints = false;
    
    [NSLayoutConstraint activateConstraints:@[
        [labelView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [labelView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [labelView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor]
    ]];
    
    UILabel *secondLabel = [UILabel new];
    secondLabel.text = @"Second text label";
    secondLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    [self.view addSubview:secondLabel];
    [NSLayoutConstraint activateConstraints:@[
        [secondLabel.topAnchor constraintEqualToAnchor:labelView.bottomAnchor constant:20],
        [secondLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [secondLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [secondLabel.topAnchor constraintLessThanOrEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:-20],
    ]];
}

@end
