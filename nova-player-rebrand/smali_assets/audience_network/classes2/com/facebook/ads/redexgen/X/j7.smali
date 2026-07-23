.class public final Lcom/facebook/ads/redexgen/X/j7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StickerTrackType"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/ImfDataTrack$StickerTrackType;",
        "",
        "mStickerType",
        "",
        "mStickerAssetId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2977
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UaYcJDGxQyaZYV7vRv1nPrflhYMBWqQe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6yYvkhfbIG9oN01QKIOx9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TeUZgJzSwWL81PBp6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "205jmoWHsbHcJl4QFaaCvtd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NFAExz9NEdor6lQkpg8BD3N5DW6Xy44K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QZaiBJjrvYgY5dxzbw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBiw2bgKjDo5EjxpOMDObbhcrDI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qkjfNEnz7dbj0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/j7;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/j7;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xf

    const/16 v1, 0xc

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/j7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j7;->A01:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/j7;->A00:Ljava/lang/String;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/j7;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/j7;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/j7;->A03:[Ljava/lang/String;

    const-string v1, "9uDvm5O3I8RCic4D8S6P5ptdUUAijK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/j7;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/j7;->A03:[Ljava/lang/String;

    const-string v1, "JRltFSleplkDTMCU5v"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ayXcNP7Oa4FMyjQsHUKYa"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-byte p1, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/j7;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x18t
        0x39t
        0x2et
        0x28t
        0x30t
        0x2at
        0x37t
        0x6t
        0x38t
        0x38t
        0x2at
        0x39t
        0xet
        0x29t
        0x48t
        0x2et
        0x4ft
        0x44t
        0x3et
        0x46t
        0x40t
        0x4dt
        0x2ft
        0x54t
        0x4bt
        0x40t
    .end array-data
.end method
