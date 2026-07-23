.class public final Lcom/facebook/ads/redexgen/X/8B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MS;,
        Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;,
        Lcom/facebook/ads/redexgen/X/kT;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Landroid/net/Uri;

.field public A06:Lcom/facebook/ads/redexgen/X/pF;

.field public A07:Lcom/facebook/ads/redexgen/X/5i;

.field public A08:Lcom/facebook/ads/redexgen/X/5i;

.field public A09:Lcom/facebook/ads/redexgen/X/ML;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/MZ;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/pF;

.field public final A0E:Lcom/facebook/ads/redexgen/X/pF;

.field public final A0F:Lcom/facebook/ads/redexgen/X/pF;

.field public final A0G:Lcom/facebook/ads/redexgen/X/MP;

.field public final A0H:Lcom/facebook/ads/redexgen/X/MS;

.field public final A0I:Lcom/facebook/ads/redexgen/X/MY;

.field public final A0J:Z

.field public final A0K:Z

.field public final A0L:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 497
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gtbAICrdQ5OiLd8QtlGJkysA4GOuQAyl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NB4BeTTq5ijHDPStUBIG2cd4hjVw3Rms"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uuMr3aWTfRr6VJnGuPPVK2CIrmsp3XMP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Eb6am5ksZvZ5Hz0HFQHbX0NWivmHdCO7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qnDH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QayiUw4ouBPhcoxDO7fR8OixzHh3DuJf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V84YazX1IDZHbq2m95FMlzDl0u9g04ST"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "S22pIk311xlkEmMZRooVtOw4dNPxaWRF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8B;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/MY;ILcom/facebook/ads/redexgen/X/3d;ILcom/facebook/ads/redexgen/X/MS;)V
    .locals 2

    .line 22446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    .line 22448
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8B;->A0D:Lcom/facebook/ads/redexgen/X/pF;

    .line 22449
    if-eqz p5, :cond_6

    :goto_0
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/8B;->A0I:Lcom/facebook/ads/redexgen/X/MY;

    .line 22450
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0J:Z

    .line 22451
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0L:Z

    .line 22452
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A0K:Z

    .line 22453
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 22454
    if-eqz p7, :cond_1

    .line 22455
    new-instance v0, Lcom/facebook/ads/redexgen/X/AH;

    invoke-direct {v0, p2, p7, p8}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/3d;I)V

    move-object p2, v0

    .line 22456
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    .line 22457
    if-eqz p4, :cond_2

    .line 22458
    new-instance v1, Lcom/facebook/ads/redexgen/X/AF;

    invoke-direct {v1, p2, p4}, Lcom/facebook/ads/redexgen/X/AF;-><init>(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;)V

    .line 22459
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A0E:Lcom/facebook/ads/redexgen/X/pF;

    .line 22460
    :goto_3
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/8B;->A0H:Lcom/facebook/ads/redexgen/X/MS;

    .line 22461
    return-void

    .line 22462
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/AI;->A02:Lcom/facebook/ads/redexgen/X/AI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    .line 22463
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A0E:Lcom/facebook/ads/redexgen/X/pF;

    goto :goto_3

    .line 22464
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 22465
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 22466
    :cond_6
    sget-object p5, Lcom/facebook/ads/redexgen/X/MY;->A00:Lcom/facebook/ads/redexgen/X/MY;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/MY;ILcom/facebook/ads/redexgen/X/3d;ILcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/MQ;)V
    .locals 0

    .line 22467
    invoke-direct/range {p0 .. p9}, Lcom/facebook/ads/redexgen/X/8B;-><init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5W;Lcom/facebook/ads/redexgen/X/MY;ILcom/facebook/ads/redexgen/X/3d;ILcom/facebook/ads/redexgen/X/MS;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/5i;)I
    .locals 5

    .line 22468
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0C:Z

    if-eqz v0, :cond_0

    .line 22469
    const/4 v0, 0x0

    return v0

    .line 22470
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0K:Z

    if-eqz v0, :cond_1

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 22471
    const/4 v0, 0x1

    return v0

    .line 22472
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/MP;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 22473
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/MP;->A7S(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mk;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A01(Lcom/facebook/ads/redexgen/X/Mk;)Landroid/net/Uri;

    move-result-object p0

    .line 22474
    .local p0, "redirectedUri":Landroid/net/Uri;
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p2

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "VXYuEglycDYgl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/2addr v3, p2

    xor-int/lit8 v0, v3, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    if-nez v0, :cond_0

    .line 22476
    return-void

    .line 22477
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22478
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A07:Lcom/facebook/ads/redexgen/X/5i;

    .line 22479
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22480
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "vHGwoIowQcJHPzt2zHibHrQYTuNv4ZzT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "k7MJrtNgTHKuOTKhmFADSg5K1rHaIFar"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    if-eqz v0, :cond_3

    .line 22481
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "npCyc8crYVBLSlKGvChDlZdzdxvHOR7S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yWpl1AKn1flVHx0rOJ2JJIdMQnxjFkRn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/MP;->AHg(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 22482
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    .line 22483
    :cond_3
    return-void

    .line 22484
    :catchall_0
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A07:Lcom/facebook/ads/redexgen/X/5i;

    .line 22485
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    .line 22486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    if-eqz v0, :cond_4

    .line 22487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->AHg(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 22488
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    .line 22489
    :cond_4
    throw v2
.end method

.method private A04()V
    .locals 5

    .line 22490
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8B;->A04:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 22491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A7A()J

    const/16 v2, 0x67

    const/16 v1, 0x11

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8B;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22492
    :cond_0
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x78

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8B;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x3bt
        0x39t
        0x32t
        0x3ft
        0x1et
        0x3bt
        0x2et
        0x3bt
        0x9t
        0x35t
        0x2ft
        0x28t
        0x39t
        0x3ft
        0x16t
        0x3at
        0x20t
        0x39t
        0x31t
        0x3bt
        0x72t
        0x21t
        0x75t
        0x20t
        0x25t
        0x31t
        0x34t
        0x21t
        0x30t
        0x75t
        0x27t
        0x30t
        0x31t
        0x3ct
        0x27t
        0x30t
        0x36t
        0x21t
        0x30t
        0x31t
        0x75t
        0x0t
        0x7t
        0x1ct
        0x7bt
        0x75t
        0x1t
        0x3dt
        0x3ct
        0x26t
        0x75t
        0x38t
        0x3ct
        0x32t
        0x3dt
        0x21t
        0x75t
        0x36t
        0x34t
        0x20t
        0x26t
        0x30t
        0x75t
        0x27t
        0x30t
        0x39t
        0x34t
        0x21t
        0x3ct
        0x23t
        0x30t
        0x75t
        0x0t
        0x7t
        0x1ct
        0x26t
        0x75t
        0x32t
        0x30t
        0x21t
        0x75t
        0x27t
        0x30t
        0x26t
        0x3at
        0x39t
        0x23t
        0x30t
        0x31t
        0x75t
        0x3ct
        0x3bt
        0x36t
        0x3at
        0x27t
        0x27t
        0x30t
        0x36t
        0x21t
        0x39t
        0x2ct
        0x7bt
        0x5ft
        0x5et
        0x73t
        0x51t
        0x53t
        0x58t
        0x55t
        0x54t
        0x72t
        0x49t
        0x44t
        0x55t
        0x43t
        0x62t
        0x55t
        0x51t
        0x54t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/5i;ZZ)V
    .locals 21
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Parameter isInitSegment and all ot is usages. Setting mFbDataSpecExtension in nextDataSpec. Call to maybeUpdateRedirectedUriMetadata at the end"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22493
    move-object/from16 v6, p0

    move-object/from16 v10, p1

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 22494
    .local v14, "key":Ljava/lang/String;
    if-eqz p3, :cond_15

    sget-object v20, Lcom/facebook/ads/redexgen/X/MN;->A03:Lcom/facebook/ads/redexgen/X/MN;

    .line 22495
    .local v9, "reason":Lcom/facebook/ads/redexgen/X/MN;
    :goto_0
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0B:Z

    if-eqz v0, :cond_13

    .line 22496
    const/4 v7, 0x0

    .line 22497
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/MZ;
    .local v0, "nextSpan":Lcom/facebook/ads/redexgen/X/MZ;
    :goto_1
    const-wide/16 v13, -0x1

    if-nez v7, :cond_c

    .line 22498
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    .line 22499
    .local v6, "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/5i;->A04()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    .line 22500
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->A04(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22501
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->A03(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A09:Lcom/facebook/ads/redexgen/X/ML;

    .line 22502
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5f;->A07(Lcom/facebook/ads/redexgen/X/ML;)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    .line 22503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A09()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v8

    .line 22504
    .local v7, "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    .end local v0    # "nextSpan":Lcom/facebook/ads/redexgen/X/MZ;
    .end local v8
    .local v6, "nextSpan":Lcom/facebook/ads/redexgen/X/MZ;
    .local v7, "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    :goto_2
    iget-boolean v3, v6, Lcom/facebook/ads/redexgen/X/8B;->A0B:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "KvC0Ia1A4x1eGi9X8aRBDgkMlzCJszIJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "nNrFIIpUFsn1fqvNydhqNDEn907tEQAg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    if-ne v4, v0, :cond_2

    .line 22505
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    .line 22506
    :goto_4
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A01:J

    .line 22507
    if-eqz p2, :cond_4

    .line 22508
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8B;->A0A()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 22509
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "8XoiTPgLcR8ApVu7jrAIE2ygde6TsOz1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 22510
    return-void

    .line 22511
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_4

    .line 22512
    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8B;->A03()V

    .line 22513
    .end local v0
    :cond_4
    if-eqz v7, :cond_5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/MZ;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22514
    iput-object v7, v6, Lcom/facebook/ads/redexgen/X/8B;->A0A:Lcom/facebook/ads/redexgen/X/MZ;

    .line 22515
    :cond_5
    iput-object v4, v6, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    .line 22516
    iput-object v8, v6, Lcom/facebook/ads/redexgen/X/8B;->A07:Lcom/facebook/ads/redexgen/X/5i;

    .line 22517
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A02:J

    .line 22518
    invoke-interface {v4, v8}, Lcom/facebook/ads/redexgen/X/pF;->AGi(Lcom/facebook/ads/redexgen/X/5i;)J

    move-result-wide v2

    .line 22519
    .local v11, "resolvedLength":J
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ml;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/Ml;-><init>()V

    .line 22520
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v7, v0, v13

    if-nez v7, :cond_8

    cmp-long v8, v2, v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_6

    sget-object v7, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "AihO48tXyqmUqd3oId9EAGnNfKcJ6kuS"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-eqz v8, :cond_8

    .line 22521
    :goto_5
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22522
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    add-long/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    if-eqz v8, :cond_8

    goto :goto_5

    :cond_7
    sget-object v7, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "iUSWGyHOgLgD9ZjfpDxtLA9tGfi2lrY2"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    invoke-static {v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Ml;->A00(Lcom/facebook/ads/redexgen/X/Ml;J)Lcom/facebook/ads/redexgen/X/Ml;

    .line 22523
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8B;->A0C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22524
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    .line 22525
    iget-object v1, v10, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    .line 22526
    .local v3, "isRedirected":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "aty3owKlrPhsH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_b

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    :goto_6
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01(Lcom/facebook/ads/redexgen/X/Ml;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Ml;

    .line 22527
    .end local v3    # "isRedirected":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8B;->A0D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22528
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, v15, v5}, Lcom/facebook/ads/redexgen/X/MP;->A4E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 22529
    :cond_a
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    invoke-direct {v6, v15, v0}, Lcom/facebook/ads/redexgen/X/8B;->A08(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22530
    return-void

    .line 22531
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 22532
    .end local v6    # "nextSpan":Lcom/facebook/ads/redexgen/X/MZ;
    .end local v7    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    :cond_c
    iget-boolean v3, v7, Lcom/facebook/ads/redexgen/X/MZ;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    goto/16 :goto_3

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "u32inRltH66jjh9yXIb3cYFcwSkjtAHW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_f

    .line 22533
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/MZ;->A03:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 22534
    .local v6, "fileUri":Landroid/net/Uri;
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/MZ;->A02:J

    .line 22535
    .local v7, "filePositionOffset":J
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    sub-long/2addr v2, v4

    .line 22536
    .local v10, "positionInFile":J
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    sub-long/2addr v0, v2

    .line 22537
    .local v12, "length":J
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v12, v8, v13

    if-eqz v12, :cond_e

    .line 22538
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 22539
    :cond_e
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/5i;->A04()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v8

    .line 22540
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/5f;->A06(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v8

    .line 22541
    invoke-virtual {v8, v4, v5}, Lcom/facebook/ads/redexgen/X/5f;->A05(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v4

    .line 22542
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/5f;->A04(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v2

    .line 22543
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->A03(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A09:Lcom/facebook/ads/redexgen/X/ML;

    .line 22544
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5f;->A07(Lcom/facebook/ads/redexgen/X/ML;)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    .line 22545
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A09()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v8

    .line 22546
    .local v14, "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/8B;->A0D:Lcom/facebook/ads/redexgen/X/pF;

    .line 22547
    .end local v7    # "filePositionOffset":J
    .end local v10    # "positionInFile":J
    .end local v12    # "length":J
    .local v6, "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    goto/16 :goto_2

    .line 22548
    .end local v6    # "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    .end local v14    # "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    :cond_f
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/MZ;->A04()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22549
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22550
    .local v6, "length":J
    :cond_10
    :goto_7
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/5i;->A04()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v4

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    .line 22551
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->A04(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    .line 22552
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/5f;->A03(J)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A09:Lcom/facebook/ads/redexgen/X/ML;

    .line 22553
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5f;->A07(Lcom/facebook/ads/redexgen/X/ML;)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    .line 22554
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A09()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v8

    .line 22555
    .local v8, "nextDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0E:Lcom/facebook/ads/redexgen/X/pF;

    if-eqz v0, :cond_12

    .line 22556
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/8B;->A0E:Lcom/facebook/ads/redexgen/X/pF;

    .local v10, "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    goto/16 :goto_2

    .line 22557
    .end local v6    # "length":J
    :cond_11
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/MZ;->A01:J

    .line 22558
    .restart local v6    # "length":J
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v4, v0, v13

    if-eqz v4, :cond_10

    .line 22559
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_7

    .line 22560
    .end local v10    # "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    :cond_12
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    .line 22561
    .restart local v10    # "nextDataSource":Lcom/facebook/ads/redexgen/X/pF;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/MP;->AHg(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 22562
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 22563
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    :cond_13
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0J:Z

    if-eqz v0, :cond_14

    .line 22564
    :try_start_1
    iget-object v14, v6, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    move-wide/from16 v18, v0

    move-wide/from16 v16, v2

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/MP;->AKA(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/MN;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v7

    .line 22565
    .restart local v0    # "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    goto/16 :goto_1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22566
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    :cond_14
    iget-object v14, v6, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    move-object v15, v15

    .end local v14
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v20, v20

    move-wide/from16 v16, v2

    move-wide/from16 v18, v0

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/MP;->AKB(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/MN;)Lcom/facebook/ads/redexgen/X/kL;

    move-result-object v7

    goto/16 :goto_1

    .line 22567
    :cond_15
    sget-object v20, Lcom/facebook/ads/redexgen/X/MN;->A06:Lcom/facebook/ads/redexgen/X/MN;

    goto/16 :goto_0

    .line 22568
    :catchall_0
    move-exception v1

    .line 22569
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A03()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 22570
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/MP;->AHg(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 22571
    :cond_16
    throw v1

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22572
    .end local v0    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 22573
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A07(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22575
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22576
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ml;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Ml;-><init>()V

    .line 22577
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ml;->A00(Lcom/facebook/ads/redexgen/X/Ml;J)Lcom/facebook/ads/redexgen/X/Ml;

    .line 22578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/MP;->A4E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ml;)V

    .line 22579
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    :cond_0
    return-void
.end method

.method private A08(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 22580
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A0D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22581
    return-void

    .line 22582
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ml;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ml;-><init>()V

    .line 22583
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/Ml;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 22584
    .local v1, "isRedirected":Z
    if-eqz v0, :cond_2

    .line 22585
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8B;->A0N:[Ljava/lang/String;

    const-string v1, "HwBuIJEC6JIKumxqgSDJ0pUKIwQFYzQv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1FgFIXgVQckXZ73NbznNhujKeCbi6Slt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Ml;->A01(Lcom/facebook/ads/redexgen/X/Ml;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Ml;

    goto :goto_0

    .line 22586
    :cond_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01(Lcom/facebook/ads/redexgen/X/Ml;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Ml;

    .line 22587
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/MP;->A4E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ml;)V

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/MM; {:try_start_0 .. :try_end_0} :catch_0

    .line 22588
    :catch_0
    move-exception v4

    .line 22589
    .local v2, "e":Lcom/facebook/ads/redexgen/X/MM;
    const/16 v2, 0xf

    const/16 v1, 0x58

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8B;->A02(III)Ljava/lang/String;

    move-result-object v3

    .line 22590
    .local v3, "message":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8B;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22591
    .end local v2    # "e":Lcom/facebook/ads/redexgen/X/MM;
    .end local v3    # "message":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private A09(Ljava/lang/Throwable;)V
    .locals 1

    .line 22592
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/MM;

    if-eqz v0, :cond_1

    .line 22593
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0C:Z

    .line 22594
    :cond_1
    return-void
.end method

.method private A0A()Z
    .locals 2

    .line 22595
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B()Z
    .locals 2

    .line 22596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0D:Lcom/facebook/ads/redexgen/X/pF;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C()Z
    .locals 1

    .line 22597
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A0B()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0D()Z
    .locals 2

    .line 22598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0E:Lcom/facebook/ads/redexgen/X/pF;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E()Lcom/facebook/ads/redexgen/X/MP;
    .locals 1

    .line 22599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/MY;
    .locals 1

    .line 22600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0I:Lcom/facebook/ads/redexgen/X/MY;

    return-object v0
.end method

.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 22601
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0D:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 22603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 22604
    return-void
.end method

.method public final A8t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 22605
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0F:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A8t()Ljava/util/Map;

    move-result-object v0

    .line 22607
    :goto_0
    return-object v0

    .line 22608
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 22609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 11
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "usage of fbDataSpecExtension and the check for isInitSegment"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22610
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0I:Lcom/facebook/ads/redexgen/X/MY;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/MY;->A4l(Lcom/facebook/ads/redexgen/X/5i;)Ljava/lang/String;

    move-result-object v1

    .line 22611
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5i;->A04()Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5f;->A09()Lcom/facebook/ads/redexgen/X/5i;

    move-result-object v7

    .line 22612
    .local v1, "requestDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/8B;->A08:Lcom/facebook/ads/redexgen/X/5i;

    .line 22613
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8B;->A01(Lcom/facebook/ads/redexgen/X/MP;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    .line 22614
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    .line 22615
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/ML;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A09:Lcom/facebook/ads/redexgen/X/ML;

    .line 22616
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8B;->A00(Lcom/facebook/ads/redexgen/X/5i;)I

    move-result v2

    .line 22617
    .local v2, "reason":I
    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0B:Z

    .line 22618
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0B:Z

    .line 22619
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0B:Z

    const-wide/16 v9, 0x0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_7

    .line 22620
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22621
    .restart local p4
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ML;->A08:I

    if-gtz v0, :cond_6

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A07:Lcom/facebook/ads/redexgen/X/ML;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ML;->A07:I

    if-gtz v0, :cond_6

    .line 22622
    .local v3, "isInitSegment":Z
    :goto_2
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 22623
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    .line 22624
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    .line 22625
    :goto_3
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22626
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    .line 22627
    :cond_3
    invoke-direct {p0, v7, v8, v6}, Lcom/facebook/ads/redexgen/X/8B;->A06(Lcom/facebook/ads/redexgen/X/5i;ZZ)V

    .line 22628
    :cond_4
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_8

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    goto :goto_4

    .line 22629
    :cond_5
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    .line 22630
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 22631
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A0G:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/MP;->A7S(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mk;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00(Lcom/facebook/ads/redexgen/X/Mk;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22632
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 22633
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    .line 22634
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v9

    if-ltz v2, :cond_9

    goto :goto_1

    .line 22635
    :cond_8
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    :goto_4
    return-wide v0

    .line 22636
    :cond_9
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/5b;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5b;-><init>(I)V

    .end local p4
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22637
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "requestDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    .end local v2    # "reason":I
    .end local v3    # "isInitSegment":Z
    :catchall_0
    move-exception v0

    .line 22638
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8B;->A09(Ljava/lang/Throwable;)V

    .line 22639
    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A08:Lcom/facebook/ads/redexgen/X/5i;

    .line 22641
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Landroid/net/Uri;

    .line 22642
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    .line 22643
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A04()V

    .line 22644
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A03()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22645
    :catchall_0
    move-exception v0

    .line 22646
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8B;->A09(Ljava/lang/Throwable;)V

    .line 22647
    throw v0

    .line 22648
    :goto_0
    return-void
.end method

.method public final read([BII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22649
    move-object/from16 v7, p0

    move-object v7, v7

    const/4 v5, 0x0

    move/from16 v6, p3

    if-nez v6, :cond_0

    .line 22650
    return v5

    .line 22651
    :cond_0
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    const/4 v14, -0x1

    const-wide/16 v15, 0x0

    cmp-long v2, v0, v15

    if-nez v2, :cond_1

    .line 22652
    return v14

    .line 22653
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A08:Lcom/facebook/ads/redexgen/X/5i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/5i;

    .line 22654
    .local v3, "requestDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A07:Lcom/facebook/ads/redexgen/X/5i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/5i;

    .line 22655
    .local v4, "currentDataSpec":Lcom/facebook/ads/redexgen/X/5i;
    :try_start_0
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A01:J

    cmp-long v8, v2, v0

    if-ltz v8, :cond_2

    .line 22656
    const/4 v0, 0x1

    invoke-direct {v7, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/8B;->A06(Lcom/facebook/ads/redexgen/X/5i;ZZ)V

    .line 22657
    :cond_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A06:Lcom/facebook/ads/redexgen/X/pF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move/from16 v9, p2

    move-object/from16 v11, p1

    invoke-interface {v0, v11, v9, v6}, Lcom/facebook/ads/redexgen/X/2c;->read([BII)I

    move-result v8

    .line 22658
    .local v8, "bytesRead":I
    const-wide/16 v12, -0x1

    if-eq v8, v14, :cond_4

    .line 22659
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/8B;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22660
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A04:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A04:J

    .line 22661
    :cond_3
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A03:J

    .line 22662
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A02:J

    int-to-long v0, v8

    add-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A02:J

    .line 22663
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v0, v1, v12

    if-eqz v0, :cond_8

    .line 22664
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    int-to-long v0, v8

    sub-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    goto :goto_0

    .line 22665
    :cond_4
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/8B;->A0C()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v2, v0, v12

    if-eqz v2, :cond_5

    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/8B;->A02:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v10, v2, v0

    if-gez v10, :cond_6

    .line 22666
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/8B;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 22667
    :cond_6
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    cmp-long v2, v0, v15

    if-gtz v2, :cond_7

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/8B;->A00:J

    const-wide/16 v12, -0x1

    cmp-long v2, v0, v12

    if-nez v2, :cond_8

    .line 22668
    :cond_7
    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/8B;->A03()V

    .line 22669
    invoke-direct {v7, v4, v5, v5}, Lcom/facebook/ads/redexgen/X/8B;->A06(Lcom/facebook/ads/redexgen/X/5i;ZZ)V

    .line 22670
    invoke-virtual {v7, v11, v9, v6}, Lcom/facebook/ads/redexgen/X/8B;->read([BII)I

    move-result v0

    return v0

    .line 22671
    :cond_8
    :goto_0
    return v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22672
    .end local v8    # "bytesRead":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 22673
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/8B;->A09(Ljava/lang/Throwable;)V

    .line 22674
    throw v0
.end method
