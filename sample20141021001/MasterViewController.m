//
//  MasterViewController.m
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

#import "lego.h"
#import "dataController.h"
#import "tableViewCell.h"


@interface MasterViewController ()
//    NSMutableArray *_objects;
    @property (nonatomic, strong) dataController *dataController;

@end

@implementation MasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[dataController alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dataController = [[dataController alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;

//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)insertNewObject:(id)sender
//{
//    if (!_objects) {
//        _objects = [[NSMutableArray alloc] init];
//    }
//    [_objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    return _objects.count;
    return [self.dataController dataCount];
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // @"Cell" 은 셀을 코드와 연결하는 식별자입니다. 식별자 이름을 정하고 고쳤으면 스토리보드에서도 같은 이름으로 통일해야합니다.

    
    //NSDate *object = _objects[indexPath.row];
    //cell.textLabel.text = [object description];
//    lego *lego = [self.dataController atIndex:indexPath.row];
//    cell.textLabel.text = lego.title;
//    return cell;
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    tableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // @"Cell" 은 셀을 코드와 연결하는 식별자입니다. 식별자 이름을 정하고 고쳤으면 스토리보드에서도 같은 이름으로 통일해야합니다.
    
    lego *lego = [self.dataController atIndex:indexPath.row];
    cell.titleLabel.text = lego.title;
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [_objects removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //NSDate *object = _objects[indexPath.row];
        //[[segue destinationViewController] setDetailItem:object];
    
        lego *lego = [self.dataController atIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:lego];
    }
}

@end
