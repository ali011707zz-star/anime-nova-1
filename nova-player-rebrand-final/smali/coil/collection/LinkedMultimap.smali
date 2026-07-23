.class public final Lcoil/collection/LinkedMultimap;
.super Ljava/lang/Object;
.source "LinkedMultimap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/collection/LinkedMultimap$LinkedEntry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/HashMap;

.field private final head:Lcoil/collection/LinkedMultimap$LinkedEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcoil/collection/LinkedMultimap$LinkedEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcoil/collection/LinkedMultimap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method private final insertEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 87
    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    return-void
.end method

.method private final makeHead(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcoil/collection/LinkedMultimap;->removeEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 71
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {p1, v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 72
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 73
    invoke-direct {p0, p1}, Lcoil/collection/LinkedMultimap;->insertEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    return-void
.end method

.method private final makeTail(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcoil/collection/LinkedMultimap;->removeEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 79
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 80
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {p1, v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 81
    invoke-direct {p0, p1}, Lcoil/collection/LinkedMultimap;->insertEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    return-void
.end method

.method private final removeEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 93
    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    invoke-virtual {p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    return-void
.end method


# virtual methods
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->entries:Ljava/util/HashMap;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-direct {v1, p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcoil/collection/LinkedMultimap;->makeTail(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 117
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    check-cast v1, Lcoil/collection/LinkedMultimap$LinkedEntry;

    .line 19
    invoke-virtual {v1, p2}, Lcoil/collection/LinkedMultimap$LinkedEntry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 3

    .line 33
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    .line 35
    :goto_0
    iget-object v1, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcoil/collection/LinkedMultimap;->removeEntry(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 41
    iget-object v1, p0, Lcoil/collection/LinkedMultimap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final removeLast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 24
    iget-object v0, p0, Lcoil/collection/LinkedMultimap;->entries:Ljava/util/HashMap;

    .line 121
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-direct {v1, p1}, Lcoil/collection/LinkedMultimap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    check-cast v1, Lcoil/collection/LinkedMultimap$LinkedEntry;

    .line 27
    invoke-direct {p0, v1}, Lcoil/collection/LinkedMultimap;->makeHead(Lcoil/collection/LinkedMultimap$LinkedEntry;)V

    .line 28
    invoke-virtual {v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "LinkedMultimap( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-virtual {v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    iget-object v2, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x7b

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Lcoil/collection/LinkedMultimap$LinkedEntry;->getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcoil/collection/LinkedMultimap;->head:Lcoil/collection/LinkedMultimap$LinkedEntry;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
