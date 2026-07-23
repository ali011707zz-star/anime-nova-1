.class public final Lcom/facebook/ads/redexgen/X/d2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5m;->A02(Lcom/facebook/ads/redexgen/X/E9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5m;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2679
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cNFcWbBTlC21yVLFwbr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9GV2E8F9E2oE8CHXfnhYKiZsDK3egbEW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QOwDSeu1r9UmOYKCJ4q7pu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wLxLWw50lPgC4sAeZiCwv7pW84ixD2Ig"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u8mrTBG1NeFkrttZ2j0LSs7yOPehuw8f"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R35JTbeYnLlLSORxODVCOg1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dSDMu8RDcGvfG7f91Jn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vgGOrZScmi2DEwHan2nQobkknD6iF2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/d2;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/d2;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79444
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/5m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/d2;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/d2;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x46t
        0x4bt
        0x4at
        0x40t
        0x7ft
        0x43t
        0x4et
        0x56t
        0x4dt
        0x4et
        0x4ct
        0x44t
        0x6at
        0x5dt
        0x5dt
        0x40t
        0x5dt
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 79445
    .local v0, "this":Lcom/facebook/ads/redexgen/X/d2;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/5m;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/redexgen/X/d4;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/d4;->A0G(Lcom/facebook/ads/redexgen/X/d4;Ljava/lang/String;)V

    .line 79446
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/d2;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/d2;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/d2;->A02:[Ljava/lang/String;

    const-string v1, "BiobfU8eOeDJTRwO1wDdFp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4fmLJ7Dm7W0RRBNKueLwAfq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void
.end method
