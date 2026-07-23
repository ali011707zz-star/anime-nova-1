.class public final Lcom/facebook/ads/redexgen/X/AH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/datasource/PriorityDataSource$Factory;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/3d;

.field public final A02:Lcom/facebook/ads/redexgen/X/pF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AH;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/3d;I)V
    .locals 1

    .line 28972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28973
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pF;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/pF;

    .line 28974
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:Lcom/facebook/ads/redexgen/X/3d;

    .line 28975
    iput p3, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:I

    .line 28976
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AH;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

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

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AH;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x0t
        -0xct
        -0xat
        -0xat
        -0xbt
        -0x20t
        0x3t
        -0x1bt
        -0x7t
        0x3t
        0x0t
        0x8t
    .end array-data
.end method


# virtual methods
.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 28977
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/pF;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 28979
    return-void
.end method

.method public final A8t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A8t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 28981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->A9P()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28982
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/pF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pF;->close()V

    .line 28984
    return-void
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28985
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AH;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
