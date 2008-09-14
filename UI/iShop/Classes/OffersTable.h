//
//  OffersTableDelegate.h
//  iShop
//
//  Created by Andrey Konovalov on 9/10/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OffersSortCell;
@interface OffersTable : UITableView <UITableViewDataSource, UITableViewDelegate, UIWebViewDelegate>
{
	UIViewController *parentController;
	IBOutlet OffersSortCell *sortCell;
}
@property (assign,readwrite) UIViewController *parentController;
@property (nonatomic, retain) OffersSortCell *sortCell;

-(void) setSortingType:(NSInteger)type;//0-price,1-shipping,2-total
-(void) eraseData;
-(void) setOffers:(void */*std::vector<ns2__MProductOffer * >**/)offersVector;
@end
