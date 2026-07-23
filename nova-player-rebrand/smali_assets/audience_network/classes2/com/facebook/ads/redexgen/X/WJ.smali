.class public final Lcom/facebook/ads/redexgen/X/WJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VL;->A06(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/fv;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2184
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Pvxnryfp5C2YJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "58Tt8xWVSP1vJRxeZG7By0J4DHdpZFgc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "d8fJjrUVSDGdkyzleHZclvn63G4sHX0L"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2vkexQ2kDfwHm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C5INcofoFkRix0Rm4DG2QIlt8jox4BBj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y25u3HoHlGlpJYy8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MTcvQGxX9nLrxfee4M1dH5SKsx5IsifC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WJ;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WJ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70585
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WJ;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/WJ;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/WJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WJ;->A02:[Ljava/lang/String;

    const-string v1, "YNZl3vrESdm0ZjqRAgqNuDMkNkDkDjcM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "T4MR0Bp8ShJAOBNGhRUi97nIryoGWHBS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

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

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WJ;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x38t
        0x37t
        0x7et
        0x2dt
        0x79t
        0x3dt
        0x30t
        0x2at
        0x29t
        0x38t
        0x2dt
        0x3at
        0x31t
        0x79t
        0x3at
        0x36t
        0x2ct
        0x37t
        0x2dt
        0x3ct
        0x2bt
        0x2at
        0x77t
        0x4dt
        0x60t
        0x7at
        0x79t
        0x68t
        0x7dt
        0x6at
        0x61t
        0x6ct
        0x6dt
        0x29t
        0x6at
        0x66t
        0x7ct
        0x67t
        0x7dt
        0x6ct
        0x7bt
        0x7at
        0x27t
        0x29t
        0x5bt
        0x6ct
        0x7at
        0x79t
        0x66t
        0x67t
        0x7at
        0x6ct
        0x33t
        0x29t
    .end array-data
.end method


# virtual methods
.method public final ADR(Lcom/facebook/ads/redexgen/X/fu;)V
    .locals 4

    .line 70586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WJ;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x1f

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/fu;->A73()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70588
    :cond_0
    return-void
.end method

.method public final ADq(Ljava/lang/Exception;)V
    .locals 4

    .line 70589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WJ;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70590
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VL;->A00()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70591
    :cond_0
    return-void
.end method
