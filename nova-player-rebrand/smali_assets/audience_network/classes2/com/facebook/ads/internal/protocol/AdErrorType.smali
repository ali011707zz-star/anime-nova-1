.class public final enum Lcom/facebook/ads/internal/protocol/AdErrorType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/protocol/AdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static A03:[B

.field public static final synthetic A04:[Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum BROKEN_MEDIA_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum CLEAR_TEXT_SUPPORT_NOT_ALLOWED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum DISABLED_APP:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum IMAGE_CACHE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum INCORRECT_API_CALL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum INCORRECT_STATE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum LOAD_AD_CALLED_MORE_THAN_ONCE:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum MISSING_DEPENDENCIES_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_ADAPTER_ON_START:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_MEDIAVIEW_IN_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum NO_MEDIAVIEW_IN_NATIVEBANNERAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum REMOTE_ADS_SERVICE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum START_BEFORE_INIT:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum UNSUPPORTED_AD_ASSET_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum WEB_VIEW_CACHE_FILE_WAS_DENIED:Lcom/facebook/ads/internal/protocol/AdErrorType;

.field public static final enum WEB_VIEW_FAILED_TO_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 2084
    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A01()V

    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0xa04

    const/16 v1, 0xd

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v2, 0x8ed

    const/16 v1, 0xd

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2085
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x82a

    const/16 v1, 0xd

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v2, 0x7ac

    const/16 v1, 0xd

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2086
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x837

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/16 v2, 0x7ed

    const/4 v1, 0x7

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/16 v12, 0x3e9

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2087
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x105

    const/16 v1, 0x1f

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x6d5

    const/16 v1, 0x13

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v6, 0x3ea

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2088
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x170

    const/16 v1, 0x27

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x226

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    const/16 v12, 0x3ed

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->DISABLED_APP:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2089
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x8a1

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x884

    const/16 v1, 0xc

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/16 v6, 0x7d0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2090
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x654

    const/16 v1, 0xe

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x4b9

    const/16 v1, 0xe

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    const/16 v12, 0x7d1

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2091
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x84c

    const/16 v1, 0x13

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x1f5

    const/16 v1, 0x13

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/16 v6, 0x7d2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2092
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x9e0

    const/16 v1, 0x24

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x890

    const/16 v1, 0x11

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    const/16 v12, 0x7d5

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->START_BEFORE_INIT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2093
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x157

    const/16 v1, 0x19

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x85f

    const/16 v1, 0x18

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    const/16 v6, 0x7d8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->REMOTE_ADS_SERVICE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2094
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x8ad

    const/16 v1, 0x1f

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x4c7

    const/16 v1, 0x17

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    const/16 v12, 0x7d9

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2095
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x8cc

    const/16 v1, 0x21

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x877

    const/16 v1, 0xd

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const/16 v6, 0x7da

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2096
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x96

    const/16 v1, 0x19

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x12

    const/16 v1, 0x15

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xc

    const/16 v12, 0x2329

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2097
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x3fc

    const/16 v1, 0x22

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x1bf

    const/16 v1, 0x12

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    const/16 v6, 0x834

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BROKEN_MEDIA_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2098
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x26f

    const/16 v1, 0x27

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v2, 0x27

    const/16 v1, 0x11

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    const/16 v6, 0x457

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2099
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x296

    const/16 v1, 0x2a

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v2, 0x38

    const/16 v1, 0x12

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xf

    const/16 v12, 0x458

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2100
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x41e

    const/16 v1, 0x32

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x83e

    const/16 v1, 0xe

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/16 v6, 0x4b1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2101
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x927

    const/16 v1, 0x2f

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x8fa

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x11

    const/16 v12, 0x4b2

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2102
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x23f

    const/16 v1, 0x30

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v2, 0x232

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    const/16 v6, 0x4b3

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2103
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x2c0

    const/16 v1, 0x2a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x7de

    const/16 v1, 0xf

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x13

    const/16 v12, 0x516

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2104
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x786

    const/16 v1, 0xf

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x70e

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    const/16 v6, 0xbb9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2105
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x1d1

    const/16 v1, 0x24

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v2, 0x197

    const/16 v1, 0x17

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x15

    const/16 v6, 0xfa1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2106
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x689

    const/16 v1, 0x13

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v2, 0x1ae

    const/16 v1, 0x11

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x16

    const/16 v6, 0xfa2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2107
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x124

    const/16 v1, 0x19

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v2, 0x7b9

    const/16 v1, 0x12

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x17

    const/16 v12, 0x1389

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2108
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x13d

    const/16 v1, 0x1a

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x7cb

    const/16 v1, 0x13

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    const/16 v6, 0x138a

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_START:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2109
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x662

    const/16 v1, 0x27

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x4de

    const/16 v1, 0x1f

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x19

    const/16 v12, 0x138b

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2110
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x98b

    const/16 v1, 0x16

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x974

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    const/16 v6, 0x138c

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_FAILED_TO_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2111
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x450

    const/16 v1, 0x2b

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x956

    const/16 v1, 0x1e

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1b

    const/16 v12, 0x138d

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_CACHE_FILE_WAS_DENIED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2112
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x766

    const/16 v1, 0x20

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v2, 0x7f4

    const/16 v1, 0x18

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1c

    const/16 v6, 0x1771

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_MEDIAVIEW_IN_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2113
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x737

    const/16 v1, 0x2f

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/16 v2, 0x80c

    const/16 v1, 0x1e

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1d

    const/16 v12, 0x1772

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_MEDIAVIEW_IN_NATIVEBANNERAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2114
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0xa11

    const/16 v1, 0x1d

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x90a

    const/16 v1, 0x1d

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    const/16 v6, 0x1773

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNSUPPORTED_AD_ASSET_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2115
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x5b

    const/16 v1, 0x12

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1f

    const/16 v12, 0x1b59

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2116
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x6d

    const/16 v1, 0x29

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x6b9

    const/16 v1, 0x1c

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0x1b5a

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2117
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x4fd

    const/16 v1, 0x157

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x208

    const/16 v1, 0x1e

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x21

    const/16 v12, 0x1b5b

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->CLEAR_TEXT_SUPPORT_NOT_ALLOWED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2118
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x9bc

    const/16 v1, 0x24

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x4a4

    const/16 v1, 0x15

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x22

    const/16 v6, 0x1b5c

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_STATE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2119
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x2ea

    const/16 v1, 0xb2

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x71d

    const/16 v1, 0x1a

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x23

    const/16 v12, 0x1b5d

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->MISSING_DEPENDENCIES_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2120
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x39c

    const/16 v1, 0x4b

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x4a

    const/16 v1, 0x11

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    const/16 v6, 0x1b5e

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2121
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0xaf

    const/16 v1, 0x56

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x795

    const/16 v1, 0x17

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x25

    const/16 v12, 0x1b5f

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2122
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x9a1

    const/16 v1, 0x1b

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x48c

    const/16 v1, 0x18

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    const/16 v6, 0x1b60

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_API_CALL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2123
    new-instance v9, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x3e7

    const/16 v1, 0x15

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v2, 0x47b

    const/16 v1, 0x11

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x27

    const/16 v12, 0x1f41

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/protocol/AdErrorType;->IMAGE_CACHE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2124
    new-instance v3, Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v2, 0x6e8

    const/16 v1, 0x26

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x69c

    const/16 v1, 0x1d

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    const/16 v6, 0x1f42

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/protocol/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_AD_CALLED_MORE_THAN_ONCE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 2125
    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdErrorType;->A02()[Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A04:[Lcom/facebook/ads/internal/protocol/AdErrorType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 69708
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69709
    iput p3, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00:I

    .line 69710
    iput-object p4, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A01:Ljava/lang/String;

    .line 69711
    iput-boolean p5, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A02:Z

    .line 69712
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xa2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x18t
        0x1dt
        0x6t
        0x18t
        0x15t
        0xbt
        0x1ct
        0x18t
        0x1dt
        0x0t
        0x6t
        0xat
        0xdt
        0x18t
        0xbt
        0xdt
        0x1ct
        0x1dt
        0x48t
        0x4dt
        0x56t
        0x59t
        0x5bt
        0x4ct
        0x5at
        0x4ct
        0x47t
        0x5dt
        0x48t
        0x5dt
        0x40t
        0x46t
        0x47t
        0x56t
        0x4ct
        0x5bt
        0x5bt
        0x46t
        0x5bt
        0x6at
        0x6ft
        0x74t
        0x79t
        0x6et
        0x7at
        0x7et
        0x6et
        0x78t
        0x7ft
        0x74t
        0x6dt
        0x6at
        0x62t
        0x67t
        0x6et
        0x6ft
        0x11t
        0x14t
        0xft
        0x2t
        0x15t
        0x1t
        0x5t
        0x15t
        0x3t
        0x4t
        0xft
        0x4t
        0x19t
        0x1dt
        0x15t
        0x1ft
        0x5t
        0x4t
        0x1dt
        0xct
        0x15t
        0x3t
        0x12t
        0x13t
        0x8t
        0x3t
        0xft
        0x9t
        0xct
        0xct
        0x13t
        0xet
        0x8t
        0x19t
        0x18t
        0x25t
        0x0t
        0x44t
        0x5t
        0x8t
        0x16t
        0x1t
        0x5t
        0x0t
        0x1dt
        0x44t
        0x17t
        0x10t
        0x5t
        0x16t
        0x10t
        0x1t
        0x0t
        0x10t
        0x35t
        0x71t
        0x32t
        0x30t
        0x3ft
        0x3ft
        0x3et
        0x25t
        0x71t
        0x33t
        0x34t
        0x71t
        0x3dt
        0x3et
        0x30t
        0x35t
        0x34t
        0x35t
        0x71t
        0x26t
        0x39t
        0x38t
        0x3dt
        0x34t
        0x71t
        0x33t
        0x34t
        0x38t
        0x3ft
        0x36t
        0x71t
        0x35t
        0x38t
        0x22t
        0x21t
        0x3dt
        0x30t
        0x28t
        0x34t
        0x35t
        0x47t
        0x62t
        0x26t
        0x65t
        0x69t
        0x73t
        0x6at
        0x62t
        0x26t
        0x68t
        0x69t
        0x72t
        0x26t
        0x64t
        0x63t
        0x26t
        0x76t
        0x74t
        0x63t
        0x75t
        0x63t
        0x68t
        0x72t
        0x63t
        0x62t
        0x53t
        0x76t
        0x32t
        0x7bt
        0x61t
        0x32t
        0x7ct
        0x7dt
        0x66t
        0x32t
        0x7et
        0x7dt
        0x73t
        0x76t
        0x77t
        0x76t
        0x3ct
        0x32t
        0x5ft
        0x73t
        0x79t
        0x77t
        0x32t
        0x61t
        0x67t
        0x60t
        0x77t
        0x32t
        0x66t
        0x7at
        0x73t
        0x66t
        0x32t
        0x6bt
        0x7dt
        0x67t
        0x32t
        0x71t
        0x73t
        0x7et
        0x7et
        0x32t
        0x7et
        0x7dt
        0x73t
        0x76t
        0x53t
        0x76t
        0x3at
        0x3bt
        0x32t
        0x70t
        0x77t
        0x74t
        0x7dt
        0x60t
        0x77t
        0x32t
        0x60t
        0x77t
        0x75t
        0x7bt
        0x61t
        0x66t
        0x77t
        0x60t
        0x44t
        0x7bt
        0x77t
        0x65t
        0x54t
        0x7dt
        0x60t
        0x5bt
        0x7ct
        0x66t
        0x77t
        0x60t
        0x73t
        0x71t
        0x66t
        0x7bt
        0x7dt
        0x7ct
        0x3at
        0x3bt
        0x2ft
        0xat
        0x4et
        0x19t
        0xft
        0x1dt
        0x4et
        0x1ct
        0xbt
        0x43t
        0x2t
        0x1t
        0xft
        0xat
        0xbt
        0xat
        0x4et
        0x1at
        0x1t
        0x1t
        0x4et
        0x8t
        0x1ct
        0xbt
        0x1ft
        0x1bt
        0xbt
        0x0t
        0x1at
        0x2t
        0x17t
        0x30t
        0x15t
        0x10t
        0x1t
        0x5t
        0x14t
        0x3t
        0x51t
        0x18t
        0x2t
        0x51t
        0x1ft
        0x4t
        0x1dt
        0x1dt
        0x51t
        0x1et
        0x1ft
        0x3dt
        0x1et
        0x10t
        0x15t
        0x51t
        0x30t
        0x15t
        0x7ct
        0x59t
        0x5ct
        0x4dt
        0x49t
        0x58t
        0x4ft
        0x1dt
        0x54t
        0x4et
        0x1dt
        0x53t
        0x48t
        0x51t
        0x51t
        0x1dt
        0x52t
        0x53t
        0x6et
        0x49t
        0x5ct
        0x4ft
        0x49t
        0x1dt
        0x7ct
        0x59t
        0x69t
        0x4ct
        0x5bt
        0x8t
        0x7bt
        0x4dt
        0x5at
        0x5et
        0x41t
        0x4bt
        0x4dt
        0x8t
        0x58t
        0x5at
        0x47t
        0x4bt
        0x4dt
        0x5bt
        0x5bt
        0x8t
        0x4dt
        0x5at
        0x5at
        0x47t
        0x5at
        0x47t
        0x76t
        0x76t
        0x26t
        0x6ft
        0x75t
        0x26t
        0x62t
        0x6ft
        0x75t
        0x67t
        0x64t
        0x6at
        0x63t
        0x62t
        0x26t
        0x60t
        0x74t
        0x69t
        0x6bt
        0x26t
        0x6bt
        0x67t
        0x6dt
        0x6ft
        0x68t
        0x61t
        0x26t
        0x67t
        0x62t
        0x26t
        0x74t
        0x63t
        0x77t
        0x73t
        0x63t
        0x75t
        0x72t
        0x75t
        0x1t
        0xat
        0x7t
        0x1ct
        0xat
        0xet
        0x13t
        0x11t
        0x6t
        0x10t
        0x10t
        0xat
        0xct
        0xdt
        0x1ct
        0xet
        0xat
        0x10t
        0xet
        0x2t
        0x17t
        0x0t
        0xbt
        0x55t
        0x5et
        0x53t
        0x48t
        0x47t
        0x56t
        0x4et
        0x5bt
        0x58t
        0x56t
        0x53t
        0x48t
        0x52t
        0x45t
        0x45t
        0x58t
        0x45t
        0x5ft
        0x4ft
        0x52t
        0x56t
        0x58t
        0x53t
        0x42t
        0x50t
        0x58t
        0x59t
        0x54t
        0x5ct
        0x42t
        0x58t
        0x4ft
        0x4ft
        0x52t
        0x4ft
        0x70t
        0x5bt
        0x56t
        0x12t
        0x42t
        0x53t
        0x4bt
        0x5et
        0x5dt
        0x53t
        0x56t
        0x12t
        0x56t
        0x5dt
        0x57t
        0x41t
        0x12t
        0x5ct
        0x5dt
        0x46t
        0x12t
        0x5ft
        0x53t
        0x46t
        0x51t
        0x5at
        0x12t
        0x42t
        0x5et
        0x53t
        0x51t
        0x57t
        0x5ft
        0x57t
        0x5ct
        0x46t
        0x8t
        0xat
        0x8t
        0x3t
        0xet
        0x14t
        0xdt
        0xat
        0x2t
        0x7t
        0x1et
        0x19t
        0xet
        0x14t
        0xet
        0x19t
        0x19t
        0x4t
        0x19t
        0x74t
        0x7bt
        0x72t
        0x76t
        0x65t
        0x68t
        0x63t
        0x72t
        0x6ft
        0x63t
        0x68t
        0x64t
        0x62t
        0x67t
        0x67t
        0x78t
        0x65t
        0x63t
        0x68t
        0x79t
        0x78t
        0x63t
        0x68t
        0x76t
        0x7bt
        0x7bt
        0x78t
        0x60t
        0x72t
        0x73t
        0x7dt
        0x70t
        0x6at
        0x78t
        0x7bt
        0x75t
        0x7ct
        0x7dt
        0x66t
        0x78t
        0x69t
        0x69t
        0x15t
        0x2t
        0x2t
        0x1ft
        0x2t
        0xft
        0x1dt
        0x15t
        0x3t
        0x3t
        0x11t
        0x17t
        0x15t
        0x14t
        0x33t
        0x31t
        0x37t
        0x30t
        0x3dt
        0x3dt
        0x39t
        0x72t
        0x13t
        0x36t
        0x21t
        0x72t
        0x1t
        0x16t
        0x19t
        0x72t
        0x36t
        0x37t
        0x3et
        0x3bt
        0x24t
        0x37t
        0x20t
        0x2bt
        0x72t
        0x20t
        0x37t
        0x21t
        0x22t
        0x3dt
        0x3ct
        0x21t
        0x37t
        0x72t
        0x17t
        0x20t
        0x20t
        0x3dt
        0x20t
        0x72t
        0x3ft
        0x37t
        0x21t
        0x21t
        0x33t
        0x35t
        0x37t
        0x0t
        0x27t
        0x25t
        0x23t
        0x24t
        0x29t
        0x29t
        0x2dt
        0x66t
        0x7t
        0x22t
        0x35t
        0x66t
        0x15t
        0x2t
        0xdt
        0x66t
        0x34t
        0x23t
        0x37t
        0x33t
        0x23t
        0x35t
        0x32t
        0x66t
        0x20t
        0x29t
        0x34t
        0x66t
        0x27t
        0x22t
        0x35t
        0x66t
        0x20t
        0x27t
        0x2ft
        0x2at
        0x23t
        0x22t
        0x18t
        0x3ft
        0x3dt
        0x3bt
        0x3ct
        0x31t
        0x31t
        0x35t
        0x7et
        0x1ft
        0x3at
        0x2dt
        0x7et
        0xdt
        0x1at
        0x15t
        0x7et
        0x2ct
        0x3bt
        0x2ft
        0x2bt
        0x3bt
        0x2dt
        0x2at
        0x7et
        0x38t
        0x31t
        0x2ct
        0x7et
        0x3ft
        0x3at
        0x2dt
        0x7et
        0x2at
        0x37t
        0x33t
        0x3bt
        0x3at
        0x7et
        0x31t
        0x2bt
        0x2at
        0xet
        0x29t
        0x2bt
        0x2dt
        0x2at
        0x27t
        0x27t
        0x23t
        0x68t
        0x9t
        0x2ct
        0x3bt
        0x68t
        0x1bt
        0xct
        0x3t
        0x68t
        0x3at
        0x2dt
        0x3ct
        0x3dt
        0x3at
        0x26t
        0x2dt
        0x2ct
        0x68t
        0x26t
        0x27t
        0x68t
        0x29t
        0x2ct
        0x68t
        0x38t
        0x24t
        0x29t
        0x2bt
        0x2dt
        0x25t
        0x2dt
        0x26t
        0x3ct
        0x3bt
        0x41t
        0x66t
        0x64t
        0x62t
        0x65t
        0x68t
        0x68t
        0x6ct
        0x27t
        0x46t
        0x72t
        0x63t
        0x6et
        0x62t
        0x69t
        0x64t
        0x62t
        0x27t
        0x49t
        0x62t
        0x73t
        0x70t
        0x68t
        0x75t
        0x6ct
        0x27t
        0x54t
        0x43t
        0x4ct
        0x27t
        0x63t
        0x68t
        0x62t
        0x74t
        0x69t
        0x20t
        0x73t
        0x27t
        0x6ft
        0x66t
        0x71t
        0x62t
        0x27t
        0x66t
        0x6bt
        0x6bt
        0x27t
        0x75t
        0x62t
        0x76t
        0x72t
        0x6et
        0x75t
        0x62t
        0x63t
        0x27t
        0x64t
        0x6bt
        0x66t
        0x74t
        0x74t
        0x62t
        0x74t
        0x29t
        0x27t
        0x57t
        0x6bt
        0x62t
        0x66t
        0x74t
        0x62t
        0x2bt
        0x27t
        0x64t
        0x6ft
        0x62t
        0x64t
        0x6ct
        0x27t
        0x4bt
        0x68t
        0x60t
        0x44t
        0x66t
        0x73t
        0x27t
        0x68t
        0x72t
        0x73t
        0x77t
        0x72t
        0x73t
        0x27t
        0x61t
        0x68t
        0x75t
        0x27t
        0x73t
        0x66t
        0x60t
        0x27t
        0x22t
        0x74t
        0x29t
        0x27t
        0x54t
        0x62t
        0x62t
        0x27t
        0x6at
        0x68t
        0x75t
        0x62t
        0x3dt
        0x27t
        0x6ft
        0x73t
        0x73t
        0x77t
        0x74t
        0x3dt
        0x28t
        0x28t
        0x63t
        0x62t
        0x71t
        0x62t
        0x6bt
        0x68t
        0x77t
        0x62t
        0x75t
        0x74t
        0x29t
        0x61t
        0x66t
        0x64t
        0x62t
        0x65t
        0x68t
        0x68t
        0x6ct
        0x29t
        0x64t
        0x68t
        0x6at
        0x28t
        0x63t
        0x68t
        0x64t
        0x74t
        0x28t
        0x66t
        0x72t
        0x63t
        0x6et
        0x62t
        0x69t
        0x64t
        0x62t
        0x2at
        0x69t
        0x62t
        0x73t
        0x70t
        0x68t
        0x75t
        0x6ct
        0x28t
        0x66t
        0x69t
        0x63t
        0x75t
        0x68t
        0x6et
        0x63t
        0x28t
        0x27t
        0x22t
        0x5t
        0x7t
        0x1t
        0x6t
        0xbt
        0xbt
        0xft
        0x44t
        0x25t
        0x11t
        0x0t
        0xdt
        0x1t
        0xat
        0x7t
        0x1t
        0x44t
        0x2at
        0x1t
        0x10t
        0x13t
        0xbt
        0x16t
        0xft
        0x44t
        0x37t
        0x20t
        0x2ft
        0x44t
        0x0t
        0xbt
        0x1t
        0x17t
        0xat
        0x43t
        0x10t
        0x44t
        0x17t
        0x11t
        0x14t
        0x14t
        0xbt
        0x16t
        0x10t
        0x44t
        0x25t
        0xat
        0x0t
        0x16t
        0xbt
        0xdt
        0x0t
        0x44t
        0x2bt
        0x37t
        0x44t
        0x12t
        0x1t
        0x16t
        0x17t
        0xdt
        0xbt
        0xat
        0x17t
        0x44t
        0x6t
        0x1t
        0x8t
        0xbt
        0x13t
        0x44t
        0x50t
        0x4at
        0x56t
        0xbt
        0x2ct
        0x24t
        0x21t
        0x28t
        0x29t
        0x6dt
        0x39t
        0x22t
        0x6dt
        0x2et
        0x2ct
        0x2et
        0x25t
        0x28t
        0x6dt
        0x24t
        0x20t
        0x2ct
        0x2at
        0x28t
        0x67t
        0x40t
        0x48t
        0x4dt
        0x44t
        0x45t
        0x1t
        0x55t
        0x4et
        0x1t
        0x4dt
        0x4et
        0x40t
        0x45t
        0x1t
        0x6ct
        0x44t
        0x45t
        0x48t
        0x40t
        0x1t
        0x47t
        0x4et
        0x53t
        0x1t
        0x6ft
        0x40t
        0x55t
        0x48t
        0x57t
        0x44t
        0x1t
        0x60t
        0x45t
        0x5at
        0x7dt
        0x75t
        0x70t
        0x79t
        0x78t
        0x3ct
        0x68t
        0x73t
        0x3ct
        0x6ct
        0x7dt
        0x6et
        0x6ft
        0x79t
        0x3ct
        0x5at
        0x7dt
        0x7ft
        0x79t
        0x7et
        0x73t
        0x73t
        0x77t
        0x3ct
        0x5dt
        0x78t
        0x6ft
        0x3ct
        0x4ft
        0x58t
        0x57t
        0x3ct
        0x78t
        0x79t
        0x70t
        0x75t
        0x6at
        0x79t
        0x6et
        0x65t
        0x3ct
        0x6et
        0x79t
        0x6ft
        0x6ct
        0x73t
        0x72t
        0x6ft
        0x79t
        0x18t
        0x37t
        0x32t
        0x3bt
        0x7et
        0x12t
        0x31t
        0x3ft
        0x3at
        0x7et
        0x38t
        0x2ct
        0x31t
        0x33t
        0x7et
        0x9t
        0x3bt
        0x3ct
        0x8t
        0x37t
        0x3bt
        0x29t
        0x7et
        0x29t
        0x3ft
        0x2dt
        0x7et
        0x1at
        0x3bt
        0x30t
        0x37t
        0x3bt
        0x3at
        0x7et
        0x38t
        0x31t
        0x2ct
        0x7et
        0x1dt
        0x3ft
        0x3dt
        0x36t
        0x3bt
        0x76t
        0x72t
        0x7et
        0x78t
        0x7at
        0x60t
        0x7ct
        0x7et
        0x7ct
        0x77t
        0x7at
        0x60t
        0x7at
        0x6dt
        0x6dt
        0x70t
        0x6dt
        0x1at
        0x1dt
        0x10t
        0x1ct
        0x1t
        0x1t
        0x16t
        0x10t
        0x7t
        0xct
        0x12t
        0x3t
        0x1at
        0xct
        0x10t
        0x12t
        0x1ft
        0x1ft
        0xct
        0x16t
        0x1t
        0x1t
        0x1ct
        0x1t
        0x70t
        0x77t
        0x7at
        0x76t
        0x6bt
        0x6bt
        0x7ct
        0x7at
        0x6dt
        0x66t
        0x6at
        0x6dt
        0x78t
        0x6dt
        0x7ct
        0x66t
        0x7ct
        0x6bt
        0x6bt
        0x76t
        0x6bt
        0x30t
        0x37t
        0x2dt
        0x3ct
        0x2bt
        0x37t
        0x38t
        0x35t
        0x26t
        0x3ct
        0x2bt
        0x2bt
        0x36t
        0x2bt
        0x5t
        0x2t
        0x18t
        0x9t
        0x1et
        0x1ft
        0x18t
        0x5t
        0x18t
        0x5t
        0xdt
        0x0t
        0x13t
        0xdt
        0x8t
        0x13t
        0x18t
        0x5t
        0x1t
        0x9t
        0x3t
        0x19t
        0x18t
        0x58t
        0x5ft
        0x45t
        0x54t
        0x43t
        0x42t
        0x45t
        0x58t
        0x45t
        0x58t
        0x50t
        0x5dt
        0x4et
        0x52t
        0x5et
        0x5ft
        0x45t
        0x43t
        0x5et
        0x5dt
        0x5dt
        0x54t
        0x43t
        0x4et
        0x58t
        0x42t
        0x4et
        0x5ft
        0x44t
        0x5dt
        0x5dt
        0x32t
        0x15t
        0x5bt
        0x14t
        0x9t
        0x1ft
        0x1et
        0x9t
        0x5bt
        0xft
        0x14t
        0x5bt
        0xet
        0x8t
        0x1et
        0x5bt
        0x18t
        0x1at
        0x18t
        0x13t
        0x1et
        0x5bt
        0x12t
        0x15t
        0x5bt
        0x3dt
        0x1at
        0x18t
        0x1et
        0x19t
        0x14t
        0x14t
        0x10t
        0x5bt
        0x3at
        0xet
        0x1ft
        0x12t
        0x1et
        0x15t
        0x18t
        0x1et
        0x5bt
        0x35t
        0x1et
        0xft
        0xct
        0x14t
        0x9t
        0x10t
        0x5bt
        0x28t
        0x3ft
        0x30t
        0x5bt
        0x2t
        0x14t
        0xet
        0x5bt
        0x8t
        0x13t
        0x14t
        0xet
        0x17t
        0x1ft
        0x5bt
        0xct
        0x13t
        0x12t
        0xft
        0x1et
        0x17t
        0x12t
        0x8t
        0xft
        0x5bt
        0x4at
        0x49t
        0x4ct
        0x55t
        0x4bt
        0x55t
        0x4bt
        0x55t
        0x4at
        0x5bt
        0x12t
        0x15t
        0x5bt
        0x2t
        0x14t
        0xet
        0x9t
        0x5bt
        0x35t
        0x1et
        0xft
        0xct
        0x14t
        0x9t
        0x10t
        0x5bt
        0x28t
        0x1et
        0x18t
        0xet
        0x9t
        0x12t
        0xft
        0x2t
        0x5bt
        0x38t
        0x14t
        0x15t
        0x1dt
        0x12t
        0x1ct
        0xet
        0x9t
        0x1at
        0xft
        0x12t
        0x14t
        0x15t
        0x41t
        0x71t
        0x47t
        0x1ft
        0x14t
        0x16t
        0x1at
        0x12t
        0x15t
        0x56t
        0x18t
        0x14t
        0x15t
        0x1dt
        0x12t
        0x1ct
        0x5bt
        0x18t
        0x17t
        0x1et
        0x1at
        0x9t
        0xft
        0x1et
        0x3t
        0xft
        0x2ft
        0x9t
        0x1at
        0x1dt
        0x1dt
        0x12t
        0x18t
        0x2bt
        0x1et
        0x9t
        0x16t
        0x12t
        0xft
        0xft
        0x1et
        0x1ft
        0x46t
        0x59t
        0xft
        0x9t
        0xet
        0x1et
        0x59t
        0x45t
        0x71t
        0x5bt
        0x5bt
        0x5bt
        0x5bt
        0x47t
        0x1ft
        0x14t
        0x16t
        0x1at
        0x12t
        0x15t
        0x5bt
        0x12t
        0x15t
        0x18t
        0x17t
        0xet
        0x1ft
        0x1et
        0x28t
        0xet
        0x19t
        0x1ft
        0x14t
        0x16t
        0x1at
        0x12t
        0x15t
        0x8t
        0x46t
        0x59t
        0xft
        0x9t
        0xet
        0x1et
        0x59t
        0x45t
        0x4at
        0x49t
        0x4ct
        0x55t
        0x4bt
        0x55t
        0x4bt
        0x55t
        0x4at
        0x47t
        0x54t
        0x1ft
        0x14t
        0x16t
        0x1at
        0x12t
        0x15t
        0x45t
        0x71t
        0x47t
        0x54t
        0x1ft
        0x14t
        0x16t
        0x1at
        0x12t
        0x15t
        0x56t
        0x18t
        0x14t
        0x15t
        0x1dt
        0x12t
        0x1ct
        0x45t
        0x71t
        0x28t
        0x1et
        0x1et
        0x5bt
        0x16t
        0x14t
        0x9t
        0x1et
        0x41t
        0x5bt
        0x13t
        0xft
        0xft
        0xbt
        0x8t
        0x41t
        0x54t
        0x54t
        0x1ft
        0x1et
        0xdt
        0x1et
        0x17t
        0x14t
        0xbt
        0x1et
        0x9t
        0x8t
        0x55t
        0x1dt
        0x1at
        0x18t
        0x1et
        0x19t
        0x14t
        0x14t
        0x10t
        0x55t
        0x18t
        0x14t
        0x16t
        0x54t
        0x1ft
        0x14t
        0x18t
        0x8t
        0x54t
        0x1at
        0xet
        0x1ft
        0x12t
        0x1et
        0x15t
        0x18t
        0x1et
        0x56t
        0x15t
        0x1et
        0xft
        0xct
        0x14t
        0x9t
        0x10t
        0x54t
        0x1at
        0x15t
        0x1ft
        0x9t
        0x14t
        0x12t
        0x1ft
        0x56t
        0x15t
        0x1et
        0xft
        0xct
        0x14t
        0x9t
        0x10t
        0x56t
        0x8t
        0x1et
        0x18t
        0xet
        0x9t
        0x12t
        0xft
        0x2t
        0x56t
        0x18t
        0x14t
        0x15t
        0x1dt
        0x12t
        0x1ct
        0x3dt
        0x1at
        0x0t
        0x11t
        0x6t
        0x1at
        0x15t
        0x18t
        0x54t
        0x31t
        0x6t
        0x6t
        0x1bt
        0x6t
        0x40t
        0x67t
        0x7dt
        0x6ct
        0x7bt
        0x7at
        0x7dt
        0x60t
        0x7dt
        0x60t
        0x68t
        0x65t
        0x29t
        0x4at
        0x66t
        0x67t
        0x7dt
        0x7bt
        0x66t
        0x65t
        0x65t
        0x6ct
        0x7bt
        0x29t
        0x60t
        0x7at
        0x29t
        0x67t
        0x7ct
        0x65t
        0x65t
        0x29t
        0x7at
        0x61t
        0x66t
        0x7et
        0x29t
        0x48t
        0x6dt
        0x65t
        0x42t
        0x5at
        0x4dt
        0x40t
        0x45t
        0x48t
        0xct
        0x4et
        0x45t
        0x48t
        0xct
        0x5ct
        0x4dt
        0x55t
        0x40t
        0x43t
        0x4dt
        0x48t
        0x76t
        0x75t
        0x7bt
        0x7et
        0x65t
        0x7bt
        0x7et
        0x65t
        0x79t
        0x7bt
        0x76t
        0x76t
        0x7ft
        0x7et
        0x65t
        0x77t
        0x75t
        0x68t
        0x7ft
        0x65t
        0x6et
        0x72t
        0x7bt
        0x74t
        0x65t
        0x75t
        0x74t
        0x79t
        0x7ft
        0x61t
        0x62t
        0x6ct
        0x69t
        0x72t
        0x6et
        0x6ct
        0x61t
        0x61t
        0x68t
        0x69t
        0x72t
        0x7at
        0x65t
        0x64t
        0x61t
        0x68t
        0x72t
        0x7et
        0x65t
        0x62t
        0x7at
        0x64t
        0x63t
        0x6at
        0x72t
        0x6ct
        0x69t
        0x43t
        0x40t
        0x4et
        0x4bt
        0x50t
        0x5bt
        0x40t
        0x40t
        0x50t
        0x49t
        0x5dt
        0x4at
        0x5et
        0x5at
        0x4at
        0x41t
        0x5bt
        0x43t
        0x56t
        0x26t
        0x5t
        0xbt
        0xet
        0x2bt
        0xet
        0x4at
        0x9t
        0xbt
        0x4t
        0x4t
        0x5t
        0x1et
        0x4at
        0x8t
        0xft
        0x4at
        0x9t
        0xbt
        0x6t
        0x6t
        0xft
        0xet
        0x4at
        0x7t
        0x5t
        0x18t
        0xft
        0x4at
        0x1et
        0x2t
        0xbt
        0x4t
        0x4at
        0x5t
        0x4t
        0x9t
        0xft
        0x7ft
        0x77t
        0x76t
        0x7bt
        0x73t
        0x66t
        0x7bt
        0x7dt
        0x7ct
        0x6dt
        0x77t
        0x60t
        0x60t
        0x7dt
        0x60t
        0x25t
        0x21t
        0x3bt
        0x3bt
        0x21t
        0x26t
        0x2ft
        0x37t
        0x2ct
        0x2dt
        0x38t
        0x2dt
        0x26t
        0x2ct
        0x2dt
        0x26t
        0x2bt
        0x21t
        0x2dt
        0x3bt
        0x37t
        0x2dt
        0x3at
        0x3at
        0x27t
        0x3at
        0x53t
        0x7bt
        0x7at
        0x77t
        0x7ft
        0x48t
        0x77t
        0x7bt
        0x69t
        0x3et
        0x78t
        0x71t
        0x6ct
        0x3et
        0x77t
        0x7dt
        0x71t
        0x70t
        0x3et
        0x77t
        0x6dt
        0x3et
        0x73t
        0x77t
        0x6dt
        0x6dt
        0x77t
        0x70t
        0x79t
        0x3et
        0x77t
        0x70t
        0x3et
        0x50t
        0x7ft
        0x6at
        0x77t
        0x68t
        0x7bt
        0x5ct
        0x7ft
        0x70t
        0x70t
        0x7bt
        0x6ct
        0x5ft
        0x7at
        0x44t
        0x6ct
        0x6dt
        0x60t
        0x68t
        0x5ft
        0x60t
        0x6ct
        0x7et
        0x29t
        0x60t
        0x7at
        0x29t
        0x64t
        0x60t
        0x7at
        0x7at
        0x60t
        0x67t
        0x6et
        0x29t
        0x60t
        0x67t
        0x29t
        0x47t
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x48t
        0x6dt
        0x8t
        0x20t
        0x21t
        0x2ct
        0x24t
        0x31t
        0x2ct
        0x2at
        0x2bt
        0x65t
        0x0t
        0x37t
        0x37t
        0x2at
        0x37t
        0x48t
        0x47t
        0x52t
        0x4ft
        0x50t
        0x43t
        0x59t
        0x47t
        0x42t
        0x59t
        0x4ft
        0x55t
        0x59t
        0x48t
        0x49t
        0x52t
        0x59t
        0x4at
        0x49t
        0x47t
        0x42t
        0x43t
        0x42t
        0x7et
        0x75t
        0x64t
        0x67t
        0x7ft
        0x62t
        0x7bt
        0x6ft
        0x75t
        0x62t
        0x62t
        0x7ft
        0x62t
        0x61t
        0x60t
        0x70t
        0x6et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x70t
        0x60t
        0x61t
        0x70t
        0x63t
        0x60t
        0x6et
        0x6bt
        0x29t
        0x28t
        0x38t
        0x26t
        0x23t
        0x26t
        0x37t
        0x33t
        0x22t
        0x35t
        0x38t
        0x28t
        0x29t
        0x38t
        0x34t
        0x33t
        0x26t
        0x35t
        0x33t
        0x71t
        0x70t
        0x60t
        0x7et
        0x7bt
        0x60t
        0x6ft
        0x73t
        0x7et
        0x7ct
        0x7at
        0x72t
        0x7at
        0x71t
        0x6bt
        0x34t
        0x35t
        0x25t
        0x3ct
        0x33t
        0x36t
        0x36t
        0x73t
        0x72t
        0x62t
        0x70t
        0x78t
        0x79t
        0x74t
        0x7ct
        0x6bt
        0x74t
        0x78t
        0x6at
        0x62t
        0x74t
        0x73t
        0x62t
        0x73t
        0x7ct
        0x69t
        0x74t
        0x6bt
        0x78t
        0x7ct
        0x79t
        0x30t
        0x31t
        0x21t
        0x33t
        0x3bt
        0x3at
        0x37t
        0x3ft
        0x28t
        0x37t
        0x3bt
        0x29t
        0x21t
        0x37t
        0x30t
        0x21t
        0x30t
        0x3ft
        0x2at
        0x37t
        0x28t
        0x3bt
        0x3ct
        0x3ft
        0x30t
        0x30t
        0x3bt
        0x2ct
        0x3ft
        0x3at
        0x27t
        0xct
        0x1dt
        0x1et
        0x6t
        0x1bt
        0x2t
        0x49t
        0x2ct
        0x1bt
        0x1bt
        0x6t
        0x1bt
        0x42t
        0x63t
        0x2ct
        0x4at
        0x65t
        0x60t
        0x60t
        0x7t
        0x16t
        0x5t
        0x4t
        0x12t
        0x5t
        0x8t
        0x11t
        0x16t
        0x1et
        0x1bt
        0x2t
        0x5t
        0x12t
        0x6dt
        0x4ft
        0x58t
        0x1dt
        0x7et
        0x5ct
        0x5et
        0x55t
        0x54t
        0x53t
        0x5at
        0x1dt
        0x5bt
        0x5ct
        0x54t
        0x51t
        0x48t
        0x4ft
        0x58t
        0x4at
        0x5dt
        0x55t
        0x57t
        0x4ct
        0x5dt
        0x47t
        0x59t
        0x5ct
        0x4bt
        0x47t
        0x4bt
        0x5dt
        0x4at
        0x4et
        0x51t
        0x5bt
        0x5dt
        0x47t
        0x5dt
        0x4at
        0x4at
        0x57t
        0x4at
        0x69t
        0x6dt
        0x64t
        0x7at
        0x7ft
        0x64t
        0x6ft
        0x72t
        0x76t
        0x7et
        0x74t
        0x6et
        0x6ft
        0x7ct
        0x6at
        0x7dt
        0x79t
        0x6at
        0x7dt
        0x70t
        0x6at
        0x7dt
        0x7dt
        0x60t
        0x7dt
        0x25t
        0x22t
        0x37t
        0x24t
        0x22t
        0x29t
        0x34t
        0x33t
        0x30t
        0x39t
        0x24t
        0x33t
        0x29t
        0x3ft
        0x38t
        0x3ft
        0x22t
        0x6at
        0x5ct
        0x4bt
        0x4ft
        0x5ct
        0x4bt
        0x19t
        0x7ct
        0x4bt
        0x4bt
        0x56t
        0x4bt
        0x67t
        0x5at
        0x5et
        0x56t
        0x5ct
        0x46t
        0x47t
        0x13t
        0x5ft
        0x5ct
        0x52t
        0x57t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x7at
        0x5dt
        0x47t
        0x56t
        0x41t
        0x40t
        0x47t
        0x5at
        0x47t
        0x5at
        0x52t
        0x5ft
        0x13t
        0x72t
        0x57t
        0x6bt
        0x56t
        0x52t
        0x5at
        0x50t
        0x4at
        0x4bt
        0x1ft
        0x53t
        0x50t
        0x5et
        0x5bt
        0x56t
        0x51t
        0x58t
        0x1ft
        0x6dt
        0x5at
        0x48t
        0x5et
        0x4dt
        0x5bt
        0x5at
        0x5bt
        0x1ft
        0x69t
        0x56t
        0x5bt
        0x5at
        0x50t
        0x1ft
        0x7et
        0x5bt
        0x3et
        0x25t
        0x20t
        0x25t
        0x24t
        0x3ct
        0x25t
        0x34t
        0x2et
        0x39t
        0x39t
        0x24t
        0x39t
        0x3dt
        0x26t
        0x23t
        0x26t
        0x27t
        0x3ft
        0x26t
        0x37t
        0x3at
        0x2dt
        0x3bt
        0x38t
        0x27t
        0x26t
        0x3bt
        0x2dt
        0x4t
        0x1ft
        0x2t
        0x4t
        0x1t
        0x1t
        0x1et
        0x3t
        0x5t
        0x14t
        0x15t
        0xet
        0x10t
        0x15t
        0xet
        0x10t
        0x2t
        0x2t
        0x14t
        0x5t
        0xet
        0x1ft
        0x10t
        0x5t
        0x18t
        0x7t
        0x14t
        0x10t
        0x15t
        0xet
        0x35t
        0x30t
        0x35t
        0x34t
        0x2ct
        0x35t
        0x7bt
        0x1dt
        0x3at
        0x38t
        0x3et
        0x39t
        0x34t
        0x34t
        0x30t
        0x7bt
        0x1at
        0x3ft
        0x28t
        0x7bt
        0x8t
        0x1ft
        0x10t
        0x7bt
        0x3ft
        0x3et
        0x37t
        0x32t
        0x2dt
        0x3et
        0x29t
        0x22t
        0x7bt
        0x29t
        0x3et
        0x28t
        0x2bt
        0x34t
        0x35t
        0x28t
        0x3et
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x1dt
        0xft
        0x8t
        0x15t
        0x1ct
        0x3t
        0xft
        0x1dt
        0x15t
        0x9t
        0xbt
        0x9t
        0x2t
        0xft
        0x15t
        0xct
        0x3t
        0x6t
        0xft
        0x15t
        0x1dt
        0xbt
        0x19t
        0x15t
        0xet
        0xft
        0x4t
        0x3t
        0xft
        0xet
        0x26t
        0x34t
        0x33t
        0x2et
        0x27t
        0x38t
        0x34t
        0x26t
        0x2et
        0x37t
        0x30t
        0x38t
        0x3dt
        0x34t
        0x35t
        0x2et
        0x25t
        0x3et
        0x2et
        0x3dt
        0x3et
        0x30t
        0x35t
        0x3at
        0x8t
        0xft
        0x3bt
        0x4t
        0x8t
        0x1at
        0x4dt
        0xbt
        0xct
        0x4t
        0x1t
        0x8t
        0x9t
        0x4dt
        0x19t
        0x2t
        0x4dt
        0x1t
        0x2t
        0xct
        0x9t
        0x1ct
        0x2at
        0x30t
        0x65t
        0x26t
        0x24t
        0x2bt
        0x62t
        0x31t
        0x65t
        0x26t
        0x24t
        0x29t
        0x29t
        0x65t
        0x60t
        0x36t
        0x65t
        0x23t
        0x2at
        0x37t
        0x65t
        0x24t
        0x21t
        0x65t
        0x60t
        0x36t
        0x71t
        0x47t
        0x5dt
        0x8t
        0x4bt
        0x49t
        0x46t
        0xft
        0x5ct
        0x8t
        0x4bt
        0x49t
        0x44t
        0x44t
        0x8t
        0xdt
        0x5bt
        0x8t
        0x4et
        0x47t
        0x5at
        0x8t
        0x49t
        0x4ct
        0x8t
        0x41t
        0x46t
        0x8t
        0x5bt
        0x5ct
        0x49t
        0x5ct
        0x4dt
        0x8t
        0xdt
        0x5bt
        0x71t
        0x76t
        0x71t
        0x6ct
        0x59t
        0x7ct
        0x38t
        0x75t
        0x6dt
        0x6bt
        0x6ct
        0x38t
        0x7at
        0x7dt
        0x38t
        0x7bt
        0x79t
        0x74t
        0x74t
        0x7dt
        0x7ct
        0x38t
        0x7at
        0x7dt
        0x7et
        0x77t
        0x6at
        0x7dt
        0x38t
        0x6bt
        0x6ct
        0x79t
        0x6at
        0x6ct
        0x59t
        0x7ct
        0x49t
        0x52t
        0x57t
        0x52t
        0x53t
        0x4bt
        0x52t
        0x1ct
        0x59t
        0x4et
        0x4et
        0x53t
        0x4et
        0xft
        0x14t
        0x9t
        0xft
        0xat
        0xat
        0x15t
        0x8t
        0xet
        0x1ft
        0x1et
        0x5at
        0xet
        0x3t
        0xat
        0x1ft
        0x5at
        0x15t
        0x1ct
        0x5at
        0x1bt
        0x1et
        0x5at
        0x1bt
        0x9t
        0x9t
        0x1ft
        0xet
        0x9t
    .end array-data
.end method

.method public static synthetic A02()[Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 3

    .line 69713
    const/16 v0, 0x29

    new-array v2, v0, [Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->DISABLED_APP:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->START_BEFORE_INIT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->REMOTE_ADS_SERVICE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x9

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xa

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xb

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xc

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->BROKEN_MEDIA_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xd

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xe

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0xf

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x10

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x11

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x12

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x13

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x14

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x15

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x16

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x17

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_START:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x18

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x19

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_FAILED_TO_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1a

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->WEB_VIEW_CACHE_FILE_WAS_DENIED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1b

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_MEDIAVIEW_IN_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1c

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_MEDIAVIEW_IN_NATIVEBANNERAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1d

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNSUPPORTED_AD_ASSET_NATIVEAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1e

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x1f

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x20

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->CLEAR_TEXT_SUPPORT_NOT_ALLOWED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x21

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_STATE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x22

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->MISSING_DEPENDENCIES_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x23

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x24

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x25

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_API_CALL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x26

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->IMAGE_CACHE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x27

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_AD_CALLED_MORE_THAN_ONCE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/16 v0, 0x28

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static adErrorTypeFromCode(I)Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 1

    .line 69714
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    return-object v0
.end method

.method public static adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 5

    .line 69715
    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdErrorType;->values()[Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 69716
    .local v3, "type":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 69717
    return-object v1

    .line 69718
    .end local v3    # "type":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69719
    :cond_1
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 69723
    const-class v0, Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/protocol/AdErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/protocol/AdErrorType;
    .locals 1

    .line 69724
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A04:[Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/protocol/AdErrorType;

    return-object v0
.end method


# virtual methods
.method public getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    .line 69720
    iget-object v0, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 69721
    iget v0, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A00:I

    return v0
.end method

.method public isPublicError()Z
    .locals 1

    .line 69722
    iget-boolean v0, p0, Lcom/facebook/ads/internal/protocol/AdErrorType;->A02:Z

    return v0
.end method
