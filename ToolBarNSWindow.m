/*=========================================================================
  Program:   OsiriX

  Copyright (c) OsiriX Team
  All rights reserved.
  Distributed under GNU - LGPL
  
  See http://www.osirix-viewer.com/copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.
=========================================================================*/

#import "ToolBarNSWindow.h"
#import "ToolbarPanel.h"


@implementation ToolBarNSWindow

- (BOOL) canBecomeMainWindow {
//	[self setDelegate: self];
	return NO;
}

- (BOOL) canBecomeKeyWindow {
	return YES;
}

/*- (void)windowDidResize:(NSNotification *)notification
{
//	[ (ToolbarPanelController*) [self windowController] fixSize];
}*/

/*- (void)setFrame:(NSRect)windowFrame display:(BOOL)displayViews
{
	if( willClose == NO)
	{
		if( [self toolbar])
		{
			[super setFrame: windowFrame display:displayViews];
		}
	}
}*/

/*- (void)display
{
	if( [self toolbar] &&  willClose == NO)
		[super display];
}*/

/*- (void)displayIfNeeded
{
	if( [self toolbar] &&  willClose == NO)
		[super displayIfNeeded];
}*/

/*-(void)setFrame:(NSRect)windowFrame display:(BOOL)displayViews animate:(BOOL)performAnimation {
	return [super setFrame:windowFrame display:displayViews animate:NO];
}*/

-(NSTimeInterval)animationResizeTime:(NSRect)newFrame {
	return 0;
}

-(NSRect)constrainFrameRect:(NSRect)frameRect toScreen:(NSScreen*)screen {
	return frameRect; // not movable, and OsiriX knows where to place toolbars ;)
}

// @synthesize willClose;

@end
