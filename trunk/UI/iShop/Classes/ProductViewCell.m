//
//  ProductViewCell.m
//  iShop
//
//  Created by Andrey Konovalov on 18.08.08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ProductViewCell.h"

@implementation ProductViewCell
@synthesize name;
@synthesize price;
@synthesize highlight1;
@synthesize highlight2;
@synthesize image;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		// Initialization code
	}
	return self;
}

- (void)imageFetcher:(GDataHTTPFetcher *)fetcher finishedWithData:(NSData *)data 
{
	UIImage *img = [[[UIImage alloc] initWithData:data] autorelease];
	//	[imageList addObject:[[MyTubeIKBrowserItem alloc] init:[fetcher userData] image:image]];
	
	[indicator stopAnimating];
	[image setImage:img];
}
- (void)initLabelsFont
{
	[name setFont:[UIFont fontWithName:@"Arial Unicode MS" size:15.5]];//[name.font fontWithSize:15.5]];
	[highlight1 setFont:[UIFont fontWithName:@"Arial Unicode MS" size:13.5]];//[highlight1.font fontWithSize:13.5]];
	[highlight2 setFont:[UIFont fontWithName:@"Arial Unicode MS" size:13.5]];//[highlight2.font fontWithSize:13.5]];
	[price setFont:[UIFont fontWithName:@"Arial Unicode MS" size:13.5]];//[price.font fontWithSize:13.5]];
	[name setTextColor:[UIColor colorWithRed:RGB(0) green:RGB(0) blue:RGB(0) alpha:1.0]];
	[highlight1 setTextColor:[UIColor colorWithRed:RGB(25) green:RGB(56) blue:RGB(102) alpha:1.0]];
	[highlight2 setTextColor:[UIColor colorWithRed:RGB(25) green:RGB(56) blue:RGB(102) alpha:1.0]];
	[price setTextColor:[UIColor colorWithRed:RGB(201) green:RGB(0) blue:RGB(0) alpha:1.0]];	
}
const char *fontNamesArr[]={"HiraKakuProN-W3","Courier","Courier-BoldOblique","Courier-Oblique","Courier-Bold",
						"ArialMT","Arial-BoldMT","Arial-BoldItalicMT","Arial-ItalicMT","STHeitiTC-Light","STHeitiTC-Medium",
						"AppleGothic","CourierNewPS-BoldMT","CourierNewPS-ItalicMT","CourierNewPS-BoldItalicMT","CourierNewPSMT",
"Zapfino","HiraKakuProN-W6","ArialUnicodeMS","STHeitiSC-Medium","STHeitiSC-Light","AmericanTypewriter",
"AmericanTypewriter-Bold","Helvetica-Oblique","Helvetica-BoldOblique","Helvetica",
"Helvetica-Bold","MarkerFelt-Thin","HelveticaNeue","HelveticaNeue-Bold",
"DBLCDTempBlack","Verdana-Bold","Verdana-BoldItalic","Verdana",
"Verdana-Italic","TimesNewRomanPSMT","TimesNewRomanPS-BoldMT",
"TimesNewRomanPS-BoldItalicMT","TimesNewRomanPS-ItalicMT","Georgia-Bold",
"Georgia","Georgia-BoldItalic","Georgia-Italic","STHeitiJ-Medium","STHeitiJ-Light","ArialRoundedMTBold",
"TrebuchetMS-Italic","TrebuchetMS","Trebuchet-BoldItalic","TrebuchetMS-Bold","STHeitiK-Medium","STHeitiK-Light"};
- (void)setSelected:(BOOL)selected animated:(BOOL)animated 
{
//	NSLog(@"size %d",sizeof(fontNamesArr)/sizeof(const char*));
	if(selected)
	{
		if(iter >= sizeof(fontNamesArr)/sizeof(const char*))
			iter=0;
		[name setText:[NSString stringWithUTF8String:fontNamesArr[iter]]];
		[name setFont:[UIFont fontWithName:[NSString stringWithUTF8String:fontNamesArr[iter]] size:15.5]];//[name.font fontWithSize:15.5]];
		[highlight1 setFont:[UIFont fontWithName:[NSString stringWithUTF8String:fontNamesArr[iter]] size:13.5]];//[highlight1.font fontWithSize:13.5]];
		[highlight2 setFont:[UIFont fontWithName:[NSString stringWithUTF8String:fontNamesArr[iter]] size:13.5]];//[highlight2.font fontWithSize:13.5]];
		[price setFont:[UIFont fontWithName:[NSString stringWithUTF8String:fontNamesArr[iter]] size:13.5]];//[price.font fontWithSize:13.5]];
		NSLog(@"iter %d",iter);
		iter++;
	}
	//	[super setSelected:selected animated:animated];

	// Configure the view for the selected state
}


- (void)dealloc {
	[super dealloc];
}


@end
