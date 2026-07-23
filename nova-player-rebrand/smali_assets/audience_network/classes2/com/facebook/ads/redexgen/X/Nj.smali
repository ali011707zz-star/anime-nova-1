.class public final Lcom/facebook/ads/redexgen/X/Nj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ni;
    }
.end annotation


# static fields
.field public static A04:[B = null

.field public static final serialVersionUID:J = 0x4e149b77709aff1L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nj;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 1

    .line 54666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54667
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ni;->A00(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A02:Ljava/lang/String;

    .line 54668
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ni;->A01(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A03:Ljava/lang/String;

    .line 54669
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ni;->A02(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:Ljava/lang/String;

    .line 54670
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ni;->A03(Lcom/facebook/ads/redexgen/X/Ni;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A01:Ljava/lang/String;

    .line 54671
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Ni;Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 54672
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Ni;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nj;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 54673
    const/4 v2, 0x1

    const/16 v1, 0xa

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 54674
    .local v0, "updatedString":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A00(III)Ljava/lang/String;

    move-result-object p0

    .line 54675
    .local v1, "quantityString":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 54676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54677
    :cond_0
    const/16 v2, 0xb

    const/16 v1, 0xa

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nj;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x7ct
        -0x2t
        -0x1at
        -0x8t
        -0xbt
        -0xbt
        -0x18t
        -0xft
        -0x1at
        -0x4t
        0x0t
        -0x24t
        -0x2et
        -0x2at
        -0x3et
        -0x31t
        -0x2bt
        -0x36t
        -0x2bt
        -0x26t
        -0x22t
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 54678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 54679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 54680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A06(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 54681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A03:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nj;->A01(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
