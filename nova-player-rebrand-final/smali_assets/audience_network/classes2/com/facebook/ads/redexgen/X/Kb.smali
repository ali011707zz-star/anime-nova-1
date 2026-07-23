.class public final Lcom/facebook/ads/redexgen/X/Kb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0I:[B


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Landroid/text/Layout$Alignment;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Removed parameter in r2.18"
    .end annotation
.end field

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kb;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47742
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A01(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0B:Ljava/lang/String;

    .line 47743
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0C:Ljava/lang/String;

    .line 47744
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0E:Ljava/util/Set;

    .line 47745
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0D:Ljava/lang/String;

    .line 47746
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0A:Ljava/lang/String;

    .line 47747
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0H:Z

    .line 47748
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0G:Z

    .line 47749
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A06:I

    .line 47750
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A08:I

    .line 47751
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A02:I

    .line 47752
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A05:I

    .line 47753
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A04:I

    .line 47754
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Kb;->A09:Landroid/text/Layout$Alignment;

    .line 47755
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A07:I

    .line 47756
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0F:Z

    .line 47757
    return-void
.end method

.method public static A00(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 47758
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 47759
    :cond_0
    return p0

    .line 47760
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int v1, p0, p3

    :cond_2
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kb;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kb;->A0I:[B

    return-void

    :array_0
    .array-data 1
        -0x46t
        -0x27t
        -0x25t
        -0x1dt
        -0x21t
        -0x16t
        -0x19t
        -0x13t
        -0x1at
        -0x24t
        -0x68t
        -0x25t
        -0x19t
        -0x1ct
        -0x19t
        -0x16t
        -0x68t
        -0x1at
        -0x19t
        -0x14t
        -0x68t
        -0x24t
        -0x23t
        -0x22t
        -0x1ft
        -0x1at
        -0x23t
        -0x24t
        -0x5at
        -0x68t
        -0x3ft
        -0x40t
        -0x3at
        0x72t
        -0x4bt
        -0x3ft
        -0x42t
        -0x3ft
        -0x3ct
        0x72t
        -0x40t
        -0x3ft
        -0x3at
        0x72t
        -0x4at
        -0x49t
        -0x48t
        -0x45t
        -0x40t
        -0x49t
        -0x4at
    .end array-data
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 47761
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A00:F

    return v0
.end method

.method public final A04()I
    .locals 3

    .line 47762
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0G:Z

    if-eqz v0, :cond_0

    .line 47763
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A01:I

    return v0

    .line 47764
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A05()I
    .locals 3

    .line 47765
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0H:Z

    if-eqz v0, :cond_0

    .line 47766
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A03:I

    return v0

    .line 47767
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0x16

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .locals 1

    .line 47768
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A04:I

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 47769
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A07:I

    return v0
.end method

.method public final A08()I
    .locals 4

    .line 47770
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A02:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A05:I

    if-ne v0, v1, :cond_0

    .line 47771
    return v1

    .line 47772
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A02:I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A05:I

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    or-int/2addr v1, v3

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 47773
    .local p3, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0C:Ljava/lang/String;

    .line 47774
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0E:Ljava/util/Set;

    .line 47775
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0D:Ljava/lang/String;

    .line 47776
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 47778
    :cond_0
    const/4 v2, 0x0

    .line 47779
    .local v0, "score":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0B:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 47780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0C:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 47781
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0D:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v2, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/Kb;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 47782
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0E:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47783
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 47784
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0E:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 47785
    return v1
.end method

.method public final A0A(F)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47786
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A00:F

    .line 47787
    return-object p0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 1

    .line 47788
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A01:I

    .line 47789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0G:Z

    .line 47790
    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 1

    .line 47791
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A03:I

    .line 47792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0H:Z

    .line 47793
    return-object p0
.end method

.method public final A0D(I)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47794
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A04:I

    .line 47795
    return-object p0
.end method

.method public final A0E(I)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47796
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A07:I

    .line 47797
    return-object p0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 1

    .line 47798
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0A:Ljava/lang/String;

    .line 47799
    return-object p0

    .line 47800
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final A0G(Z)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47801
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A02:I

    .line 47802
    return-object p0
.end method

.method public final A0H(Z)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47803
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0F:Z

    .line 47804
    return-object p0
.end method

.method public final A0I(Z)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47805
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A05:I

    .line 47806
    return-object p0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 0

    .line 47807
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A08:I

    .line 47808
    return-object p0
.end method

.method public final A0K()Ljava/lang/String;
    .locals 1

    .line 47809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0L(Ljava/lang/String;)V
    .locals 0

    .line 47810
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0B:Ljava/lang/String;

    .line 47811
    return-void
.end method

.method public final A0M(Ljava/lang/String;)V
    .locals 0

    .line 47812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0C:Ljava/lang/String;

    .line 47813
    return-void
.end method

.method public final A0N(Ljava/lang/String;)V
    .locals 0

    .line 47814
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0D:Ljava/lang/String;

    .line 47815
    return-void
.end method

.method public final A0O([Ljava/lang/String;)V
    .locals 2

    .line 47816
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0E:Ljava/util/Set;

    .line 47817
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 47818
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0F:Z

    return v0
.end method

.method public final A0Q()Z
    .locals 1

    .line 47819
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0G:Z

    return v0
.end method

.method public final A0R()Z
    .locals 1

    .line 47820
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kb;->A0H:Z

    return v0
.end method

.method public final A0S()Z
    .locals 2

    .line 47821
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0T()Z
    .locals 2

    .line 47822
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kb;->A08:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
