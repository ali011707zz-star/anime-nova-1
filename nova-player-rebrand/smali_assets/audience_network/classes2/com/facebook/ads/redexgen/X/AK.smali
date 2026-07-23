.class public Lcom/facebook/ads/redexgen/X/AK;
.super Lcom/facebook/ads/redexgen/X/p5;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "non-final in Fb vs final in Exo since TigonDataSource uses FailoverStreamDryException that extends this exception"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidResponseCodeException"
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AK;->A02()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/5i;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/facebook/ads/redexgen/X/5i;",
            "[B)V"
        }
    .end annotation

    .line 28992
    .local p5, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AK;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7d4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p5

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    .line 28993
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    .line 28994
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AK;->A01:Ljava/lang/String;

    .line 28995
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/AK;->A02:Ljava/util/Map;

    .line 28996
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/AK;->A03:[B

    .line 28997
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AK;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x65

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AK;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x27t
        0x31t
        0x32t
        0x2dt
        0x2ct
        0x31t
        0x27t
        0x62t
        0x21t
        0x2dt
        0x26t
        0x27t
        0x78t
        0x62t
    .end array-data
.end method
