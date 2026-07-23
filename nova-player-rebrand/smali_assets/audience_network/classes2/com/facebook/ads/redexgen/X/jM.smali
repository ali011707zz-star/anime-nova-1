.class public abstract Lcom/facebook/ads/redexgen/X/jM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/jJ;,
        Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$ReleasingEvent;,
        Lcom/facebook/ads/redexgen/X/jL;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001:\u0003\u0017\u0018\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H&J(\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0015\u001a\u00020\u0016H\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker;",
        "",
        "<init>",
        "()V",
        "reportCodecCreating",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$CreatingEvent;",
        "isVideo",
        "",
        "codecName",
        "",
        "source",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;",
        "reportCodecCreated",
        "",
        "creatingEvent",
        "codecInstanceId",
        "",
        "reportCodecAcquiredFromPool",
        "reportCodecReturnedToPool",
        "reportCodecReleasing",
        "reportCodecReleased",
        "getNowMilliseconds",
        "",
        "Source",
        "CreatingEvent",
        "ReleasingEvent",
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


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jM;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A02()J
    .locals 2

    .line 88254
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CF;->A00()Lcom/facebook/ads/redexgen/X/CF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CF;->ACf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jM;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jM;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x54t
        -0x48t
        -0x53t
        -0x52t
        -0x54t
        -0x69t
        -0x56t
        -0x4at
        -0x52t
        0x13t
        0xft
        0x15t
        0x12t
        0x3t
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A05(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;)Lcom/facebook/ads/redexgen/X/jJ;
    .locals 6

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jM;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object v4, p2

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v1, 0x6

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jM;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object v5, p3

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88255
    new-instance v0, Lcom/facebook/ads/redexgen/X/jJ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jM;->A02()J

    move-result-wide v1

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/jJ;-><init>(JZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;)V

    return-object v0
.end method

.method public abstract A06(Lcom/facebook/ads/redexgen/X/jJ;I)V
.end method

.method public abstract A07(Lcom/facebook/ads/redexgen/X/jL;I)V
.end method

.method public abstract A08(Lcom/facebook/ads/redexgen/X/jL;I)V
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/jL;I)V
.end method

.method public abstract A0A(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;I)V
.end method
