.class public final Lcom/facebook/ads/redexgen/X/j8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/j6;,
        Lcom/facebook/ads/redexgen/X/j7;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\r\u000eB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack;",
        "",
        "mTrackName",
        "",
        "mStartTime",
        "",
        "mEndTime",
        "mStickerTrackType",
        "Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack$StickerTrackType;",
        "mSegmentMetadata",
        "Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack$SegmentMetadata;",
        "<init>",
        "(Ljava/lang/String;JJLcom/facebook/video/heroplayer/exocustom/ImfDataTrack$StickerTrackType;Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack$SegmentMetadata;)V",
        "StickerTrackType",
        "SegmentMetadata",
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
.field public static A05:[B


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/j6;

.field public final A03:Lcom/facebook/ads/redexgen/X/j7;

.field public final A04:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/j8;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/j7;Lcom/facebook/ads/redexgen/X/j6;)V
    .locals 3

    const/16 v2, 0x21

    const/16 v1, 0xa

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    const/16 v1, 0x11

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p7, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88115
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j8;->A04:Ljava/lang/String;

    .line 88116
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/j8;->A01:J

    .line 88117
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/j8;->A00:J

    .line 88118
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/j8;->A03:Lcom/facebook/ads/redexgen/X/j7;

    .line 88119
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/j8;->A02:Lcom/facebook/ads/redexgen/X/j6;

    .line 88120
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/j8;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

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

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/j8;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x76t
        0x40t
        0x42t
        0x48t
        0x40t
        0x4bt
        0x51t
        0x68t
        0x40t
        0x51t
        0x44t
        0x41t
        0x44t
        0x51t
        0x44t
        0x5ct
        0x62t
        0x45t
        0x58t
        0x52t
        0x5at
        0x54t
        0x43t
        0x65t
        0x43t
        0x50t
        0x52t
        0x5at
        0x65t
        0x48t
        0x41t
        0x54t
        0x1dt
        0x24t
        0x2t
        0x11t
        0x13t
        0x1bt
        0x3et
        0x11t
        0x1dt
        0x15t
    .end array-data
.end method
