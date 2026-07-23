.class public final Lcom/facebook/ads/redexgen/X/J5;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/d4;->A0H(Lcom/facebook/ads/redexgen/X/4A;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d4;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4A;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/d4;Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 42166
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J5;->A00:Lcom/facebook/ads/redexgen/X/d4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J5;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/J5;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/J5;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x67t
        -0x34t
        -0x43t
        -0x43t
        -0x44t
        -0x37t
        -0x40t
        -0x3bt
        -0x42t
        0x77t
        -0x40t
        -0x3bt
        -0x45t
        -0x44t
        -0x43t
        -0x40t
        -0x3bt
        -0x40t
        -0x35t
        -0x44t
        -0x3dt
        -0x30t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 42167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J5;->A00:Lcom/facebook/ads/redexgen/X/d4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d4;->A01(Lcom/facebook/ads/redexgen/X/d4;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J5;->A00:Lcom/facebook/ads/redexgen/X/d4;

    .line 42168
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d4;->A01(Lcom/facebook/ads/redexgen/X/d4;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J5;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 42169
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/J5;->A00:Lcom/facebook/ads/redexgen/X/d4;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/d4;->A0G(Lcom/facebook/ads/redexgen/X/d4;Ljava/lang/String;)V

    .line 42170
    :cond_0
    return-void
.end method
