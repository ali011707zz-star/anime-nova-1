.class public final Lcom/facebook/ads/redexgen/X/Yx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6o;->A00(Lcom/facebook/ads/redexgen/X/E9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6o;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2542
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JeM6kmZAAg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yJwYoPJztMSqfbMPjoq6sPzsNl0d2Qkw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1vq6MwLSZBl2WPzhpozbGLZi9rrad1f9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vjzuY9RuACrmk67MWB8bQQLqhnnjvlnw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kHeV6GAm5S3szdTA016nUt4W7GUOLctP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rR76lLTsWYWDKlm4eMbeJOmHt8WwoEDS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9YmMINBhFsFgZ71fMaPUEV5EHdzCcqYn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "A0SJ2dkt1ZSdfCokN2Yc1r5dcbPSTFSd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yx;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74614
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yx;->A00:Lcom/facebook/ads/redexgen/X/6o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yx;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x1f

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yx;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yx;->A02:[Ljava/lang/String;

    const-string v1, "mB4Y7S7yqXGV2GUhso5SlG9iabxazBAS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yx;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x5t
        0x8t
        0x9t
        0x3t
        0x3ct
        0x0t
        0xdt
        0x15t
        0xet
        0xdt
        0xft
        0x7t
        0x29t
        0x1et
        0x1et
        0x3t
        0x1et
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

    .line 74615
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yx;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Yx;->A00:Lcom/facebook/ads/redexgen/X/6o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6o;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A02(Lcom/facebook/ads/redexgen/X/6g;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0b(I)V

    .line 74616
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Yx;->A00:Lcom/facebook/ads/redexgen/X/6o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6o;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Oq;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3a(Ljava/lang/String;)V

    .line 74617
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Yx;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
