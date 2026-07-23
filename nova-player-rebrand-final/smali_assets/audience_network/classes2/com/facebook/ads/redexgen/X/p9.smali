.class public abstract Lcom/facebook/ads/redexgen/X/p9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterators$ArrayItr;,
        Lcom/facebook/ads/redexgen/X/p7;,
        Lcom/google/common/collect/Iterators$ConcatenatedIterator;,
        Lcom/facebook/ads/redexgen/X/BN;,
        Lcom/google/common/collect/Iterators$PeekingImpl;,
        Lcom/google/common/collect/Iterators$MergingIterator;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3344
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "K5wWXkn1kn3vTm5TWZRpAJ13TGij4Off"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "na1woSjLgBJfLtqhSRSkwOGg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PhLAgNdVWkw0DSh4SzNoPunxC5fhlr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P2EphC6Qbo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AgH7SjrpzHTBb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6lZG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iuGyz0SG3T5uD6f3liiVpcsGpl9NN6eU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8JXy4no7J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/p9;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/p9;->A08()V

    return-void
.end method

.method public static A00(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TT;>;)I"
        }
    .end annotation

    .line 103958
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/p9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A05(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103959
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103960
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 103961
    .local v1, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103962
    return v1

    .line 103963
    .end local v1    # "current":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103964
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/redexgen/X/2I;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unfiltered",
            "retainIfTrue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TT;>;)",
            "Lcom/facebook/ads/redexgen/X/4C<",
            "TT;>;"
        }
    .end annotation

    .line 103965
    .local p0, "unfiltered":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "retainIfTrue":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103966
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103967
    new-instance v0, Lcom/facebook/ads/redexgen/X/2I;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/2I;-><init>(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)V

    return-object v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/p7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 103968
    sget-object v0, Lcom/facebook/ads/redexgen/X/p7;->A03:Lcom/facebook/ads/redexgen/X/p7;

    return-object v0
.end method

.method public static A03(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BN;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/ads/redexgen/X/4C<",
            "TT;>;"
        }
    .end annotation

    .line 103969
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/BN;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static A04(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103970
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103971
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 103972
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 103973
    return-object v0

    .line 103974
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A05(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 103975
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103976
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103977
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103978
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103979
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103980
    return-object v1

    .line 103981
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static A06(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 103982
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/p9;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/p9;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x43t
        -0x41t
        -0x4et
        -0x4ft
        -0x4at
        -0x50t
        -0x52t
        -0x3ft
        -0x4et
    .end array-data
.end method

.method public static A09(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 103983
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103984
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103985
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103986
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 103987
    :cond_0
    return-void
.end method

.method public static A0A(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "addTo",
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 103988
    .local p0, "addTo":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103989
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103990
    const/4 v1, 0x0

    .line 103991
    .local v0, "wasModified":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103992
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    .line 103993
    :cond_0
    return v1
.end method

.method public static A0B(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 103994
    .local p2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p3, "predicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/p9;->A00(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)I

    move-result p1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A0C(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/kj;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "removeFrom",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/kj<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 103995
    .local v2, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p0, "predicate":Lcom/facebook/ads/redexgen/X/kj;, "Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103996
    const/4 v1, 0x0

    .line 103997
    .local v0, "modified":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103998
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/kj;->A4C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103999
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/p9;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104000
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/p9;->A01:[Ljava/lang/String;

    const-string v1, "wI9B4C2he"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x1

    goto :goto_0

    .line 104001
    :cond_2
    return v1
.end method

.method public static A0D(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2
    .param p0    # Ljava/util/Iterator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104002
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 104003
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104004
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104005
    return v1

    .line 104006
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104007
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104008
    return v1

    .line 104009
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static A0E(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "removeFrom",
            "elementsToRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 104010
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104011
    const/4 v1, 0x0

    .line 104012
    .local v0, "result":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104013
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104014
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 104015
    const/4 v1, 0x1

    goto :goto_0

    .line 104016
    :cond_1
    return v1
.end method

.method public static A0F(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator1",
            "iterator2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 104017
    .local p1, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p2, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104018
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 104019
    return v2

    .line 104020
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 104021
    .local v0, "o1":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104022
    .local v2, "o2":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104023
    return v2

    .line 104024
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
