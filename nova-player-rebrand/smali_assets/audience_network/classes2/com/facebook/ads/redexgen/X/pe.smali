.class public final Lcom/facebook/ads/redexgen/X/pe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pe;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/pg;

.field public final A01:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3415
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pe;->A04:Ljava/lang/String;

    .line 3416
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pe;->A03:Ljava/lang/String;

    .line 3417
    new-instance v0, Lcom/facebook/ads/redexgen/X/pf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pf;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pe;->A02:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104496
    .local p2, "trackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104497
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104498
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v1, v0, :cond_1

    .line 104499
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    .line 104500
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/BP;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    .line 104501
    return-void

    .line 104502
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pe;
    .locals 3

    .line 104503
    sget-object v0, Lcom/facebook/ads/redexgen/X/pe;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 104504
    .local v0, "trackGroupBundle":Landroid/os/Bundle;
    sget-object v0, Lcom/facebook/ads/redexgen/X/pg;->A06:Lcom/facebook/ads/redexgen/X/23;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/23;->A6f(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/pg;

    .line 104505
    .local v1, "mediaTrackGroup":Lcom/facebook/ads/redexgen/X/pg;
    sget-object v0, Lcom/facebook/ads/redexgen/X/pe;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 104506
    .local v2, "tracks":[I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/As;->A09([I)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/pe;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pe;-><init>(Lcom/facebook/ads/redexgen/X/pg;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 104507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/pg;->A02:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104508
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 104509
    return v3

    .line 104510
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 104511
    .end local v2
    :cond_1
    return v2

    .line 104512
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/pe;

    .line 104513
    .local v2, "that":Lcom/facebook/ads/redexgen/X/pe;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 104514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pg;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
