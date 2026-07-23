.class public abstract Lcom/facebook/ads/redexgen/X/9j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nE;


# instance fields
.field public A00:I

.field public A01:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1742"
    .end annotation
.end field

.field public final A02:I

.field public final A03:[J

.field public final A04:[Lcom/facebook/ads/redexgen/X/qI;

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/pg;

.field public final A07:[I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pg;[II)V
    .locals 4

    .line 25608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25609
    array-length v0, p2

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 25610
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9j;->A02:I

    .line 25611
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A06:Lcom/facebook/ads/redexgen/X/pg;

    .line 25612
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    .line 25613
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/qI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    .line 25614
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_1

    .line 25615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    aput-object v0, v1, v2

    .line 25616
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25617
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25618
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EV;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 25619
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    .line 25620
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    if-ge v2, v0, :cond_2

    .line 25621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/pg;->A07(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    aput v0, v1, v2

    .line 25622
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25623
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A03:[J

    .line 25624
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9j;->A01:Z

    .line 25625
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 0

    .line 25626
    iget p1, p1, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iget p0, p0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public A5x()V
    .locals 0

    .line 25627
    return-void
.end method

.method public A6K()V
    .locals 0

    .line 25628
    return-void
.end method

.method public final A8B(I)Lcom/facebook/ads/redexgen/X/qI;
    .locals 1

    .line 25629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A8H(I)I
    .locals 1

    .line 25630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A92()Lcom/facebook/ads/redexgen/X/qI;
    .locals 2

    .line 25631
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A04:[Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/nE;->A93()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A9L()Lcom/facebook/ads/redexgen/X/pg;
    .locals 1

    .line 25632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A06:Lcom/facebook/ads/redexgen/X/pg;

    return-object v0
.end method

.method public final AA6(I)I
    .locals 2

    .line 25633
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A05:I

    if-ge v1, v0, :cond_1

    .line 25634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 25635
    return v1

    .line 25636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25637
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public AFJ(F)V
    .locals 0

    .line 25638
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 25639
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 25640
    return v3

    .line 25641
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 25642
    .end local v2
    :cond_1
    return v2

    .line 25643
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/9j;

    .line 25644
    .local v2, "other":Lcom/facebook/ads/redexgen/X/9j;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A06:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9j;->A06:Lcom/facebook/ads/redexgen/X/pg;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

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

    .line 25645
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A00:I

    if-nez v0, :cond_0

    .line 25646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A06:Lcom/facebook/ads/redexgen/X/pg;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9j;->A00:I

    .line 25647
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A00:I

    return v0
.end method

.method public final length()I
    .locals 1

    .line 25648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9j;->A07:[I

    array-length v0, v0

    return v0
.end method
