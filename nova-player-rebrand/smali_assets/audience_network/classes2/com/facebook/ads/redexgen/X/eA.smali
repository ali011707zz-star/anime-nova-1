.class public final Lcom/facebook/ads/redexgen/X/eA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/U2;->A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/eA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2743
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cL9KuymxmXYmG8NC9NVGcaGlfdWWeniK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nk16ts9BY6zqy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EgJ1qeWjq2zhUumNQfvGHLF4hTEd3z2y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RODoYaIjQAnjV1WNThn2vejpwKsM19Cc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "40Y1apu8pWAms0kzI1QlbJay1792dWSe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dN3sSSJjIpaTvjnI8sFpNb6rIgDjDuKA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fmvlDKN6b1IL1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7gRFv5vnh1tPqRcG4sTxqyzgIBUkam47"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/eA;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80722
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eA;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3a

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
    .locals 4

    const/16 v3, 0x2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/eA;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/eA;->A02:[Ljava/lang/String;

    const-string v1, "cTAx5t1qCw5Hmq8oguM2xeNpSThd5fgi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eA;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x2ft
        -0x33t
        -0x34t
        0x0t
        -0x11t
        -0xct
        -0x10t
        -0x7t
        -0x12t
        -0x10t
        -0x27t
        -0x10t
        -0x1t
        0x2t
        -0x6t
        -0x3t
        -0xat
        -0x5t
        0x14t
        0xbt
        0x1et
        0x16t
        0xbt
        0x9t
        0x1at
        0xbt
        0xat
        -0x3at
        0xbt
        0x18t
        0x18t
        0x15t
        0x18t
        -0x2ct
        -0x5et
        -0x4ft
        -0x60t
        -0x4et
        -0x59t
        -0x62t
        -0x4et
        -0x59t
        -0x58t
        -0x5ct
        -0x55t
        -0x5dt
    .end array-data
.end method


# virtual methods
.method public final AAx(ILjava/lang/Throwable;)V
    .locals 5

    .line 80723
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eA;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eA;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 80725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 80726
    const/16 v2, 0x22

    const/16 v1, 0xc

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eA;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 80727
    return-void
.end method
