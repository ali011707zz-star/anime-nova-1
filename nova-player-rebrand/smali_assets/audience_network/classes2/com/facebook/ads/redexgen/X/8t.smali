.class public final Lcom/facebook/ads/redexgen/X/8t;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationException"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/qI;

.field public final A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8t;->A01()V

    return-void
.end method

.method public constructor <init>(IIIILcom/facebook/ads/redexgen/X/qI;ZLjava/lang/Exception;I)V
    .locals 5
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS"
        }
        value = "D23918943: Monitor the audio track usage"
    .end annotation

    .line 23328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    const/16 v1, 0x17

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0x44

    const/4 v1, 0x7

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0x2b

    const/4 v1, 0x2

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0xf

    const/16 v1, 0x1c

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 23329
    if-eqz p6, :cond_0

    const/4 v2, 0x1

    const/16 v1, 0xe

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23330
    invoke-direct {p0, v0, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23331
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8t;->A00:I

    .line 23332
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/8t;->A02:Z

    .line 23333
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/8t;->A01:Lcom/facebook/ads/redexgen/X/qI;

    .line 23334
    return-void

    .line 23335
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8t;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

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

    const/16 v0, 0x4b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8t;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x7ft
        0x77t
        0x2dt
        0x3at
        0x3ct
        0x30t
        0x29t
        0x3at
        0x2dt
        0x3et
        0x3dt
        0x33t
        0x3at
        0x76t
        0x7bt
        0x7et
        0x72t
        0x3ct
        0x27t
        0x3ft
        0x1dt
        0x34t
        0x13t
        0x27t
        0x36t
        0x3bt
        0x3dt
        0x6t
        0x20t
        0x33t
        0x31t
        0x39t
        0x13t
        0x3et
        0x3et
        0x3dt
        0x31t
        0x33t
        0x26t
        0x37t
        0x36t
        0x6ft
        0x2at
        0x26t
        0x56t
        0x62t
        0x73t
        0x7et
        0x78t
        0x43t
        0x65t
        0x76t
        0x74t
        0x7ct
        0x37t
        0x7et
        0x79t
        0x7et
        0x63t
        0x37t
        0x71t
        0x76t
        0x7et
        0x7bt
        0x72t
        0x73t
        0x37t
        0x2ct
        0x0t
        0x1t
        0x9t
        0x6t
        0x8t
        0x47t
    .end array-data
.end method
