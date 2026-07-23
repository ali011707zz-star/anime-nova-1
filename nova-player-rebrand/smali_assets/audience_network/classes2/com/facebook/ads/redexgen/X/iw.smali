.class public final Lcom/facebook/ads/redexgen/X/iw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7g;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public final synthetic A03:J

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/7g;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/Tu;

.field public final synthetic A06:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2970
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HqViDmZKE9gqowyTLi9oGTmraxBLxdfb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZDhLRf5Uu21mhR1h1Q7a0O5z7jEhSu9k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2GbaqYyT8OuzZpNttfxCN9qv1cIIYzBc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fbbf2hOViPWoQMO0MuifN9tE3LO9hSeI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DwEg34XuIOHddfNq0Duo86gfWbmgRcX4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GcZc2s8wIoPvhyGTdTaWZVIVIYLPtEuL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AIVK7lVsrhvQj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0MZsasdmKrVN6CPRKwrl3lR9QzLAtIP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iw;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7g;Ljava/lang/Runnable;JLcom/facebook/ads/redexgen/X/Tu;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87652
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iw;->A06:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/iw;->A03:J

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/iw;->A05:Lcom/facebook/ads/redexgen/X/Tu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A02:Z

    .line 87654
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A01:Z

    .line 87655
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A00:Z

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iw;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iw;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x7dt
        -0x70t
        -0x70t
        -0x73t
        -0x70t
        -0x3bt
        -0x35t
        -0x41t
    .end array-data
.end method


# virtual methods
.method public final AEv(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 3

    .line 87656
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A00:Z

    if-nez v0, :cond_1

    .line 87657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A00:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 87658
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const-string v1, "A302cEzPVYQXumyZNbB7zeSxM9mEDz6J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iw;->A05:Lcom/facebook/ads/redexgen/X/Tu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Ty;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A03(Lcom/facebook/ads/redexgen/X/Ty;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7g;->A04(Lcom/facebook/ads/redexgen/X/7g;Ljava/util/List;Ljava/util/Map;)V

    .line 87659
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_2

    .line 87660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N2;->A0C()V

    .line 87661
    :cond_2
    return-void
.end method

.method public final AEw(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 5

    .line 87662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eq p1, v0, :cond_0

    .line 87663
    return-void

    .line 87664
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iw;->A06:Ljava/lang/Runnable;

    sget-object v1, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const-string v1, "XfIEhebH8X778eyni9LsSDQR6QKL4f9o"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    .line 87666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N2;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87667
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A02:Z

    if-nez v0, :cond_2

    .line 87668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A02:Z

    .line 87669
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A03:J

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/7g;->A02(Lcom/facebook/ads/redexgen/X/7g;J)Ljava/util/Map;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_3

    .line 87670
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/iw;->A08:[Ljava/lang/String;

    const-string v1, "6CdPuG9VNNO8hZ7pQWbBuknU9qSrspmw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "JYrF77GwPBrAhOPn8MtwFVV4pu279MHz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iw;->A05:Lcom/facebook/ads/redexgen/X/Tu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ty;->A04:Lcom/facebook/ads/redexgen/X/Ty;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A03(Lcom/facebook/ads/redexgen/X/Ty;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/7g;->A04(Lcom/facebook/ads/redexgen/X/7g;Ljava/util/List;Ljava/util/Map;)V

    .line 87671
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEx(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 3

    .line 87672
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A01:Z

    if-nez v0, :cond_0

    .line 87673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A01:Z

    .line 87674
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iw;->A05:Lcom/facebook/ads/redexgen/X/Tu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/Ty;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A03(Lcom/facebook/ads/redexgen/X/Ty;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7g;->A04(Lcom/facebook/ads/redexgen/X/7g;Ljava/util/List;Ljava/util/Map;)V

    .line 87675
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0O()V

    .line 87676
    return-void
.end method

.method public final AEz(Lcom/facebook/ads/redexgen/X/ju;Lcom/facebook/ads/redexgen/X/Vm;)V
    .locals 5

    .line 87677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    if-eq p1, v0, :cond_0

    .line 87678
    return-void

    .line 87679
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A06:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/j0;->A0Q(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87681
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A02:Z

    if-nez v0, :cond_1

    .line 87682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A02:Z

    .line 87683
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A03:J

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/7g;->A02(Lcom/facebook/ads/redexgen/X/7g;J)Ljava/util/Map;

    move-result-object v4

    .line 87684
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 87685
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87686
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87687
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iw;->A05:Lcom/facebook/ads/redexgen/X/Tu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ty;->A04:Lcom/facebook/ads/redexgen/X/Ty;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A03(Lcom/facebook/ads/redexgen/X/Ty;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/7g;->A04(Lcom/facebook/ads/redexgen/X/7g;Ljava/util/List;Ljava/util/Map;)V

    .line 87688
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iw;->A04:Lcom/facebook/ads/redexgen/X/7g;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87689
    return-void
.end method
