.class public Lcom/facebook/ads/redexgen/X/nY;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3302
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "psRx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PaE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QiZgSeBrDq6phMoyY15Rwd7xkYcWmlyn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uVAvG1n4qY9Qm2x2Wwx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SVY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R4BVVGRseyt6VeG7R8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WLKIpS44UKGOH0fPOaMwAxdsVmPqX8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BDwHYCW9PjOYM7xnzaTutUE85f87LOy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/facebook/ads/redexgen/X/kj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unfiltered",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TE;>;)V"
        }
    .end annotation

    .line 100739
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "predicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 100740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    .line 100741
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    .line 100742
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 100743
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ki;->A0C(Z)V

    .line 100744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 100745
    .local v3, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "Kot"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "MSwZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100746
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ki;->A0C(Z)V

    .line 100747
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 100748
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 2

    .line 100749
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/p2;->A03(Ljava/lang/Iterable;Lcom/facebook/ads/redexgen/X/kj;)Z

    .line 100750
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 100751
    .local v2, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/nc;->A03(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100752
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100753
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "9iIPWTKMkBhlqzWY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 100754
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/nc;->A04(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 100755
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/p2;->A02(Ljava/lang/Iterable;Lcom/facebook/ads/redexgen/X/kj;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 100756
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/p9;->A01(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/redexgen/X/2I;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 100757
    .local v1, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nY;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "9yXQ23WyWLgHpbgnupjKfVlvAqZ13eIO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 100758
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x0

    .line 100759
    .local v0, "changed":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100760
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100762
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100763
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 100764
    const/4 v3, 0x1

    goto :goto_0

    .line 100765
    :cond_1
    return v3
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 100766
    .local v4, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local v5, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v5, 0x0

    .line 100767
    .local v0, "changed":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 100768
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "eduZnFsmDO9t4YELThQVy46ccpCSsmF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 100769
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100770
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100771
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 100772
    const/4 v5, 0x1

    goto :goto_0

    .line 100773
    :cond_1
    return v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 6

    .line 100774
    .local v4, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    const/4 v5, 0x0

    .line 100775
    .local v0, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "AcviO2YMuORzBgOxIFInwgIFg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100776
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A00:Lcom/facebook/ads/redexgen/X/kj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A02:[Ljava/lang/String;

    const-string v1, "u87jus"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 100777
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_0

    goto :goto_1

    .line 100778
    :cond_2
    return v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 100779
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nY;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pU;->A05(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 100780
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nY;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nY;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pU;->A05(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
