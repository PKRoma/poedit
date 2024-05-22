/*
 *  This file is part of Poedit (https://poedit.net)
 *
 *  Copyright (C) 2016-2024 Vaclav Slavik
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a
 *  copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 *  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 *  DEALINGS IN THE SOFTWARE.
 *
 *  Generated by PaintCode (www.paintcodeapp.com)
 *
 */

#import "StyleKit.h"


@implementation StyleKit

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawSwitchButtonWithFrame: (NSRect)frame onColor: (NSColor*)onColor labelOffColor: (NSColor*)labelOffColor label: (NSString*)label togglePosition: (CGFloat)togglePosition isDarkMode: (BOOL)isDarkMode
{
    //// General Declarations
    CGContextRef context = NSGraphicsContext.currentContext.CGContext;

    //// Color Declarations
    NSColor* offColorLight = [NSColor colorWithCalibratedRed: 0.784 green: 0.784 blue: 0.784 alpha: 1];
    NSColor* offColorDark = [NSColor colorWithCalibratedRed: 0.222 green: 0.222 blue: 0.222 alpha: 1];
    NSColor* white = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 1];

    //// Variable Declarations
    BOOL toggled = togglePosition > 0.5;
    NSColor* labelColor = toggled ? onColor : labelOffColor;
    CGFloat toggleHorizOffset = -11 * (1 - togglePosition);
    NSColor* offColor = isDarkMode ? offColorDark : offColorLight;
    NSColor* backgroundColor = toggled ? onColor : offColor;
    NSColor* toggleStrokeColor = isDarkMode && !toggled ? [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 0.2] : [NSColor colorWithCalibratedRed: 0.1 green: 0.1 blue: 0.1 alpha: 0.1];
    NSColor* toggleInnerStrokeColor = isDarkMode && toggled ? [NSColor colorWithCalibratedRed: 0.1 green: 0.1 blue: 0.1 alpha: 0.3] : [NSColor colorWithCalibratedRed: 0.1 green: 0.1 blue: 0.1 alpha: 0.1];
    NSColor* toggleColor = isDarkMode ? [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 0.8] : white;


    //// Subframes
    NSRect toggle = NSMakeRect(NSMinX(frame) + NSWidth(frame) - 30, NSMinY(frame) + floor((NSHeight(frame) - 16) * 0.50000 + 0.5), 28, 16);


    //// Toggle
    {
        [NSGraphicsContext saveGraphicsState];
        CGContextBeginTransparencyLayer(context, NULL);

        //// Clip BackgroundCopy
        NSBezierPath* backgroundCopyPath = [NSBezierPath bezierPath];
        [backgroundCopyPath moveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 8, NSMinY(toggle)) controlPoint1: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 3.58) controlPoint2: NSMakePoint(NSMinX(toggle) + 3.11, NSMinY(toggle))];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 20, NSMinY(toggle))];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 8) controlPoint1: NSMakePoint(NSMinX(toggle) + 24.88, NSMinY(toggle)) controlPoint2: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 3.58)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 8)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle) + 20, NSMinY(toggle) + 16) controlPoint1: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 12.42) controlPoint2: NSMakePoint(NSMinX(toggle) + 24.89, NSMinY(toggle) + 16)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle) + 8, NSMinY(toggle) + 16)];
        [backgroundCopyPath curveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8) controlPoint1: NSMakePoint(NSMinX(toggle) + 3.12, NSMinY(toggle) + 16) controlPoint2: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 12.42)];
        [backgroundCopyPath lineToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8)];
        [backgroundCopyPath closePath];
        [backgroundCopyPath setWindingRule: NSEvenOddWindingRule];
        [backgroundCopyPath addClip];


        //// Background Drawing
        NSBezierPath* backgroundPath = [NSBezierPath bezierPath];
        [backgroundPath moveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 8, NSMinY(toggle)) controlPoint1: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 3.58) controlPoint2: NSMakePoint(NSMinX(toggle) + 3.11, NSMinY(toggle))];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 20, NSMinY(toggle))];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 8) controlPoint1: NSMakePoint(NSMinX(toggle) + 24.88, NSMinY(toggle)) controlPoint2: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 3.58)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 8)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle) + 20, NSMinY(toggle) + 16) controlPoint1: NSMakePoint(NSMinX(toggle) + 28, NSMinY(toggle) + 12.42) controlPoint2: NSMakePoint(NSMinX(toggle) + 24.89, NSMinY(toggle) + 16)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle) + 8, NSMinY(toggle) + 16)];
        [backgroundPath curveToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8) controlPoint1: NSMakePoint(NSMinX(toggle) + 3.12, NSMinY(toggle) + 16) controlPoint2: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 12.42)];
        [backgroundPath lineToPoint: NSMakePoint(NSMinX(toggle), NSMinY(toggle) + 8)];
        [backgroundPath closePath];
        [backgroundPath setWindingRule: NSEvenOddWindingRule];
        [backgroundColor setFill];
        [backgroundPath fill];
        [toggleStrokeColor setStroke];
        [backgroundPath setLineWidth: 1];
        [backgroundPath stroke];


        //// Button Drawing
        [NSGraphicsContext saveGraphicsState];
        CGContextTranslateCTM(context, NSMinX(toggle) + 13, NSMinY(toggle) + 1.5);

        NSBezierPath* buttonPath = [NSBezierPath bezierPathWithOvalInRect: NSMakeRect(toggleHorizOffset, 0, 13, 13)];
        [toggleColor setFill];
        [buttonPath fill];
        [toggleInnerStrokeColor setStroke];
        [buttonPath setLineWidth: 1];
        [buttonPath stroke];

        [NSGraphicsContext restoreGraphicsState];


        CGContextEndTransparencyLayer(context);
        [NSGraphicsContext restoreGraphicsState];
    }


    //// Text Drawing
    NSRect textRect = NSMakeRect(NSMinX(frame), NSMinY(frame) + floor((NSHeight(frame) - 18) / 2 + 0.5), NSWidth(frame) - 36, 18);
    NSMutableParagraphStyle* textStyle = [NSMutableParagraphStyle new];
    textStyle.alignment = NSTextAlignmentRight;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [NSFont boldSystemFontOfSize: NSFont.smallSystemFontSize], NSForegroundColorAttributeName: labelColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = NSHeight([label boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes]);
    NSRect textTextRect = NSMakeRect(NSMinX(textRect), NSMinY(textRect) + (NSHeight(textRect) - textTextHeight) / 2, NSWidth(textRect), textTextHeight);
    [NSGraphicsContext saveGraphicsState];
    NSRectClip(textRect);
    [label drawInRect: NSOffsetRect(textTextRect, 0, 0) withAttributes: textFontAttributes];
    [NSGraphicsContext restoreGraphicsState];
}

+ (void)drawTranslucentButtonWithFrame: (NSRect)frame label: (NSString*)label pressed: (BOOL)pressed
{
    //// General Declarations
    CGContextRef context = NSGraphicsContext.currentContext.CGContext;

    //// Color Declarations
    NSColor* white = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 1];
    NSColor* pressedTranslucent = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.157];
    NSColor* strokeColor = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.118];
    NSColor* strokeColor2 = [NSColor colorWithCalibratedRed: 0 green: 0 blue: 0 alpha: 0.071];

    //// Shadow Declarations
    NSShadow* translucentButtonShadow = [[NSShadow alloc] init];
    [translucentButtonShadow setShadowColor: [NSColor.blackColor colorWithAlphaComponent: 0.25]];
    [translucentButtonShadow setShadowOffset: NSMakeSize(0.1, -0.6)];
    [translucentButtonShadow setShadowBlurRadius: 1];

    //// Variable Declarations
    NSColor* translucentButtonColor = pressed ? pressedTranslucent : white;


    //// Subframes
    NSRect group2 = NSMakeRect(NSMinX(frame) + 0.75, NSMinY(frame) + 1.75, NSWidth(frame) - 1.5, NSHeight(frame) - 3.5);


    //// Group 2
    {
        //// Group 3
        {
            [NSGraphicsContext saveGraphicsState];
            CGContextSetAlpha(context, 0.7);
            CGContextBeginTransparencyLayer(context, NULL);


            //// Rectangle Drawing
            NSBezierPath* rectanglePath = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
            [NSGraphicsContext saveGraphicsState];
            [translucentButtonShadow set];
            [translucentButtonColor setFill];
            [rectanglePath fill];
            [NSGraphicsContext restoreGraphicsState];



            //// Rectangle 2 Drawing
            NSBezierPath* rectangle2Path = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
            [strokeColor setStroke];
            [rectangle2Path setLineWidth: 0.5];
            [rectangle2Path stroke];


            CGContextEndTransparencyLayer(context);
            [NSGraphicsContext restoreGraphicsState];
        }


        //// Rectangle 3 Drawing
        NSBezierPath* rectangle3Path = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(group2) + floor(NSWidth(group2) * 0.00000 + 0.5), NSMinY(group2) + floor(NSHeight(group2) * 0.00000 + 0.5), floor(NSWidth(group2) * 1.00000) - floor(NSWidth(group2) * 0.00000 + 0.5) + 0.5, floor(NSHeight(group2) * 1.00000) - floor(NSHeight(group2) * 0.00000 + 0.5) + 0.5) xRadius: 4 yRadius: 4];
        [strokeColor2 setStroke];
        [rectangle3Path setLineWidth: 0.5];
        [rectangle3Path stroke];
    }


    //// Text Drawing
    NSRect textRect = NSMakeRect(NSMinX(frame) + 14, NSMinY(frame) + floor((NSHeight(frame) - 12) * 0.50000 + 0.5), NSWidth(frame) - 27, 12);
    NSMutableParagraphStyle* textStyle = [NSMutableParagraphStyle new];
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [NSFont systemFontOfSize: NSFont.smallSystemFontSize], NSForegroundColorAttributeName: NSColor.blackColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = NSHeight([label boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes]);
    NSRect textTextRect = NSMakeRect(NSMinX(textRect), NSMinY(textRect) + (NSHeight(textRect) - textTextHeight) / 2, NSWidth(textRect), textTextHeight);
    [NSGraphicsContext saveGraphicsState];
    NSRectClip(textRect);
    [label drawInRect: NSOffsetRect(textTextRect, 0, 0) withAttributes: textFontAttributes];
    [NSGraphicsContext restoreGraphicsState];
}

+ (void)drawActionButtonWithFrame: (NSRect)frame buttonColor: (NSColor*)buttonColor hasIcon: (BOOL)hasIcon label: (NSString*)label description: (NSString*)description
{
    //// Color Declarations
    NSColor* osSecondaryLabelColor = [NSColor secondaryLabelColor]; // manually modified
    NSColor* osLabelColor = [NSColor labelColor]; // manually modified

    //// Variable Declarations
    CGFloat textPosition = hasIcon ? 58 : 18;

    //// Rectangle Drawing
    NSBezierPath* rectanglePath = [NSBezierPath bezierPathWithRoundedRect: NSMakeRect(NSMinX(frame) + 2, NSMinY(frame) + 2, NSWidth(frame) - 4, NSHeight(frame) - 4) xRadius: 5 yRadius: 5];
    [buttonColor setFill];
    [rectanglePath fill];


    //// Text Drawing
    NSRect textRect = NSMakeRect(textPosition, 25, 468, 14);
    NSMutableParagraphStyle* textStyle = [NSMutableParagraphStyle new];
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [NSFont systemFontOfSize: NSFont.smallSystemFontSize], NSForegroundColorAttributeName: osSecondaryLabelColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = NSHeight([description boundingRectWithSize: textRect.size options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes]);
    NSRect textTextRect = NSMakeRect(NSMinX(textRect), NSMinY(textRect) + NSHeight(textRect) - textTextHeight, NSWidth(textRect), textTextHeight);
    [NSGraphicsContext saveGraphicsState];
    NSRectClip(textRect);
    [description drawInRect: NSOffsetRect(textTextRect, 0, 0) withAttributes: textFontAttributes];
    [NSGraphicsContext restoreGraphicsState];


    if (hasIcon)
    {
        //// IconFrame Drawing
    }


    //// Text 2 Drawing
    NSRect text2Rect = NSMakeRect(textPosition, 8, 468, 18);
    NSMutableParagraphStyle* text2Style = [NSMutableParagraphStyle new];
    text2Style.alignment = NSTextAlignmentLeft;

    NSDictionary* text2FontAttributes = @{NSFontAttributeName: [NSFont boldSystemFontOfSize: NSFont.systemFontSize], NSForegroundColorAttributeName: osLabelColor, NSParagraphStyleAttributeName: text2Style};

    [label drawInRect: NSOffsetRect(text2Rect, 0, -1) withAttributes: text2FontAttributes];
}

@end
