.class final Lcoil/collection/LinkedMultimap$LinkedEntry;
.super Ljava/lang/Object;
.source "LinkedMultimap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/collection/LinkedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedEntry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private next:Lcoil/collection/LinkedMultimap$LinkedEntry;

.field private prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

.field private values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->key:Ljava/lang/Object;

    .line 100
    iput-object p0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    .line 101
    iput-object p0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNext()Lcoil/collection/LinkedMultimap$LinkedEntry;
    .locals 1

    .line 101
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-object v0
.end method

.method public final getPrev()Lcoil/collection/LinkedMultimap$LinkedEntry;
    .locals 1

    .line 100
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->values:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setNext(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->next:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method

.method public final setPrev(Lcoil/collection/LinkedMultimap$LinkedEntry;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcoil/collection/LinkedMultimap$LinkedEntry;->prev:Lcoil/collection/LinkedMultimap$LinkedEntry;

    return-void
.end method
