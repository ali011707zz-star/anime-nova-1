.class public final Lcom/facebook/ads/redexgen/X/jJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatingEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$CreatingEvent;",
        "",
        "timeMs",
        "",
        "isVideo",
        "",
        "codecName",
        "",
        "source",
        "Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;",
        "<init>",
        "(JZLjava/lang/String;Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;)V",
        "getTimeMs",
        "()J",
        "()Z",
        "getCodecName",
        "()Ljava/lang/String;",
        "getSource",
        "()Lcom/facebook/video/heroplayer/exocustom/MediaCodecPoolTracker$Source;",
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
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/jL;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2979
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FdJsnjKhTHlRRZJsIFJWfCFzDWj0EqEQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oDI6LLqtxTHYYroBPkpD1FGx8rMeQ43n"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nlfwyCf1dimp0Krp16vrJ7MqKa9LBcpB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eJAHNFq1OwqAaXsvDo9s6AkeG9akNcus"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1DIZmXcKgSC14jfFcgqN4PxJzEVkuxyt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jm4JVeQO5B6WQGQYARoPg9oMTbSP82vf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cNIPfDtzZYrRRS6cyr8Z3qTZk6c2gOD8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3wJHcoy4TgbkzWEHR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jJ;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jJ;->A01()V

    return-void
.end method

.method public constructor <init>(JZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v1, 0x6

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jJ;->A00:J

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/jJ;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jJ;->A02:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/jJ;->A01:Lcom/facebook/ads/redexgen/X/jL;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/jJ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/jJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/jJ;->A05:[Ljava/lang/String;

    const-string v1, "eLKf7avg3Muh8C7yGH81adsNP2b5Zl22"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Hs4ShvoKAnPy3QOup7XkprNsl61FjOhV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 p1, v0, 0x25

    sget-object v2, Lcom/facebook/ads/redexgen/X/jJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/jJ;->A05:[Ljava/lang/String;

    const-string v1, "pmIQjq0HOs5rGfK0IVnzbRqQA9jP3AeW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "UvIaysu1mB6kOnFi13Y0WsJ66WIV2xdb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jJ;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x7at
        0x76t
        0x7dt
        0x7ct
        0x7at
        0x57t
        0x78t
        0x74t
        0x7ct
        0x59t
        0x45t
        0x5ft
        0x58t
        0x49t
        0x4ft
    .end array-data
.end method
