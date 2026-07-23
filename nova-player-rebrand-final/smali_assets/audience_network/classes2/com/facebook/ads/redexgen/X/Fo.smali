.class public final Lcom/facebook/ads/redexgen/X/Fo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoFrameProcessorManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fn;
    }
.end annotation


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Landroid/os/Handler;

.field public A05:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcom/facebook/ads/redexgen/X/4z;",
            ">;"
        }
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/pW;

.field public A08:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/4H;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/10;

.field public final A0D:Lcom/facebook/ads/redexgen/X/G7;

.field public final A0E:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/qI;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A0F:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 740
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rW72zgk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C1hEbBxBlhumPMJNbyjIrBXoyDOZyeey"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZkENgJUqZtwNap1lTYBK5Tw9wBrPiUY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8fmzsEm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wrUw6R"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UNvp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7vU7fZKotBGMTNV66wYbOo96IVt1XuHJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PSHPw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fo;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G7;Lcom/facebook/ads/redexgen/X/10;Z)V
    .locals 3

    .line 36201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36202
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0D:Lcom/facebook/ads/redexgen/X/G7;

    .line 36203
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36204
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0F:Ljava/util/ArrayDeque;

    .line 36205
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0E:Ljava/util/ArrayDeque;

    .line 36206
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A00:I

    .line 36207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A09:Z

    .line 36208
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A02:J

    .line 36209
    sget-object v0, Lcom/facebook/ads/redexgen/X/pW;->A06:Lcom/facebook/ads/redexgen/X/pW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A07:Lcom/facebook/ads/redexgen/X/pW;

    .line 36210
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A03:J

    .line 36211
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A01:J

    .line 36212
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0G:Z

    .line 36213
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Fo;)Landroid/util/Pair;
    .locals 0

    .line 36214
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fo;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fo;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x3dt
        0x3dt
        0x3et
        0x26t
        0x7ct
        0x37t
        0x23t
        0x30t
        0x3ct
        0x34t
        0x7ct
        0x35t
        0x23t
        0x3et
        0x21t
        0x6at
        0x7bt
        0x6ct
        0x68t
        0x7dt
        0x6ct
        0x2et
        0x24t
        0x3dt
        0x3bt
        0x20t
        0x2ct
        0x2et
        0x3ft
        0x2t
        0x25t
        0x3bt
        0x3et
        0x3ft
        0x18t
        0x3et
        0x39t
        0x2dt
        0x2at
        0x28t
        0x2et
        0x2bt
        0x29t
        0x38t
        0x1ct
        0x29t
        0x22t
        0x28t
        0x25t
        0x22t
        0x2bt
        0x5t
        0x22t
        0x3ct
        0x39t
        0x38t
        0xat
        0x3et
        0x2dt
        0x21t
        0x29t
        0xft
        0x23t
        0x39t
        0x22t
        0x38t
        0x5ft
        0x48t
        0x41t
        0x48t
        0x4ct
        0x5et
        0x48t
        0x6bt
        0x7ct
        0x77t
        0x7dt
        0x7ct
        0x6bt
        0x56t
        0x6ct
        0x6dt
        0x69t
        0x6ct
        0x6dt
        0x5ft
        0x6bt
        0x78t
        0x74t
        0x7ct
        0x7bt
        0x6dt
        0x7ct
        0x41t
        0x66t
        0x78t
        0x7dt
        0x7ct
        0x4et
        0x7at
        0x69t
        0x65t
        0x6dt
        0x41t
        0x66t
        0x6et
        0x67t
        0x59t
        0x4ft
        0x5et
        0x65t
        0x5ft
        0x5et
        0x5at
        0x5ft
        0x5et
        0x79t
        0x5ft
        0x58t
        0x4ct
        0x4bt
        0x49t
        0x4ft
        0x63t
        0x44t
        0x4ct
        0x45t
    .end array-data
.end method

.method private A03(JZ)V
    .locals 3

    .line 36215
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36216
    const/16 v2, 0x4a

    const/16 v1, 0x11

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(J)Z
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "The threshold here is non configurable and too low. Our renderer stalls and gets stuck if this is too strict"
    .end annotation

    .line 36217
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1w:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36218
    const-wide/32 v1, 0xc350

    cmp-long v0, p0, v1

    if-lez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 36219
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/jY;->A08:Lcom/facebook/ads/redexgen/X/jY;

    .line 36220
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A00(Lcom/facebook/ads/redexgen/X/jY;)I

    move-result v3

    .line 36221
    .local v0, "releaseUpperThresholdUs":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/jY;->A07:Lcom/facebook/ads/redexgen/X/jY;

    .line 36222
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A00(Lcom/facebook/ads/redexgen/X/jY;)I

    move-result v0

    .line 36223
    .local v3, "releaseLowerThresholdUs":I
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 36224
    int-to-long v1, v0

    cmp-long v0, p0, v1

    if-lez v0, :cond_2

    int-to-long v1, v3

    cmp-long v0, p0, v1

    if-gez v0, :cond_2

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 36225
    :cond_3
    return v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Fo;Z)Z
    .locals 0

    .line 36226
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A09:Z

    return p1
.end method


# virtual methods
.method public final A06(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 3

    .line 36227
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36228
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/10;->A06(Lcom/facebook/ads/redexgen/X/10;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    .line 36229
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36230
    :cond_0
    return-object p1
.end method

.method public final A07()Landroid/view/Surface;
    .locals 3

    .line 36231
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b

    const/16 v1, 0xf

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A08()V
    .locals 3

    .line 36232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x6c

    const/16 v1, 0x14

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A09()V
    .locals 3

    .line 36233
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36234
    const/16 v2, 0x16

    const/4 v1, 0x5

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0A()V
    .locals 3

    .line 36235
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x43

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0B(JJ)V
    .locals 30

    .line 36236
    move-object/from16 v4, p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36237
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 36238
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AE;->A9A()I

    move-result v1

    const/4 v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v1, v0, :cond_0

    const/16 v23, 0x1

    .line 36239
    .local v15, "isStarted":Z
    :goto_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0F:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 36240
    .local v16, "framePresentationTimeUs":J
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Fo;->A01:J

    add-long v0, v24, v2

    .line 36241
    .local v8, "bufferPresentationTimeUs":J
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const-wide/16 v12, 0x3e8

    mul-long v19, v19, v12

    .line 36243
    move-wide/from16 v5, p1

    move-wide v15, v5

    .end local v8    # "bufferPresentationTimeUs":J
    .local v20, "bufferPresentationTimeUs":J
    move-wide/from16 v17, p3

    move-wide/from16 v21, v0

    invoke-static/range {v14 .. v23}, Lcom/facebook/ads/redexgen/X/10;->A05(Lcom/facebook/ads/redexgen/X/10;JJJJZ)J

    move-result-wide v2

    sget-object v11, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v10, v11, v9

    const/4 v9, 0x0

    aget-object v9, v11, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v10, v9, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36244
    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    .line 36245
    .local v1, "earlyUs":J
    :cond_1
    sget-object v11, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    const-string v10, "zEUSzuL7Up6U8aHJ"

    const/4 v9, 0x5

    aput-object v10, v11, v9

    iget-boolean v9, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0A:Z

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0F:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    if-ne v9, v8, :cond_2

    const/4 v7, 0x1

    .line 36246
    .local v9, "isLastFrame":Z
    :cond_2
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    invoke-static {v8, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/10;->A0t(Lcom/facebook/ads/redexgen/X/10;JJ)Z

    move-result v11

    sget-object v9, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v9, v9, v8

    const/16 v8, 0xe

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x56

    if-eq v9, v8, :cond_3

    .line 36247
    .local v10, "shouldReleaseFrameImmediately":Z
    sget-object v10, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    const-string v9, "eRnKdqaDWBmFpsVDZSVpTPvjw20fr8gH"

    const/4 v8, 0x6

    aput-object v9, v10, v8

    if-eqz v11, :cond_4

    .line 36248
    :goto_1
    const-wide/16 v0, -0x1

    invoke-direct {v4, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/Fo;->A03(JZ)V

    .line 36249
    const/4 v0, 0x0

    throw v0

    .line 36250
    .local v10, "shouldReleaseFrameImmediately":Z
    :cond_3
    sget-object v10, Lcom/facebook/ads/redexgen/X/Fo;->A0I:[Ljava/lang/String;

    const-string v9, "KJC5Qjc"

    const/4 v8, 0x3

    aput-object v9, v10, v8

    const-string v9, "siyL2Ka"

    const/4 v8, 0x0

    aput-object v9, v10, v8

    if-eqz v11, :cond_4

    goto :goto_1

    .line 36251
    :cond_4
    if-eqz v23, :cond_5

    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/10;->A04(Lcom/facebook/ads/redexgen/X/10;)J

    move-result-wide v9

    cmp-long v8, v5, v9

    if-nez v8, :cond_6

    .line 36252
    .end local v20    # "bufferPresentationTimeUs":J
    .restart local v13
    :cond_5
    return-void

    .line 36253
    :cond_6
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Fo;->A04(J)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 36254
    .end local v1    # "earlyUs":J
    .end local v9    # "isLastFrame":Z
    .end local v10    # "shouldReleaseFrameImmediately":Z
    .end local v13
    .end local v15    # "isStarted":Z
    .end local v16    # "framePresentationTimeUs":J
    :cond_7
    return-void

    .line 36255
    :cond_8
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0D:Lcom/facebook/ads/redexgen/X/G7;

    .end local v20
    .local v13, "bufferPresentationTimeUs":J
    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/G7;->A0G(J)V

    .line 36256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    mul-long/2addr v2, v12

    add-long/2addr v5, v2

    .line 36257
    .local v6, "unadjustedFrameReleaseTimeNs":J
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0D:Lcom/facebook/ads/redexgen/X/G7;

    .line 36258
    invoke-virtual {v2, v5, v6}, Lcom/facebook/ads/redexgen/X/G7;->A0B(J)J

    move-result-wide v2

    .line 36259
    .local v4, "adjustedFrameReleaseTimeNs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v9, v2, v5

    div-long/2addr v9, v12

    .line 36260
    .end local v1
    .local v20, "earlyUs":J
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .end local v4    # "adjustedFrameReleaseTimeNs":J
    .local v1, "adjustedFrameReleaseTimeNs":J
    .end local v6    # "unadjustedFrameReleaseTimeNs":J
    .local v18, "unadjustedFrameReleaseTimeNs":J
    move-object v8, v5

    move-wide/from16 v11, v17

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/10;->A28(JJZ)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 36261
    const-wide/16 v0, -0x2

    invoke-direct {v4, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/Fo;->A03(JZ)V

    .line 36262
    const/4 v0, 0x0

    throw v0

    .line 36263
    :cond_9
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0E:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0E:Ljava/util/ArrayDeque;

    .line 36264
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v0, v8

    if-lez v5, :cond_a

    .line 36265
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0E:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A05:Landroid/util/Pair;

    .line 36266
    :cond_a
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Fo;->A05:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/qI;

    const/16 v29, 0x0

    .end local v1    # "adjustedFrameReleaseTimeNs":J
    .restart local v4    # "adjustedFrameReleaseTimeNs":J
    .end local v4    # "adjustedFrameReleaseTimeNs":J
    .local v22, "adjustedFrameReleaseTimeNs":J
    move-wide/from16 v26, v2

    move-object/from16 v28, v5

    move-object/from16 v23, v6

    invoke-static/range {v23 .. v29}, Lcom/facebook/ads/redexgen/X/10;->A0e(Lcom/facebook/ads/redexgen/X/10;JJLcom/facebook/ads/redexgen/X/qI;Landroid/media/MediaFormat;)V

    .line 36267
    iget-wide v8, v4, Lcom/facebook/ads/redexgen/X/Fo;->A03:J

    cmp-long v5, v8, v0

    if-ltz v5, :cond_b

    .line 36268
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Fo;->A03:J

    .line 36269
    .end local v22    # "adjustedFrameReleaseTimeNs":J
    .restart local v1    # "adjustedFrameReleaseTimeNs":J
    :cond_b
    invoke-direct {v4, v2, v3, v7}, Lcom/facebook/ads/redexgen/X/Fo;->A03(JZ)V

    .line 36270
    .end local v1    # "adjustedFrameReleaseTimeNs":J
    .end local v9
    .end local v10
    .end local v13    # "bufferPresentationTimeUs":J
    .end local v15
    .end local v16
    .end local v18    # "unadjustedFrameReleaseTimeNs":J
    .end local v20    # "earlyUs":J
    const/4 v0, 0x0

    throw v0
.end method

.method public final A0C(Landroid/view/Surface;Lcom/facebook/ads/redexgen/X/4z;)V
    .locals 3

    .line 36271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 36272
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/4z;

    .line 36273
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/4z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36274
    return-void

    .line 36275
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    .line 36276
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36278
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4z;->A03()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4z;->A02()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/50;-><init>(Landroid/view/Surface;II)V

    .line 36279
    const/16 v2, 0x6c

    const/16 v1, 0x14

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36280
    :cond_1
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 3

    .line 36281
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4I;-><init>(II)V

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A02:F

    .line 36282
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A00(F)Lcom/facebook/ads/redexgen/X/4I;

    move-result-object v0

    .line 36283
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4I;->A01()Lcom/facebook/ads/redexgen/X/4J;

    .line 36284
    const/16 v2, 0x5b

    const/16 v1, 0x11

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E(Ljava/lang/String;)V
    .locals 2

    .line 36285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36286
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/10;->A06(Lcom/facebook/ads/redexgen/X/10;)Landroid/content/Context;

    move-result-object v1

    .line 36287
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A09(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A00:I

    .line 36288
    return-void
.end method

.method public final A0F(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4H;",
            ">;)V"
        }
    .end annotation

    .line 36289
    .local p1, "videoEffects":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/util/Effect;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 36290
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36291
    return-void

    .line 36292
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 36293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36294
    return-void
.end method

.method public final A0G()Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "SR video effects for AV1"
    .end annotation

    .line 36295
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36296
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/10;->A0s(Lcom/facebook/ads/redexgen/X/10;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 36297
    :goto_0
    return v0

    .line 36298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 2

    .line 36299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/ads/redexgen/X/4z;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 36300
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0B:Z

    return v0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/qI;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 36301
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fo;->A0G()Z

    move-result v1

    const/4 v0, 0x1

    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 36302
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A09:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 36303
    return v2

    .line 36304
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 36305
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Fo;->A09:Z

    .line 36306
    return v2

    .line 36307
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A0Y()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A04:Landroid/os/Handler;

    .line 36308
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    .line 36309
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/10;->A26(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;

    .line 36310
    .local v0, "inputAndOutputColorInfos":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/ColorInfo;Lcom/facebook/ads/androidx/media3/common/ColorInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/10;->A0j()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    if-eqz v0, :cond_2

    .line 36311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0F:I

    int-to-float v0, v0

    .line 36312
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fn;->A00(F)Lcom/facebook/ads/redexgen/X/4H;

    const/4 v0, 0x0

    .line 36313
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 36314
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fn;->A01()Lcom/facebook/ads/redexgen/X/5E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    .line 36315
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/10;->A06(Lcom/facebook/ads/redexgen/X/10;)Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36316
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A04:Landroid/os/Handler;

    .line 36317
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9N;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/n4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/n4;-><init>(Lcom/facebook/ads/redexgen/X/Fo;)V

    .line 36318
    const/16 v2, 0x10

    const/4 v1, 0x6

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36319
    :catch_0
    move-exception v2

    .line 36320
    .local v1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A0C:Lcom/facebook/ads/redexgen/X/10;

    const/16 v0, 0x1b58

    invoke-static {v1, v2, p1, v0}, Lcom/facebook/ads/redexgen/X/10;->A09(Lcom/facebook/ads/redexgen/X/10;Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;I)Lcom/facebook/ads/redexgen/X/AD;

    move-result-object v0

    throw v0
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/qI;JZ)Z
    .locals 3

    .line 36321
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36322
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fo;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 36323
    const/16 v2, 0x2a

    const/16 v1, 0x19

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fo;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
