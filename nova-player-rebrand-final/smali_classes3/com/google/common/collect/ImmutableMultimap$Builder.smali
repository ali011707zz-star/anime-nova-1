.class public abstract Lcom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field builderMap:Ljava/util/Map;

.field expectedValuesPerKey:I

.field keyComparator:Ljava/util/Comparator;

.field valueComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 168
    iput v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->expectedValuesPerKey:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMultimap;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    .line 368
    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;->fromMapBuilderEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method ensureBuilderMapNonNull()Ljava/util/Map;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/google/common/collect/Platform;->preservesInsertionOrderOnPutsMap()Ljava/util/Map;

    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method newValueCollectionBuilderWithExpectedSize(I)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 194
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2

    .line 238
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->ensureBuilderMapNonNull()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection$Builder;

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->expectedValuesPerKey:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->newValueCollectionBuilderWithExpectedSize(I)Lcom/google/common/collect/ImmutableCollection$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->ensureBuilderMapNonNull()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method
