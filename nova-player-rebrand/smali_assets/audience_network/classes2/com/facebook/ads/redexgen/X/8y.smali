.class public final Lcom/facebook/ads/redexgen/X/8y;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteException"
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8y;->A01()V

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/qI;Z)V
    .locals 4

    .line 23366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8y;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23367
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/8y;->A02:Z

    .line 23368
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8y;->A00:I

    .line 23369
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8y;->A01:Lcom/facebook/ads/redexgen/X/qI;

    .line 23370
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8y;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

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

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8y;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        0x1at
        0x9t
        0xet
        0x14t
        -0x7t
        0x17t
        0x6t
        0x8t
        0x10t
        -0x3bt
        0x1ct
        0x17t
        0xet
        0x19t
        0xat
        -0x3bt
        0xbt
        0x6t
        0xet
        0x11t
        0xat
        0x9t
        -0x21t
        -0x3bt
    .end array-data
.end method
