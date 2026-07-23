.class public final Lcom/facebook/ads/redexgen/X/CD;
.super Lcom/facebook/ads/redexgen/X/jM;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/jc;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016J(\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/NoOpMediaCodecPoolTracker;",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker;",
        "<init>",
        "()V",
        "reportCodecCreated",
        "",
        "creatingEvent",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$CreatingEvent;",
        "codecInstanceId",
        "",
        "reportCodecReleasing",
        "source",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;",
        "reportCodecReleased",
        "reportCodecAcquiredFromPool",
        "isVideo",
        "",
        "codecName",
        "",
        "reportCodecReturnedToPool",
        "Companion",
        "fbandroid.java.com.facebook.video.heroplayer.exocustom.exocustom"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:Lcom/facebook/ads/redexgen/X/jc;

.field public static final A02:Lcom/facebook/ads/redexgen/X/CD;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CD;->A01()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/jc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jc;-><init>(Lcom/facebook/ads/redexgen/X/qZ;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CD;->A01:Lcom/facebook/ads/redexgen/X/jc;

    .line 674
    new-instance v0, Lcom/facebook/ads/redexgen/X/CD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/CD;->A02:Lcom/facebook/ads/redexgen/X/CD;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31977
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jM;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CD;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

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

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CD;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x28t
        0x23t
        0x22t
        0x24t
        0x9t
        0x26t
        0x2at
        0x22t
        0x9t
        0x18t
        0xft
        0xbt
        0x1et
        0x3t
        0x4t
        0xdt
        0x2ft
        0x1ct
        0xft
        0x4t
        0x1et
        0x54t
        0x48t
        0x52t
        0x55t
        0x44t
        0x42t
    .end array-data
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/jJ;I)V
    .locals 3

    const/16 v2, 0x9

    const/16 v1, 0xd

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31978
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/jL;I)V
    .locals 3

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31979
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/jL;I)V
    .locals 3

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31980
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/jL;I)V
    .locals 3

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31981
    return-void
.end method

.method public final A0A(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31982
    return-void
.end method
