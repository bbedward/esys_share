#import "EsysSharePlugin.h"
#import <esys_share/esys_share-Swift.h>

@implementation EsysSharePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEsysSharePlugin registerWithRegistrar:registrar];
}
@end
