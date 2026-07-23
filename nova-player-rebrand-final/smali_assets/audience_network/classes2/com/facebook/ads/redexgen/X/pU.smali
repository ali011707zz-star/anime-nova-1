.class public abstract Lcom/facebook/ads/redexgen/X/pU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Lists$OnePlusArrayList;,
        Lcom/google/common/collect/Lists$TwoPlusArrayList;,
        Lcom/google/common/collect/Lists$TransformingRandomAccessList;,
        Lcom/google/common/collect/Lists$TransformingSequentialList;,
        Lcom/google/common/collect/Lists$RandomAccessPartition;,
        Lcom/google/common/collect/Lists$Partition;,
        Lcom/google/common/collect/Lists$StringAsImmutableList;,
        Lcom/google/common/collect/Lists$CharSequenceAsList;,
        Lcom/google/common/collect/Lists$ReverseList;,
        Lcom/google/common/collect/Lists$RandomAccessReverseList;,
        Lcom/google/common/collect/Lists$AbstractListWrapper;,
        Lcom/google/common/collect/Lists$RandomAccessListWrapper;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3370
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WYbfQWuNAjMhMignGLPBKOO7t37dd6pm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aU7tMP21nVkp4lxoHIMaaJjXF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KfRhaqKZcjkewaNyxSPNTetlEHftSMTF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LloEdWhimr4Sj9kwGGxmGk8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZUp1YfD37WiDDWuGnJxBVJeZNuRjo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b9uampRf3yYNP3BKa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TYkujE9wMI8l0e1bGcChqn19YW9nXTi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MiH9fLUFy6MgEc5RrTOKVqlzeB7MpQo7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pU;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 104253
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 104254
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/pU;->A02(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 104255
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 104256
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104257
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104258
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0

    .line 104259
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 104260
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 104261
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/pU;->A03(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 104262
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 104263
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104264
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104265
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0

    .line 104266
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A02(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 104267
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 104268
    .local v0, "size":I
    if-nez p1, :cond_1

    .line 104269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 104270
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104271
    return v1

    .line 104272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104273
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 104274
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104275
    return v1

    .line 104276
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104277
    .end local v1    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/util/List;Ljava/lang/Object;)I
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 104278
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_2

    .line 104279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/pU;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/pU;->A00:[Ljava/lang/String;

    const-string v1, "sSXsk6OcN1QGC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 104280
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104281
    return v0

    .line 104282
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104283
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 104284
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104285
    return v1

    .line 104286
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 104287
    .end local v0    # "i":I
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static A04()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 104288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static A05(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 104289
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pU;->A04()Ljava/util/ArrayList;

    move-result-object v0

    .line 104290
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/p9;->A0A(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 104291
    return-object v0
.end method

.method public static A06(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thisList",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104292
    .local p0, "thisList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x1

    if-ne p1, v0, :cond_0

    .line 104293
    return v6

    .line 104294
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 104295
    return v5

    .line 104296
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 104297
    .local v0, "otherList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 104298
    .local v3, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 104299
    return v5

    .line 104300
    :cond_2
    instance-of v4, p0, Ljava/util/RandomAccess;

    sget-object v1, Lcom/facebook/ads/redexgen/X/pU;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/pU;->A00:[Ljava/lang/String;

    const-string v1, "rcHl15RocZyTXvjAlguJbKcz1P7sPU36"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 104301
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 104302
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104303
    return v5

    .line 104304
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104305
    .end local v4    # "i":I
    :cond_4
    return v6

    .line 104306
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/p9;->A0F(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
