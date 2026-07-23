.class public final Landroidx/core/view/TreeIterator;
.super Ljava/lang/Object;
.source "ViewGroup.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final getChildIterator:Lkotlin/jvm/functions/Function1;

.field private iterator:Ljava/util/Iterator;

.field private final stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Landroidx/core/view/TreeIterator;->getChildIterator:Lkotlin/jvm/functions/Function1;

    .line 148
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/core/view/TreeIterator;->stack:Ljava/util/List;

    .line 150
    iput-object p1, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private final prepareNextIterator(Ljava/lang/Object;)V
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/core/view/TreeIterator;->getChildIterator:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/core/view/TreeIterator;->stack:Ljava/util/List;

    iget-object v1, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iput-object p1, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    return-void

    .line 172
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/TreeIterator;->stack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Landroidx/core/view/TreeIterator;->stack:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    .line 177
    iget-object p1, p0, Landroidx/core/view/TreeIterator;->stack:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Landroidx/core/view/TreeIterator;->prepareNextIterator(Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
