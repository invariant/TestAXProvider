//
//  SpecialImageView.m
//  TestAXProvider
//
//  Created by Nicholas Moore on 01/05/2013.
//  Copyright (c) 2013 Nicholas Moore. All rights reserved.
//

#import "SpecialImageView.h"

@implementation SpecialImageView

- (NSView *)hitTest:(NSPoint)point
{
    // if mouse is in this view (important check)
    if (NSPointInRect(point, [self frame]))
    {
        // enumerate sibling views
        for (NSView *v in [[self superview] subviews])
        {
            // and mouse is also in a text view
            if ([v isKindOfClass:[NSTextField class]] && NSPointInRect(point, [v frame]))
            {
                return v;
            }
        }
    }
    return [super hitTest:point];
}

@end
