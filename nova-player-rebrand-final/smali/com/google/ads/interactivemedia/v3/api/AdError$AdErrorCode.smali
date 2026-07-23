.class public final enum Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/api/AdError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdErrorCode"
.end annotation


# static fields
.field public static final enum ADS_PLAYER_NOT_PROVIDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum ADS_REQUEST_NETWORK_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNEXPECTED_ADS_LOADED_EVENT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_EMPTY_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_MEDIA_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_NO_ADS_AFTER_WRAPPER:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_TRAFFICKING_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum WEB_VIEW_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field private static final synthetic zzb:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;


# instance fields
.field private final zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/4 v1, -0x1

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v2, 0x64

    .line 2
    const-string v4, "VAST_MALFORMED_RESPONSE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v4, 0x3f2

    .line 3
    const-string v6, "UNKNOWN_AD_RESPONSE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v6, 0xc8

    .line 4
    const-string v8, "VAST_TRAFFICKING_ERROR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TRAFFICKING_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v8, 0x12d

    .line 5
    const-string v10, "VAST_LOAD_TIMEOUT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v10, 0x12e

    .line 6
    const-string v12, "VAST_TOO_MANY_REDIRECTS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v12, 0x12f

    .line 7
    const-string v14, "VAST_NO_ADS_AFTER_WRAPPER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NO_ADS_AFTER_WRAPPER:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x190

    move/from16 v16, v3

    .line 8
    const-string v3, "VIDEO_PLAY_ERROR"

    move/from16 v17, v5

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x192

    move/from16 v18, v5

    .line 9
    const-string v5, "VAST_MEDIA_LOAD_TIMEOUT"

    move/from16 v19, v7

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MEDIA_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x193

    move/from16 v20, v7

    .line 10
    const-string v7, "VAST_LINEAR_ASSET_MISMATCH"

    move/from16 v21, v9

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x1f4

    move/from16 v22, v9

    .line 11
    const-string v9, "OVERLAY_AD_PLAYING_FAILED"

    move/from16 v23, v11

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x1f6

    move/from16 v24, v11

    .line 12
    const-string v11, "OVERLAY_AD_LOADING_FAILED"

    move/from16 v25, v13

    const/16 v13, 0xb

    invoke-direct {v9, v11, v13, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x1f7

    move/from16 v26, v13

    .line 13
    const-string v13, "VAST_NONLINEAR_ASSET_MISMATCH"

    move/from16 v27, v15

    const/16 v15, 0xc

    invoke-direct {v11, v13, v15, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v14, 0x25b

    move/from16 v28, v15

    .line 14
    const-string v15, "COMPANION_AD_LOADING_FAILED"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v13, v15, v0, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v14, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x384

    move/from16 v30, v0

    .line 15
    const-string v0, "UNKNOWN_ERROR"

    move-object/from16 v31, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v1, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x3f1

    move/from16 v32, v1

    .line 16
    const-string v1, "VAST_EMPTY_RESPONSE"

    move-object/from16 v33, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_EMPTY_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x3ed

    move/from16 v34, v2

    .line 17
    const-string v2, "FAILED_TO_REQUEST_ADS"

    move-object/from16 v35, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x3ef

    move/from16 v36, v0

    .line 18
    const-string v0, "VAST_ASSET_NOT_FOUND"

    move-object/from16 v37, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x3f4

    move/from16 v38, v1

    .line 19
    const-string v1, "ADS_REQUEST_NETWORK_ERROR"

    move-object/from16 v39, v2

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ADS_REQUEST_NETWORK_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x44d

    move/from16 v40, v2

    .line 20
    const-string v2, "INVALID_ARGUMENTS"

    move-object/from16 v41, v0

    const/16 v0, 0x13

    invoke-direct {v1, v2, v0, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x4b5

    move/from16 v42, v0

    .line 21
    const-string v0, "PLAYLIST_NO_CONTENT_TRACKING"

    move-object/from16 v43, v1

    const/16 v1, 0x14

    invoke-direct {v2, v0, v1, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x4b6

    move/from16 v44, v1

    .line 22
    const-string v1, "UNEXPECTED_ADS_LOADED_EVENT"

    move-object/from16 v45, v2

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNEXPECTED_ADS_LOADED_EVENT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v15, 0x16

    move/from16 v46, v2

    const/16 v2, 0x4b7

    move-object/from16 v47, v0

    .line 23
    const-string v0, "ADS_PLAYER_NOT_PROVIDED"

    invoke-direct {v1, v0, v15, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ADS_PLAYER_NOT_PROVIDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v2, 0x17

    const/16 v15, 0x4b8

    move-object/from16 v48, v1

    .line 24
    const-string v1, "WEB_VIEW_ERROR"

    invoke-direct {v0, v1, v2, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->WEB_VIEW_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v29, v1, v16

    aput-object v31, v1, v17

    aput-object v33, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v23

    aput-object v8, v1, v25

    aput-object v10, v1, v27

    aput-object v12, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v30

    aput-object v14, v1, v32

    aput-object v35, v1, v34

    aput-object v37, v1, v36

    aput-object v39, v1, v38

    aput-object v41, v1, v40

    aput-object v43, v1, v42

    aput-object v45, v1, v44

    aput-object v47, v1, v46

    const/16 v2, 0x16

    aput-object v48, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zzb:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zza:I

    return-void
.end method

.method public static getErrorCodeByNumber(I)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorNumber()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x4b4

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zzb:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object v0
.end method


# virtual methods
.method public getErrorNumber()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zza:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x1d

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdErrorCode [name: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
