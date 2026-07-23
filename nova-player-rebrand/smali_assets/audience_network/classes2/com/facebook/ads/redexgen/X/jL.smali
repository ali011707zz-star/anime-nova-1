.class public final enum Lcom/facebook/ads/redexgen/X/jL;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/jL;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PREALLOCATE",
        "RENDERER",
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

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:Lcom/facebook/ads/redexgen/X/Ac;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/jL;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/jL;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/jL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2980
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rZXWte666DrLsHPXoqDaJnENYxWgqi71"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qMs7Jpkjo6B4WXMo8buLNP4YVnGGOO84"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YRIecdWAq5cWjgqhOuL8Ww5BoTNcrIze"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AByNt8kh1UJ42iFdWHQ9AlvMpeOzBj1N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TtlAFxYjvYaGMd2rBwLXiq144cixnhml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0tQELiow6fswCTTeRUqvQMculdEzTfkG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bUbYkP8pksg9sIq7o6TggR0molp8Rj4l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BmPEJaYEGSD1ZlHIDmqiSE8I7JHRaK4U"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jL;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jL;->A01()V

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jL;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/jL;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/jL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jL;->A04:Lcom/facebook/ads/redexgen/X/jL;

    .line 2981
    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jL;->A00(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/jL;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/jL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jL;->A05:Lcom/facebook/ads/redexgen/X/jL;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jL;->A02()[Lcom/facebook/ads/redexgen/X/jL;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jL;->A03:[Lcom/facebook/ads/redexgen/X/jL;

    sget-object v0, Lcom/facebook/ads/redexgen/X/jL;->A03:[Lcom/facebook/ads/redexgen/X/jL;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qd;->A01([Ljava/lang/Enum;)Lcom/facebook/ads/redexgen/X/Ac;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jL;->A02:Lcom/facebook/ads/redexgen/X/Ac;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/jL;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/jL;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jL;->A01:[Ljava/lang/String;

    const-string v1, "OpZAEcbarzEwXZVKbMNcbnzwzo5b5CZv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K81mqq1BRjiJt0SW846JOs7Zv9TlCW8P"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jL;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x4t
        -0x11t
        -0x15t
        -0xat
        -0xat
        -0x7t
        -0x13t
        -0x15t
        -0x2t
        -0x11t
        -0x3ft
        -0x4ct
        -0x43t
        -0x4dt
        -0x4ct
        -0x3ft
        -0x4ct
        -0x3ft
    .end array-data
.end method

.method public static final synthetic A02()[Lcom/facebook/ads/redexgen/X/jL;
    .locals 5

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/jL;

    sget-object v3, Lcom/facebook/ads/redexgen/X/jL;->A04:Lcom/facebook/ads/redexgen/X/jL;

    sget-object v2, Lcom/facebook/ads/redexgen/X/jL;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/jL;->A01:[Ljava/lang/String;

    const-string v1, "Fkm6UCeGNRQRi4wWDBIOpvvd9TujRbQP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    aput-object v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/jL;->A05:Lcom/facebook/ads/redexgen/X/jL;

    const/4 v0, 0x1

    aput-object v1, v4, v0

    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/jL;
    .locals 1

    const-class v0, Lcom/facebook/ads/redexgen/X/jL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 88251
    check-cast v0, Lcom/facebook/ads/redexgen/X/jL;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/jL;
    .locals 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/jL;->A03:[Lcom/facebook/ads/redexgen/X/jL;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 88252
    check-cast v0, [Lcom/facebook/ads/redexgen/X/jL;

    return-object v0
.end method
