.class public final Lcom/facebook/ads/redexgen/X/Jh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jh;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jh;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6d

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

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jh;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x21t
    .end array-data
.end method


# virtual methods
.method public final A02([B)Lcom/facebook/ads/redexgen/X/BP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 43280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 43281
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43282
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43283
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 43284
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 43285
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 43286
    .local v2, "bundledCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/pT;->A0I:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
