//
//  CLPlacemark+LOSPAdditions.m
//
//  Copyright © 2019 Buglife, Inc. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "CLPlacemark+LOSPAdditions.h"
#import <Intents/Intents.h>

@implementation CLPlacemark (LOSPAdditions)


+ (instancetype)Riyadh
{
    return [CLPlacemark losp_placemarkName:@"الرياض" latitude:24.7241502 longitude:46.6752957];
}
+ (instancetype)Jeddah
{
    return [CLPlacemark losp_placemarkName:@"جدة" latitude:21.494568 longitude:39.185928];
}
+ (instancetype)Dammam
{
    return [CLPlacemark losp_placemarkName:@"الدمام" latitude:26.362904 longitude:50.2727524];
}
+ (instancetype)madynah
{
    return [CLPlacemark losp_placemarkName:@"المدينة المنورة" latitude:24.4714392 longitude:39.8977703];
}
+ (instancetype)buraydah
{
    return [CLPlacemark losp_placemarkName:@"بريدة" latitude:26.3480239 longitude:44.2036375];
}
+ (instancetype)Unayzah
{
    return [CLPlacemark losp_placemarkName:@"عنيزة" latitude:26.0882768 longitude:44.0531734];
}
+ (instancetype)Tabuk
{
    return [CLPlacemark losp_placemarkName:@"تبوك" latitude:28.3988322 longitude:36.635944];
}
+ (instancetype)Jazan
{
    return [CLPlacemark losp_placemarkName:@"جازان" latitude:16.8991025 longitude:42.7285497];
}
+ (nonnull NSArray<CLPlacemark *> *)losp_presets
{
    return @[
            [self Riyadh],
            [self Jeddah],
            [self Dammam],
            [self madynah],
            [self buraydah],
            [self Unayzah],
            [self Tabuk],
            [self Jazan]
             ];
}

+ (nonnull instancetype)losp_placemarkName:(nonnull NSString *)name latitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude
{
    CLLocation *location = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
    return [CLPlacemark placemarkWithLocation:location name:name postalAddress:nil];
}

+ (void)losp_getPlacemarkWithAddress:(nonnull NSString *)address completion:(void (^)(CLPlacemark * _Nullable, NSError * _Nullable))completion
{
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:address completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(placemarks.firstObject, error);
        });
    }];
}

@end
