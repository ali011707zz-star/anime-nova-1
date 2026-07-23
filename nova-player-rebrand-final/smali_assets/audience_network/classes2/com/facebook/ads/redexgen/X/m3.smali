.class public final Lcom/facebook/ads/redexgen/X/m3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H9;
.implements Lcom/facebook/ads/redexgen/X/HY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/JE;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$FileType;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0Q:[B

.field public static A0R:[Ljava/lang/String;

.field public static final A0S:Lcom/facebook/ads/redexgen/X/HD;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D54927862 get video/audio duration for progressive"
    .end annotation
.end field

.field public A0B:J

.field public A0C:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D54927862 get video/audio duration for progressive"
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/4v;

.field public A0E:Lcom/facebook/ads/redexgen/X/HA;

.field public A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public A0G:[Lcom/facebook/ads/redexgen/X/JE;

.field public A0H:[[J

.field public final A0I:I

.field public final A0J:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0K:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0L:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0M:Lcom/facebook/ads/redexgen/X/4v;

.field public final A0N:Lcom/facebook/ads/redexgen/X/JL;

.field public final A0O:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/mE;",
            ">;"
        }
    .end annotation
.end field

.field public final A0P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3214
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uzhMW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LbToze1ZyMStOzMPMggUyU89k761Fydj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "roznHbdGo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zeOiwqyw9G80TO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hwgMtT9WWej"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AZ5CtgA3jsgDmrh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "c4g75mNjYzBkznfgxB8HcDFPfSogi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Prtl1ARtkjOsoD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/m3;->A0C()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/m4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/m4;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/m3;->A0S:Lcom/facebook/ads/redexgen/X/HD;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95429
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/m3;-><init>(I)V

    .line 95430
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 95431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95432
    iput p1, p0, Lcom/facebook/ads/redexgen/X/m3;->A0I:I

    .line 95433
    and-int/lit8 v0, p1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    .line 95434
    new-instance v0, Lcom/facebook/ads/redexgen/X/JL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0N:Lcom/facebook/ads/redexgen/X/JL;

    .line 95435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0P:Ljava/util/List;

    .line 95436
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    .line 95437
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    .line 95438
    sget-object v1, Lcom/facebook/ads/redexgen/X/HS;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0L:Lcom/facebook/ads/redexgen/X/4v;

    .line 95439
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0K:Lcom/facebook/ads/redexgen/X/4v;

    .line 95440
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    .line 95441
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    .line 95442
    sget-object v0, Lcom/facebook/ads/redexgen/X/HA;->A00:Lcom/facebook/ads/redexgen/X/HA;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    .line 95443
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/JE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    .line 95444
    return-void

    .line 95445
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 3

    .line 95446
    sparse-switch p0, :sswitch_data_0

    .line 95447
    const/4 p0, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "05jGjYjRxbz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 95448
    :sswitch_0
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "rbgKKZbH0NS3XFJda55b1nN6iCZjcLPR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 95449
    :sswitch_1
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x68656963 -> :sswitch_1
        0x71742020 -> :sswitch_0
    .end sparse-switch
.end method

.method private A01(J)I
    .locals 20

    .line 95450
    move-object/from16 v5, p0

    const-wide v18, 0x7fffffffffffffffL

    .line 95451
    .local v1, "preferredSkipAmount":J
    const/4 v4, 0x1

    .line 95452
    .local v3, "preferredRequiresReload":Z
    const/16 v17, -0x1

    .line 95453
    .local v4, "preferredTrackIndex":I
    const-wide v15, 0x7fffffffffffffffL

    .line 95454
    .local v5, "preferredAccumulatedBytes":J
    const-wide v13, 0x7fffffffffffffffL

    .line 95455
    .local v7, "minAccumulatedBytes":J
    const/4 v12, 0x1

    .line 95456
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v11, -0x1

    .line 95457
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v3, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "Fcko3uaud46cO6nUcug7HhLZFNYBY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    array-length v0, v6

    if-ge v3, v0, :cond_9

    .line 95458
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    aget-object v2, v0, v3

    .line 95459
    .local v12, "track":Lcom/facebook/ads/redexgen/X/JE;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    .line 95460
    .local v13, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-ne v1, v0, :cond_2

    .line 95461
    .end local v12    # "track":Lcom/facebook/ads/redexgen/X/JE;
    .end local v13    # "sampleIndex":I
    .end local v14
    .end local v15
    .end local v17
    .end local v19
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95462
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    aget-wide v9, v0, v1

    .line 95463
    .local v15, "sampleOffset":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m3;->A0H:[[J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    aget-object v0, v0, v3

    aget-wide v7, v0, v1

    .line 95464
    .local v17, "sampleAccumulatedBytes":J
    sub-long v9, v9, p1

    .line 95465
    .local v19, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v9, v1

    if-ltz v0, :cond_3

    const-wide/32 v1, 0x40000

    cmp-long v0, v9, v1

    if-ltz v0, :cond_8

    :cond_3
    const/4 v6, 0x1

    .line 95466
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-ne v6, v4, :cond_6

    cmp-long v0, v9, v18

    if-gez v0, :cond_6

    .line 95467
    :cond_5
    move v4, v6

    .line 95468
    move-wide/from16 v18, v9

    .line 95469
    move/from16 v17, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_7

    .line 95470
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "nNk7RawiIyahd9Y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "017pL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move-wide v15, v7

    .line 95471
    :cond_6
    :goto_3
    cmp-long v0, v7, v13

    if-gez v0, :cond_1

    .line 95472
    move-wide v13, v7

    .line 95473
    move v12, v6

    .line 95474
    move v11, v3

    goto :goto_1

    .line 95475
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "1bC0in6G1ApWSL3PegJBmoVzHl6EE3tw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    move-wide v15, v7

    goto :goto_3

    .line 95476
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 95477
    .end local v11    # "trackIndex":I
    :cond_9
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v13, v1

    if-eqz v0, :cond_a

    if-eqz v12, :cond_a

    const-wide/32 v0, 0xa00000

    add-long/2addr v0, v13

    cmp-long v3, v15, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_b

    if-gez v3, :cond_c

    .line 95478
    :cond_a
    :goto_4
    return v17

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "AbIM1W3wiFJMRqsWOI3P0CqvLybO2M00"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gez v3, :cond_c

    goto :goto_4

    .line 95479
    :cond_c
    move/from16 v17, v11

    goto :goto_4
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 1

    .line 95480
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95481
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 95482
    .local v0, "majorBrand":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m3;->A00(I)I

    move-result v0

    .line 95483
    .local p0, "fileType":I
    if-eqz v0, :cond_0

    .line 95484
    return v0

    .line 95485
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 95486
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-lez v0, :cond_2

    .line 95487
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m3;->A00(I)I

    move-result v0

    .line 95488
    if-eqz v0, :cond_1

    .line 95489
    return v0

    .line 95490
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95491
    move-object/from16 v6, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v8

    .line 95492
    .local v2, "inputPosition":J
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 95493
    invoke-direct {v6, v8, v9}, Lcom/facebook/ads/redexgen/X/m3;->A01(J)I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    .line 95494
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    if-ne v0, v1, :cond_0

    .line 95495
    return v1

    .line 95496
    :cond_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    aget-object v5, v1, v0

    .line 95497
    .local v4, "track":Lcom/facebook/ads/redexgen/X/JE;
    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/JE;->A01:Lcom/facebook/ads/redexgen/X/Hd;

    .line 95498
    .local v14, "trackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    iget v7, v5, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    .line 95499
    .local v15, "sampleIndex":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    aget-wide v3, v0, v7

    .line 95500
    .local v12, "position":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    aget v2, v0, v7

    .line 95501
    .local v6, "sampleSize":I
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/JE;->A02:Lcom/facebook/ads/redexgen/X/He;

    .line 95502
    .local v11, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    sub-long v0, v3, v8

    iget v8, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 95503
    .local v7, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    cmp-long v9, v0, v11

    if-ltz v9, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v9, v0, v11

    if-ltz v9, :cond_2

    .line 95504
    .end local v2    # "inputPosition":J
    .end local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .end local v12    # "position":J
    .restart local v5
    .restart local v18
    .restart local p4
    .end local p4
    .local v2, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v3, v0, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 95505
    const/4 v0, 0x1

    return v0

    .line 95506
    :cond_2
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget v11, v3, Lcom/facebook/ads/redexgen/X/JO;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x13

    if-eq v4, v3, :cond_3

    sget-object v9, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v4, "rX6gisAdcV7LBeXwmOhQV8Eb98OXk"

    const/4 v3, 0x6

    aput-object v4, v9, v3

    if-ne v11, v8, :cond_5

    .line 95507
    const-wide/16 v3, 0x8

    add-long/2addr v0, v3

    sget-object v4, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1d

    if-eq v4, v3, :cond_4

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95508
    :cond_4
    sget-object v9, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v4, "KKgaKTwS1RwNPE"

    const/4 v3, 0x3

    aput-object v4, v9, v3

    const-string v4, "5hDvshmtbzc6vz"

    const/4 v3, 0x7

    aput-object v4, v9, v3

    add-int/lit8 v2, v2, -0x8

    .line 95509
    .end local v7    # "skipAmount":J
    .local v8, "skipAmount":J
    :cond_5
    long-to-int v3, v0

    invoke-interface {v10, v3}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 95510
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A01:I

    .end local v12
    .local v16, "position":J
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 95511
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0K:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v9

    .line 95512
    .local v7, "nalLengthData":[B
    aput-byte v3, v9, v3

    .line 95513
    aput-byte v3, v9, v8

    .line 95514
    const/4 v0, 0x2

    aput-byte v3, v9, v0

    .line 95515
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/JO;->A01:I

    .line 95516
    .local v12, "nalUnitLengthFieldLength":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A01:I

    rsub-int/lit8 v4, v0, 0x4

    .line 95517
    .local v5, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    if-ge v0, v2, :cond_b

    .line 95518
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    if-nez v0, :cond_6

    .line 95519
    invoke-interface {v10, v9, v4, v8}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 95520
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    add-int/2addr v0, v8

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    .line 95521
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0K:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95522
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0K:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 95523
    .local v10, "nalLengthInt":I
    if-ltz v0, :cond_c

    .line 95524
    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    .line 95525
    .end local v2    # "position":J
    .local v18, "inputPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0L:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95526
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0L:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v1, 0x4

    invoke-interface {v14, v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 95527
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95528
    add-int/2addr v2, v4

    .line 95529
    .end local v10    # "nalLengthInt":I
    goto :goto_1

    .line 95530
    .end local v10
    .end local v18    # "inputPosition":J
    .restart local v2    # "position":J
    .end local v2    # "position":J
    .restart local v18    # "inputPosition":J
    :cond_6
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    invoke-interface {v14, v10, v0, v3}, Lcom/facebook/ads/redexgen/X/Hd;->AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v1

    .line 95531
    .local v10, "writtenBytes":I
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    .line 95532
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95533
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    .line 95534
    .end local v10    # "writtenBytes":I
    goto :goto_1

    .line 95535
    .end local v18    # "inputPosition":J
    .restart local v2    # "position":J
    .end local v2    # "position":J
    .restart local v18    # "inputPosition":J
    :cond_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    const/16 v4, 0x42

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/m3;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95536
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    if-nez v0, :cond_8

    .line 95537
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Gu;->A07(ILcom/facebook/ads/redexgen/X/4v;)V

    .line 95538
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    const/4 v1, 0x7

    invoke-interface {v14, v0, v1}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 95539
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95540
    :cond_8
    add-int/lit8 v2, v2, 0x7

    .line 95541
    :cond_9
    :goto_2
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    if-ge v0, v2, :cond_b

    .line 95542
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    sub-int v0, v2, v0

    invoke-interface {v14, v10, v0, v3}, Lcom/facebook/ads/redexgen/X/Hd;->AIp(Lcom/facebook/ads/redexgen/X/2c;IZ)I

    move-result v1

    .line 95543
    .local v2, "writtenBytes":I
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    .line 95544
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95545
    iget v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    .line 95546
    .end local v2    # "writtenBytes":I
    goto :goto_2

    .line 95547
    :cond_a
    if-eqz v13, :cond_9

    .line 95548
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/He;->A03(Lcom/facebook/ads/redexgen/X/ms;)V

    goto :goto_2

    .line 95549
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :cond_b
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    aget-wide v15, v0, v7

    .line 95550
    .local v20, "timeUs":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A04:[I

    aget v17, v0, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_d

    goto/16 :goto_0

    .line 95551
    .end local v18    # "inputPosition":J
    .restart local v2    # "sampleSize":I
    .restart local v10    # "writtenBytes":I
    .end local v2    # "sampleSize":I
    .restart local v18    # "inputPosition":J
    :cond_c
    const/16 v2, 0x30

    const/16 v1, 0x12

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m3;->A09(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 95552
    .local v3, "flags":I
    :cond_d
    sget-object v3, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "dniiMzQMBKOANx9"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const-string v1, "Fj7cY"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    if-eqz v13, :cond_f

    .line 95553
    const/16 v19, 0x0

    const/16 v20, 0x0

    .end local v8    # "skipAmount":J
    .local p1, "skipAmount":J
    move-object v3, v13

    .end local v11
    .local p3, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .end local v16    # "position":J
    .local p4, "position":J
    const/4 v1, 0x0

    move/from16 v18, v2

    invoke-virtual/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/He;->A04(Lcom/facebook/ads/redexgen/X/Hd;JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 95554
    add-int/lit8 v2, v7, 0x1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-ne v2, v0, :cond_e

    .line 95555
    const/4 v0, 0x0

    .end local p3
    .local v5, "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    invoke-virtual {v3, v14, v0}, Lcom/facebook/ads/redexgen/X/He;->A05(Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 95556
    :cond_e
    :goto_3
    iget v2, v5, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    const/4 v0, 0x1

    add-int/2addr v2, v0

    iput v2, v5, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    .line 95557
    const/4 v0, -0x1

    iput v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    .line 95558
    iput v1, v6, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    .line 95559
    iput v1, v6, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95560
    iput v1, v6, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    .line 95561
    return v1

    .line 95562
    .end local v5    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .end local p1    # "skipAmount":J
    .end local p4
    .restart local v8    # "skipAmount":J
    .restart local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .restart local v16    # "position":J
    :cond_f
    const/4 v1, 0x0

    .end local v8    # "skipAmount":J
    .end local v11    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .end local v16    # "position":J
    .restart local v5    # "trueHdSampleRechunker":Lcom/facebook/ads/redexgen/X/He;
    .restart local p1    # "skipAmount":J
    .restart local p4
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, v2

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    goto :goto_3
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A0N:Lcom/facebook/ads/redexgen/X/JL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0P:Ljava/util/List;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/JL;->A07(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;Ljava/util/List;)I

    move-result v5

    .line 95564
    .local v0, "result":I
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 95565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m3;->A0A()V

    .line 95566
    :cond_0
    return v5
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/JR;J)I
    .locals 2

    .line 95567
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JR;->A00(J)I

    move-result v1

    .line 95568
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 95569
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JR;->A01(J)I

    move-result v1

    .line 95570
    :cond_0
    return v1
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/JR;JJ)J
    .locals 2

    .line 95571
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/m3;->A05(Lcom/facebook/ads/redexgen/X/JR;J)I

    move-result v1

    .line 95572
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 95573
    return-wide p3

    .line 95574
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    aget-wide v0, v0, v1

    .line 95575
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final A07(JI)Lcom/facebook/ads/redexgen/X/HX;
    .locals 19

    .line 95576
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 95577
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A04:Lcom/facebook/ads/redexgen/X/HZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 95578
    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 95579
    .local v4, "secondTimeUs":J
    const-wide/16 v3, -0x1

    .line 95580
    .local v6, "secondOffset":J
    const/4 v14, -0x1

    move/from16 v18, p3

    move/from16 v0, v18

    if-eq v0, v14, :cond_1

    move/from16 v1, v18

    .line 95581
    .local v9, "mainTrackIndex":I
    :goto_0
    move-wide/from16 v9, p1

    if-eq v1, v14, :cond_3

    .line 95582
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    aget-object v0, v0, v1

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    .line 95583
    .local v10, "sampleTable":Lcom/facebook/ads/redexgen/X/JR;
    invoke-static {v15, v9, v10}, Lcom/facebook/ads/redexgen/X/m3;->A05(Lcom/facebook/ads/redexgen/X/JR;J)I

    move-result v13

    .line 95584
    .local v11, "sampleIndex":I
    if-ne v13, v14, :cond_2

    .line 95585
    sget-object v1, Lcom/facebook/ads/redexgen/X/HZ;->A04:Lcom/facebook/ads/redexgen/X/HZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 95586
    :cond_1
    iget v1, v11, Lcom/facebook/ads/redexgen/X/m3;->A03:I

    goto :goto_0

    .line 95587
    :cond_2
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    aget-wide v7, v0, v13

    .line 95588
    .local v13, "sampleTimeUs":J
    .local v15, "firstTimeUs":J
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    aget-wide v1, v0, v13

    .line 95589
    .local v17, "firstOffset":J
    cmp-long v17, v7, v9

    sget-object v12, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v0, 0x1d

    if-eq v12, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95590
    .end local v15    # "firstTimeUs":J
    .end local v17    # "firstOffset":J
    .restart local v15    # "firstTimeUs":J
    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    sget-object v7, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v7, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v0, 0xb

    if-eq v7, v0, :cond_4

    move-wide v7, v9

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v7, "SenK5aC"

    const/4 v0, 0x2

    aput-object v7, v8, v0

    move-wide v7, v9

    goto :goto_1

    .line 95591
    :cond_5
    sget-object v16, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v12, "zbT5rN6sguJCvWwII8HLCHwSkH7sQNQT"

    const/4 v0, 0x1

    aput-object v12, v16, v0

    if-gez v17, :cond_6

    iget v0, v15, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    add-int/lit8 v0, v0, -0x1

    if-ge v13, v0, :cond_6

    .line 95592
    invoke-virtual {v15, v9, v10}, Lcom/facebook/ads/redexgen/X/JR;->A01(J)I

    move-result v9

    .line 95593
    .local v12, "secondSampleIndex":I
    if-eq v9, v14, :cond_6

    if-eq v9, v13, :cond_6

    .line 95594
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    aget-wide v5, v0, v9

    .line 95595
    iget-object v0, v15, Lcom/facebook/ads/redexgen/X/JR;->A06:[J

    aget-wide v3, v0, v9

    .line 95596
    .end local v15    # "firstTimeUs":J
    .local v10, "firstTimeUs":J
    .restart local v17    # "firstOffset":J
    :cond_6
    :goto_1
    const/4 v9, -0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_8

    .line 95597
    const/4 v13, 0x0

    .end local v17    # "firstOffset":J
    .local v8, "i":I
    .local v14, "firstOffset":J
    :goto_2
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    array-length v0, v0

    if-ge v13, v0, :cond_8

    .line 95598
    iget v0, v11, Lcom/facebook/ads/redexgen/X/m3;->A03:I

    if-eq v13, v0, :cond_7

    .line 95599
    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    aget-object v0, v0, v13

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    .line 95600
    .local v12, "sampleTable":Lcom/facebook/ads/redexgen/X/JR;
    invoke-static {v12, v7, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/m3;->A06(Lcom/facebook/ads/redexgen/X/JR;JJ)J

    move-result-wide v1

    .line 95601
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v9

    if-eqz v0, :cond_7

    .line 95602
    invoke-static {v12, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/m3;->A06(Lcom/facebook/ads/redexgen/X/JR;JJ)J

    move-result-wide v3

    .line 95603
    .end local v12    # "sampleTable":Lcom/facebook/ads/redexgen/X/JR;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 95604
    .end local v17
    .restart local v14    # "firstOffset":J
    :cond_8
    new-instance v9, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v9, v7, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 95605
    .local v8, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-nez v0, :cond_9

    .line 95606
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v9}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0

    .line 95607
    :cond_9
    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    .line 95608
    .local v12, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/HZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v9, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/JO;)Lcom/facebook/ads/redexgen/X/JO;
    .locals 0

    .line 95609
    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0A()V
    .locals 1

    .line 95610
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    .line 95611
    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    .line 95612
    return-void
.end method

.method private A0B()V
    .locals 4

    .line 95613
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A02:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0I:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 95614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v3

    .line 95615
    .local v0, "trackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 95616
    .local v1, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 95617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 95618
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/mn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mn;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 95619
    .end local v0    # "trackOutput":Lcom/facebook/ads/redexgen/X/Hd;
    .end local v1    # "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_0
    return-void

    .line 95620
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    aput-object v0, v1, v2

    new-instance v2, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v2, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    goto :goto_0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/m3;->A0Q:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        0x4t
        -0x1t
        -0x3t
        -0x50t
        0x3t
        -0x7t
        0xat
        -0xbt
        -0x50t
        -0x4t
        -0xbt
        0x3t
        0x3t
        -0x50t
        0x4t
        -0x8t
        -0xft
        -0x2t
        -0x50t
        -0x8t
        -0xbt
        -0xft
        -0xct
        -0xbt
        0x2t
        -0x50t
        -0x4t
        -0xbt
        -0x2t
        -0x9t
        0x4t
        -0x8t
        -0x50t
        -0x48t
        0x5t
        -0x2t
        0x3t
        0x5t
        0x0t
        0x0t
        -0x1t
        0x2t
        0x4t
        -0xbt
        -0xct
        -0x47t
        -0x42t
        0x12t
        0x37t
        0x3ft
        0x2at
        0x35t
        0x32t
        0x2dt
        -0x17t
        0x17t
        0xat
        0x15t
        -0x17t
        0x35t
        0x2et
        0x37t
        0x30t
        0x3dt
        0x31t
        -0x8t
        0xct
        -0x5t
        0x0t
        0x6t
        -0x3at
        -0x8t
        -0x6t
        -0x35t
        0x31t
        0x45t
        0x34t
        0x39t
        0x3ft
        -0x1t
        0x44t
        0x42t
        0x45t
        0x35t
        -0x3t
        0x38t
        0x34t
    .end array-data
.end method

.method private A0D(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 95621
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mE;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/mE;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 95622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/mE;

    .line 95623
    .local v0, "containerAtom":Lcom/facebook/ads/redexgen/X/mE;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    const v0, 0x6d6f6f76

    if-ne v1, v0, :cond_1

    .line 95624
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/m3;->A0G(Lcom/facebook/ads/redexgen/X/mE;)V

    .line 95625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 95626
    iput v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    goto :goto_0

    .line 95627
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mE;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/mE;->A08(Lcom/facebook/ads/redexgen/X/mE;)V

    goto :goto_0

    .line 95629
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    if-eq v0, v3, :cond_3

    .line 95630
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m3;->A0A()V

    .line 95631
    :cond_3
    return-void
.end method

.method private A0E(J)V
    .locals 13

    .line 95632
    iget v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    const v0, 0x6d707664

    if-ne v1, v0, :cond_0

    .line 95633
    new-instance v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    move-wide v5, p1

    add-long v9, v5, v0

    iget-wide v11, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    sub-long/2addr v11, v0

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/m3;->A0F:Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 95634
    :cond_0
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0d(I)V

    .line 95636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ms;->AGt([BII)V

    .line 95637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J0;->A0Q(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 95638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0M:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 95639
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 95640
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/mE;)V
    .locals 35
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Adding average bitrate calculation logic"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 95641
    move-object/from16 v6, p0

    const/4 v12, -0x1

    .line 95642
    .local v10, "firstVideoTrackIndex":I
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 95643
    .local v11, "durationUs":J
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 95644
    .local v13, "videoDurationUs":J
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 95645
    .local v15, "audioDurationUs":J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 95646
    .local v8, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v5, 0x0

    .line 95647
    .local v1, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const/4 v4, 0x0

    .line 95648
    .local v2, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget v2, v6, Lcom/facebook/ads/redexgen/X/m3;->A02:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_f

    const/16 v32, 0x1

    .line 95649
    .local v7, "isQuickTime":Z
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/HK;-><init>()V

    .line 95650
    .local v3, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/HK;
    const v7, 0x75647461

    move-object/from16 v3, p1

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v7

    .line 95651
    .local v17, "udta":Lcom/facebook/ads/redexgen/X/mD;
    if-eqz v7, :cond_0

    .line 95652
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J0;->A0A(Lcom/facebook/ads/redexgen/X/mD;)Landroid/util/Pair;

    move-result-object v4

    .line 95653
    .local v6, "udtaMetadata":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/androidx/media3/common/Metadata;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 95654
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 95655
    if-eqz v5, :cond_0

    .line 95656
    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/HK;->A05(Lcom/facebook/ads/androidx/media3/common/Metadata;)Z

    .line 95657
    .end local v1    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v2    # "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v5, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v19, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_0
    const/16 v24, 0x0

    .line 95658
    .local v1, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const v7, 0x6d657461

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v7

    .line 95659
    .local v20, "meta":Lcom/facebook/ads/redexgen/X/mE;
    if-eqz v7, :cond_1

    .line 95660
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J0;->A0F(Lcom/facebook/ads/redexgen/X/mE;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v24

    .line 95661
    .end local v1    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v2, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_1
    iget v7, v6, Lcom/facebook/ads/redexgen/X/m3;->A0I:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    const/16 v31, 0x1

    .line 95662
    .local v6, "ignoreEditLists":Z
    :goto_1
    new-instance v33, Lcom/facebook/ads/redexgen/X/m5;

    invoke-direct/range {v33 .. v33}, Lcom/facebook/ads/redexgen/X/m5;-><init>()V

    .line 95663
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v30, 0x0

    .end local v2    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v25, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    move-object/from16 v34, v2

    .end local v3    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/HK;
    .end local v10    # "firstVideoTrackIndex":I
    .local v9, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/HK;
    .local v26, "firstVideoTrackIndex":I
    .end local v5    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v27, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v8    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v18, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    move-object/from16 v26, v3

    move-object/from16 v27, v2

    invoke-static/range {v26 .. v33}, Lcom/facebook/ads/redexgen/X/J0;->A0O(Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/HK;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZLcom/facebook/ads/redexgen/X/kO;)Ljava/util/List;

    move-result-object v23

    .line 95664
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .line 95665
    .local v2, "trackCount":I
    const/4 v9, 0x0

    .end local v15    # "audioDurationUs":J
    .end local v26    # "firstVideoTrackIndex":I
    .local v3, "i":I
    .local v4, "firstVideoTrackIndex":I
    .local v28, "audioDurationUs":J
    :goto_2
    move/from16 v2, v22

    if-ge v9, v2, :cond_10

    .line 95666
    move-object/from16 v2, v23

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/JR;

    .line 95667
    .local v5, "trackSampleTable":Lcom/facebook/ads/redexgen/X/JR;
    iget v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-nez v2, :cond_2

    .line 95668
    sget-object v3, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95669
    :cond_2
    iget-object v8, v11, Lcom/facebook/ads/redexgen/X/JR;->A03:Lcom/facebook/ads/redexgen/X/JO;

    .line 95670
    .local v8, "track":Lcom/facebook/ads/redexgen/X/JO;
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    .end local v1    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v21, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    iget v2, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    .line 95671
    invoke-interface {v3, v9, v2}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v2

    new-instance v7, Lcom/facebook/ads/redexgen/X/JE;

    invoke-direct {v7, v8, v11, v2}, Lcom/facebook/ads/redexgen/X/JE;-><init>(Lcom/facebook/ads/redexgen/X/JO;Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 95672
    .local v1, "mp4Track":Lcom/facebook/ads/redexgen/X/JE;
    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .local v10, "isQuickTime":Z
    .local v15, "ignoreEditLists":Z
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/JO;->A04:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v2, v13

    if-eqz v10, :cond_5

    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/JO;->A04:J

    .line 95673
    .local v6, "trackDurationUs":J
    .end local v2    # "trackCount":I
    .local v22, "trackCount":I
    :goto_3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 95674
    iget v13, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    .end local v10    # "isQuickTime":Z
    .local v23, "isQuickTime":Z
    const/4 v10, 0x1

    if-ne v10, v13, :cond_4

    .line 95675
    move-wide/from16 v16, v2

    .line 95676
    :cond_3
    :goto_4
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v14, v10, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    const/16 v15, 0x4b

    const/16 v13, 0xd

    const/16 v10, 0x7d

    invoke-static {v15, v13, v10}, Lcom/facebook/ads/redexgen/X/m3;->A09(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 95677
    iget v15, v11, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    sget-object v13, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v10, v13, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v10, 0x1d

    if-eq v13, v10, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95678
    :cond_4
    iget v13, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    const/4 v10, 0x2

    if-ne v10, v13, :cond_3

    .line 95679
    move-wide/from16 v18, v2

    goto :goto_4

    .line 95680
    :cond_5
    iget-wide v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A02:J

    goto :goto_3

    .line 95681
    .end local v2
    :cond_6
    iget v10, v11, Lcom/facebook/ads/redexgen/X/JR;->A00:I

    add-int/lit8 v13, v10, 0x1e

    goto :goto_5

    .line 95682
    :cond_7
    sget-object v14, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v13, "30Puiqoz9JCJMsN9BhlLDaWtr32u3"

    const/4 v10, 0x6

    aput-object v13, v14, v10

    mul-int/lit8 v13, v15, 0x10

    .line 95683
    .local v2, "maxInputSize":I
    .restart local v2    # "maxInputSize":I
    :goto_5
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v10

    .line 95684
    .local v10, "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    invoke-virtual {v10, v13}, Lcom/facebook/ads/redexgen/X/2p;->A0h(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 95685
    .end local v2    # "maxInputSize":I
    .local v26, "maxInputSize":I
    iget v14, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    const-wide/16 v20, 0x0

    const/4 v13, 0x2

    .end local v13    # "videoDurationUs":J
    .local v32, "videoDurationUs":J
    if-ne v14, v13, :cond_8

    cmp-long v13, v2, v20

    if-lez v13, :cond_8

    iget v14, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    const/4 v13, 0x1

    if-le v14, v13, :cond_8

    .line 95686
    iget v13, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    int-to-float v14, v13

    long-to-float v13, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v13, v2

    div-float/2addr v14, v13

    .line 95687
    .local v2, "frameRate":F
    invoke-virtual {v10, v14}, Lcom/facebook/ads/redexgen/X/2p;->A0X(F)Lcom/facebook/ads/redexgen/X/2p;

    .line 95688
    .end local v2    # "frameRate":F
    :cond_8
    cmp-long v2, v0, v20

    if-lez v2, :cond_a

    iget v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-lez v2, :cond_a

    iget-object v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    array-length v3, v2

    iget v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-ne v3, v2, :cond_a

    .line 95689
    const-wide/16 v14, 0x0

    .line 95690
    .local v13, "totalBytes":J
    const/4 v13, 0x0

    .local v2, "sampleIndex":I
    .end local v6    # "trackDurationUs":J
    .local v30, "trackDurationUs":J
    :goto_6
    iget v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    if-ge v13, v2, :cond_9

    .line 95691
    iget-object v2, v11, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    aget v2, v2, v13

    int-to-long v2, v2

    add-long/2addr v14, v2

    .line 95692
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 95693
    .end local v2    # "sampleIndex":I
    :cond_9
    const-wide/32 v2, 0x7a1200

    mul-long/2addr v2, v14

    div-long/2addr v2, v0

    long-to-int v11, v2

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 95694
    .end local v6
    .restart local v30    # "trackDurationUs":J
    :cond_a
    iget v3, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    move-object/from16 v2, v34

    invoke-static {v3, v2, v10}, Lcom/facebook/ads/redexgen/X/JB;->A0D(ILcom/facebook/ads/redexgen/X/HK;Lcom/facebook/ads/redexgen/X/2p;)V

    .line 95695
    iget v13, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    const/4 v2, 0x2

    new-array v11, v2, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    const/4 v2, 0x0

    aput-object v4, v11, v2

    .line 95696
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/m3;->A0P:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :goto_7
    const/4 v2, 0x1

    aput-object v3, v11, v2

    .line 95697
    .end local v25    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v27    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v13, "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .local v14, "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    move-object/from16 v2, v24

    invoke-static {v13, v5, v2, v10, v11}, Lcom/facebook/ads/redexgen/X/JB;->A0C(ILcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/androidx/media3/common/Metadata;Lcom/facebook/ads/redexgen/X/2p;[Lcom/facebook/ads/androidx/media3/common/Metadata;)V

    .line 95698
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/JE;->A01:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 95699
    iget v3, v8, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    const/4 v2, -0x1

    if-ne v12, v2, :cond_b

    .line 95700
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v12

    .line 95701
    .end local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    :cond_b
    move-object/from16 v2, v25

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 95702
    :cond_c
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/m3;->A0P:Ljava/util/List;

    new-instance v3, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v3, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_7

    .line 95703
    :cond_d
    sget-object v7, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v3, "ibvFTefsgA7pkzOq8AzNcMz9gVb8PR75"

    const/4 v2, 0x1

    aput-object v3, v7, v2

    .line 95704
    .end local v1    # "mp4Track":Lcom/facebook/ads/redexgen/X/JE;
    .end local v5    # "trackSampleTable":Lcom/facebook/ads/redexgen/X/JR;
    .end local v8    # "track":Lcom/facebook/ads/redexgen/X/JO;
    .end local v10    # "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    .end local v26    # "maxInputSize":I
    .end local v30    # "trackDurationUs":J
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 95705
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 95706
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 95707
    .end local v14    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .end local v15    # "ignoreEditLists":Z
    .end local v21    # "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .end local v22    # "trackCount":I
    .end local v23    # "isQuickTime":Z
    .end local v32    # "videoDurationUs":J
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    .local v2, "trackCount":I
    .local v6, "ignoreEditLists":Z
    .restart local v7    # "isQuickTime":Z
    .local v13, "videoDurationUs":J
    .restart local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v25    # "mdtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    .restart local v27    # "udtaMetaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :cond_10
    const/4 v2, 0x0

    .line 95708
    .end local v3    # "i":I
    .end local v6    # "ignoreEditLists":Z
    .end local v7    # "isQuickTime":Z
    .end local v18    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .local v2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    .restart local v15    # "ignoreEditLists":Z
    .restart local v22    # "trackCount":I
    .restart local v23    # "isQuickTime":Z
    iput v12, v6, Lcom/facebook/ads/redexgen/X/m3;->A03:I

    .line 95709
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0B:J

    .line 95710
    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0C:J

    .line 95711
    .end local v28    # "audioDurationUs":J
    .local v7, "audioDurationUs":J
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0A:J

    .line 95712
    new-array v1, v2, [Lcom/facebook/ads/redexgen/X/JE;

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/JE;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    .line 95713
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m3;->A0N([Lcom/facebook/ads/redexgen/X/JE;)[[J

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0H:[[J

    .line 95714
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HA;->A6O()V

    .line 95715
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/HA;->AJ7(Lcom/facebook/ads/redexgen/X/HY;)V

    .line 95716
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/JE;J)V
    .locals 3

    .line 95717
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    .line 95718
    .local v0, "sampleTable":Lcom/facebook/ads/redexgen/X/JR;
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/JR;->A00(J)I

    move-result v1

    .line 95719
    .local v1, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 95720
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/JR;->A01(J)I

    move-result v1

    .line 95721
    :cond_0
    iput v1, p1, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    .line 95722
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "DxqZc2lJMNLNZhW19Xb8kO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0I(I)Z
    .locals 1

    .line 95723
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_0

    const v0, 0x7472616b

    if-eq p0, v0, :cond_0

    const v0, 0x6d646961

    if-eq p0, v0, :cond_0

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_0

    const v0, 0x7374626c

    if-eq p0, v0, :cond_0

    const v0, 0x65647473

    if-eq p0, v0, :cond_0

    const v0, 0x6d657461

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(I)Z
    .locals 4

    .line 95724
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v3, 0x68646c72    # 4.3148E24f

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "UHuXZ9PGVGxrhu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Sv1JTBT1egKeuo"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v3, 0x7374636f

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "0EWWhWMRQ7MgS85x4CKboIorprSqD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    :goto_0
    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eq p0, v3, :cond_1

    goto :goto_0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95725
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 95726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/ms;->AHR([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95727
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m3;->A0B()V

    .line 95728
    return v4

    .line 95729
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    .line 95730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 95731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    .line 95732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    .line 95733
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_9

    .line 95734
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_c

    .line 95735
    .local v0, "headerBytesRemaining":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "uEfPCG8cZZkUCN4sq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-interface {p1, v0, v6, v3}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 95736
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    .line 95737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0R()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    .line 95738
    .end local v0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_b

    .line 95739
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m3;->A0I(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95740
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    add-long/2addr v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 95741
    .local v0, "endPosition":J
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v3, v0

    cmp-long v0, v6, v3

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    const v0, 0x6d657461

    if-ne v3, v0, :cond_3

    .line 95742
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m3;->A0F(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 95743
    :cond_3
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/mE;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/mE;-><init>(IJ)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 95744
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v3, v0

    cmp-long v0, v6, v3

    if-nez v0, :cond_4

    .line 95745
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/m3;->A0D(J)V

    .line 95746
    :goto_1
    return v5

    .line 95747
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m3;->A0A()V

    goto :goto_1

    .line 95748
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m3;->A0J(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95749
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    if-ne v0, v6, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 95750
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 95751
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    long-to-int v0, v1

    new-instance v2, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/4v;-><init>(I)V

    .line 95752
    .local v0, "atomData":Lcom/facebook/ads/redexgen/X/4v;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0J:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95753
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/m3;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    .line 95754
    iput v5, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    .line 95755
    .end local v0    # "atomData":Lcom/facebook/ads/redexgen/X/4v;
    goto :goto_1

    .line 95756
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 95757
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 95758
    :cond_8
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/m3;->A0E(J)V

    .line 95759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    .line 95760
    iput v5, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    goto :goto_1

    .line 95761
    :cond_9
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 95762
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8O()J

    move-result-wide v2

    .line 95763
    .local v4, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_a

    .line 95764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mE;

    .line 95765
    .local v0, "containerAtom":Lcom/facebook/ads/redexgen/X/mE;
    if-eqz v0, :cond_a

    .line 95766
    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/mE;->A00:J

    .line 95767
    .end local v0    # "containerAtom":Lcom/facebook/ads/redexgen/X/mE;
    :cond_a
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 95768
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    goto/16 :goto_0

    .line 95769
    :cond_b
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m3;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3K;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95770
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A09:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 95771
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 95772
    .local v2, "atomEndPosition":J
    const/4 v8, 0x0

    .line 95773
    .local v4, "seekRequired":Z
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/m3;->A0D:Lcom/facebook/ads/redexgen/X/4v;

    .line 95774
    .local v5, "atomData":Lcom/facebook/ads/redexgen/X/4v;
    if-eqz v6, :cond_3

    .line 95775
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/ms;->readFully([BII)V

    .line 95776
    iget v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    const v0, 0x66747970

    if-ne v1, v0, :cond_2

    .line 95777
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/m3;->A02(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A02:I

    .line 95778
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/m3;->A0D(J)V

    .line 95779
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 95780
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/mE;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/mD;

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/redexgen/X/mD;-><init>(ILcom/facebook/ads/redexgen/X/4v;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/mE;->A09(Lcom/facebook/ads/redexgen/X/mD;)V

    goto :goto_0

    .line 95782
    :cond_3
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 95783
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    goto :goto_0

    .line 95784
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 95785
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static synthetic A0M()[Lcom/facebook/ads/redexgen/X/H9;
    .locals 3

    .line 95786
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/H9;

    new-instance v1, Lcom/facebook/ads/redexgen/X/m3;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/m3;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static A0N([Lcom/facebook/ads/redexgen/X/JE;)[[J
    .locals 16

    .line 95787
    move-object/from16 v7, p0

    array-length v0, v7

    new-array v6, v0, [[J

    .line 95788
    .local v0, "accumulatedSampleSizes":[[J
    array-length v0, v7

    new-array v5, v0, [I

    .line 95789
    .local v1, "nextSampleIndex":[I
    array-length v0, v7

    new-array v4, v0, [J

    .line 95790
    .local v2, "nextSampleTimesUs":[J
    array-length v0, v7

    new-array v3, v0, [Z

    .line 95791
    .local v3, "tracksFinished":[Z
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, v7

    if-ge v2, v0, :cond_0

    .line 95792
    aget-object v0, v7, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    .line 95793
    aget-object v0, v7, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    .line 95794
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95795
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v15, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_7

    .line 95796
    .local v4, "accumulatedSampleSize":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "qbCXFrWy43oBbJoUYfYqc11BUuHVPZxe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .line 95797
    .local v6, "finishedTracks":I
    :goto_1
    array-length v0, v7

    if-ge v2, v0, :cond_6

    .line 95798
    const-wide v13, 0x7fffffffffffffffL

    .line 95799
    .local v7, "minTimeUs":J
    const/4 v12, -0x1

    .line 95800
    .local v9, "minTimeTrackIndex":I
    const/4 v9, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v7

    if-ge v9, v0, :cond_3

    .line 95801
    aget-boolean v10, v3, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v8, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "AIMWoJADevTWezna7TxcWd"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    if-nez v10, :cond_1

    :goto_3
    aget-wide v10, v4, v9

    cmp-long v0, v10, v13

    if-gtz v0, :cond_1

    .line 95802
    move v12, v9

    .line 95803
    aget-wide v13, v4, v9

    .line 95804
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "DkVrMcHnnNdNTj"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const-string v1, "McjqbXJyC3Esle"

    const/4 v0, 0x7

    aput-object v1, v8, v0

    if-nez v10, :cond_1

    goto :goto_3

    .line 95805
    .end local v10    # "i":I
    :cond_3
    aget v8, v5, v12

    .line 95806
    .local v10, "trackSampleIndex":I
    aget-object v0, v6, v12

    aput-wide v15, v0, v8

    .line 95807
    aget-object v0, v7, v12

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A05:[I

    aget v0, v0, v8

    int-to-long v0, v0

    add-long/2addr v15, v0

    .line 95808
    const/4 v1, 0x1

    add-int/2addr v8, v1

    aput v8, v5, v12

    .line 95809
    aget-object v0, v6, v12

    array-length v0, v0

    if-ge v8, v0, :cond_5

    .line 95810
    aget-object v10, v7, v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_4

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    aget-wide v0, v0, v8

    aput-wide v0, v4, v12

    goto :goto_1

    :cond_4
    sget-object v9, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "FttiEMkEmxvjjK7"

    const/4 v0, 0x5

    aput-object v1, v9, v0

    const-string v1, "cOA5C"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JR;->A07:[J

    aget-wide v0, v0, v8

    aput-wide v0, v4, v12

    goto/16 :goto_1

    .line 95811
    :cond_5
    aput-boolean v1, v3, v12

    .line 95812
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 95813
    :cond_6
    return-object v6

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A7t()J
    .locals 2

    .line 95814
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0B:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 1

    .line 95815
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/m3;->A07(JI)Lcom/facebook/ads/redexgen/X/HX;

    move-result-object v0

    return-object v0
.end method

.method public final AAC(Lcom/facebook/ads/redexgen/X/HA;)V
    .locals 0

    .line 95816
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m3;->A0E:Lcom/facebook/ads/redexgen/X/HA;

    .line 95817
    return-void
.end method

.method public final AAj()Z
    .locals 1

    .line 95818
    const/4 v0, 0x1

    return v0
.end method

.method public final AHL(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95819
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    packed-switch v0, :pswitch_data_0

    .line 95820
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 95821
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/m3;->A0L(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95822
    const/4 v0, 0x1

    return v0

    .line 95823
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m3;->A0K(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95824
    const/4 v0, -0x1

    return v0

    .line 95825
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/m3;->A04(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 95826
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/m3;->A03(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final AHb()V
    .locals 0

    .line 95827
    return-void
.end method

.method public final AJ6(JJ)V
    .locals 5

    .line 95828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 95829
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:I

    .line 95830
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A08:I

    .line 95831
    iput v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A05:I

    .line 95832
    iput v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A06:I

    .line 95833
    iput v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A07:I

    .line 95834
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 95835
    iget v4, p0, Lcom/facebook/ads/redexgen/X/m3;->A04:I

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95836
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/m3;->A0G:[Lcom/facebook/ads/redexgen/X/JE;

    array-length v2, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v1, v3, v4

    .line 95837
    .local v3, "track":Lcom/facebook/ads/redexgen/X/JE;
    invoke-direct {p0, v1, p3, p4}, Lcom/facebook/ads/redexgen/X/m3;->A0H(Lcom/facebook/ads/redexgen/X/JE;J)V

    .line 95838
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/JE;->A02:Lcom/facebook/ads/redexgen/X/He;

    if-eqz v0, :cond_1

    .line 95839
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/JE;->A02:Lcom/facebook/ads/redexgen/X/He;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/He;->A02()V

    .line 95840
    .end local v3    # "track":Lcom/facebook/ads/redexgen/X/JE;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95841
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/m3;->A0R:[Ljava/lang/String;

    const-string v1, "BBO5nGzNDCjhdG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Qq9RZt6cBQ724Z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    .line 95842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m3;->A0A()V

    .line 95843
    :cond_3
    :goto_1
    return-void

    .line 95844
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0N:Lcom/facebook/ads/redexgen/X/JL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JL;->A08()V

    .line 95845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public final AK5(Lcom/facebook/ads/redexgen/X/ms;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95846
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A0I:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A02(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
