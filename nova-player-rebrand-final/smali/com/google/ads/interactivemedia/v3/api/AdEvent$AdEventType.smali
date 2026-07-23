.class public final enum Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/api/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdEventType"
.end annotation


# static fields
.field public static final enum AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum HIDE_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum PAUSE_AD_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum SHOW_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field private static final synthetic zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v1, "ALL_ADS_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 2
    const-string v3, "AD_BREAK_FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 3
    const-string v5, "CLICKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 4
    const-string v7, "COMPLETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v7, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 5
    const-string v9, "CUEPOINTS_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v9, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 6
    const-string v11, "CONTENT_PAUSE_REQUESTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 7
    const-string v13, "CONTENT_RESUME_REQUESTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 8
    const-string v15, "FIRST_QUARTILE"

    move/from16 v16, v2

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v15, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v17, v2

    .line 9
    const-string v2, "LOG"

    move/from16 v18, v4

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v19, v4

    .line 10
    const-string v4, "AD_BREAK_READY"

    move/from16 v20, v6

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v21, v6

    .line 11
    const-string v6, "MIDPOINT"

    move/from16 v22, v8

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v23, v8

    .line 12
    const-string v8, "PAUSE_AD_READY"

    move/from16 v24, v10

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSE_AD_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v25, v10

    .line 13
    const-string v10, "PAUSED"

    move/from16 v26, v12

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v27, v12

    .line 14
    const-string v12, "RESUMED"

    move/from16 v28, v14

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v29, v14

    .line 15
    const-string v14, "SKIPPABLE_STATE_CHANGED"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v14, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v31, v0

    .line 16
    const-string v0, "SKIPPED"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v33, v1

    .line 17
    const-string v1, "STARTED"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v35, v2

    .line 18
    const-string v2, "TAPPED"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v37, v0

    .line 19
    const-string v0, "ICON_TAPPED"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v39, v1

    .line 20
    const-string v1, "ICON_FALLBACK_IMAGE_CLOSED"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v41, v2

    .line 21
    const-string v2, "THIRD_QUARTILE"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v43, v0

    .line 22
    const-string v0, "LOADED"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move/from16 v45, v1

    const-string v1, "AD_PROGRESS"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "AD_BUFFERING"

    move-object/from16 v47, v0

    const/16 v0, 0x17

    .line 24
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "AD_BREAK_STARTED"

    move-object/from16 v48, v1

    const/16 v1, 0x18

    .line 25
    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "AD_BREAK_ENDED"

    move-object/from16 v49, v0

    const/16 v0, 0x19

    .line 26
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "AD_PERIOD_STARTED"

    move-object/from16 v50, v1

    const/16 v1, 0x1a

    .line 27
    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "AD_PERIOD_ENDED"

    move-object/from16 v51, v0

    const/16 v0, 0x1b

    .line 28
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "SHOW_AD_UI"

    move-object/from16 v52, v1

    const/16 v1, 0x1c

    .line 29
    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SHOW_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const-string v2, "HIDE_AD_UI"

    move-object/from16 v53, v0

    const/16 v0, 0x1d

    .line 30
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->HIDE_AD_UI:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    aput-object v30, v0, v16

    aput-object v32, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v7, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v13, v0, v17

    aput-object v15, v0, v19

    aput-object v34, v0, v21

    aput-object v4, v0, v23

    aput-object v6, v0, v25

    aput-object v8, v0, v27

    aput-object v10, v0, v29

    aput-object v12, v0, v31

    aput-object v14, v0, v33

    aput-object v36, v0, v35

    aput-object v38, v0, v37

    aput-object v40, v0, v39

    aput-object v42, v0, v41

    aput-object v44, v0, v43

    aput-object v46, v0, v45

    const/16 v2, 0x16

    aput-object v47, v0, v2

    const/16 v2, 0x17

    aput-object v48, v0, v2

    const/16 v2, 0x18

    aput-object v49, v0, v2

    const/16 v2, 0x19

    aput-object v50, v0, v2

    const/16 v2, 0x1a

    aput-object v51, v0, v2

    const/16 v2, 0x1b

    aput-object v52, v0, v2

    const/16 v2, 0x1c

    aput-object v53, v0, v2

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-object v0
.end method
