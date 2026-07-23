.class public final Lcom/facebook/ads/redexgen/X/LX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/cache/config/CacheFileData$CacheFileExtension;,
        Lcom/facebook/ads/cache/config/CacheFileData$Builder;
    }
.end annotation


# static fields
.field public static A0B:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/lang/Integer;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/lang/String;

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LX;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LX;)V
    .locals 3

    .line 50424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50425
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A04:Ljava/lang/String;

    .line 50426
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 50427
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 50428
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A09:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A09:Ljava/lang/String;

    .line 50429
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A08:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A08:Ljava/lang/String;

    .line 50430
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A06:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A06:Ljava/lang/String;

    .line 50431
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A07:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A07:Ljava/lang/String;

    .line 50432
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A02:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A02:Ljava/lang/Integer;

    .line 50433
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 50434
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A0A:Z

    .line 50435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 50436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50437
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A04:Ljava/lang/String;

    .line 50438
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 50439
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 50440
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LX;->A09:Ljava/lang/String;

    .line 50441
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LX;->A08:Ljava/lang/String;

    .line 50442
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LX;->A06:Ljava/lang/String;

    .line 50443
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LX;->A07:Ljava/lang/String;

    .line 50444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A02:Ljava/lang/Integer;

    .line 50445
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 50446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A0A:Z

    .line 50447
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 50448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50449
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A04:Ljava/lang/String;

    .line 50450
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 50451
    iput v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 50452
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LX;->A09:Ljava/lang/String;

    .line 50453
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LX;->A08:Ljava/lang/String;

    .line 50454
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LX;->A06:Ljava/lang/String;

    .line 50455
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/LX;->A07:Ljava/lang/String;

    .line 50456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LX;->A02:Ljava/lang/Integer;

    .line 50457
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 50458
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/LX;->A0A:Z

    .line 50459
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LX;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

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

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LX;->A0B:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x33t
        0x30t
        0x33t
        0x34t
        0x3ct
        0x33t
    .end array-data
.end method
