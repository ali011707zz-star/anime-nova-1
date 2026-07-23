.class public final Lcom/player/easy/ui/folders/FolderAdapter;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "FolderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0008J\u001c\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0007\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0002\u0018\u00010\u0008H\u0016J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010R\u0018\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/FolderAdapter;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;",
        "fragment",
        "Lcom/player/easy/ui/folders/FoldersFragment;",
        "<init>",
        "(Lcom/player/easy/ui/folders/FoldersFragment;)V",
        "items",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "json$delegate",
        "Lkotlin/Lazy;",
        "getFolderItems",
        "Lcom/player/easy/ui/folders/FolderItem;",
        "updateDataSet",
        "",
        "indexOf",
        "",
        "item",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderAdapter.kt\ncom/player/easy/ui/folders/FolderAdapter\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,56:1\n17#2:57\n812#3,12:58\n222#4:70\n*S KotlinDebug\n*F\n+ 1 FolderAdapter.kt\ncom/player/easy/ui/folders/FolderAdapter\n*L\n18#1:57\n21#1:58,12\n31#1:70\n*E\n"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;",
            ">;"
        }
    .end annotation
.end field

.field private final json$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/player/easy/ui/folders/FoldersFragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/folders/FolderAdapter;->items:Ljava/util/List;

    .line 57
    sget-object p1, Lcom/player/easy/ui/folders/FolderAdapter$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/ui/folders/FolderAdapter$special$$inlined$injectLazy$1;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/player/easy/ui/folders/FolderAdapter;->json$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getFolderItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/folders/FolderItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderAdapter;->items:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/player/easy/ui/folders/FolderItem;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderAdapter;->json$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final indexOf(Lcom/player/easy/ui/folders/FolderItem;)I
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/player/easy/ui/folders/FolderAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public updateDataSet(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Leu/davidea/flexibleadapter/items/AbstractFlexibleItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 25
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    const-string v1, "show_inline_banner_ads_in_folders"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/player/easy/ui/folders/FolderAdapter;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/player/easy/ui/folders/RemoteBanner;->Companion:Lcom/player/easy/ui/folders/RemoteBanner$Companion;

    invoke-virtual {v2}, Lcom/player/easy/ui/folders/RemoteBanner$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/ui/folders/RemoteBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    sget-object v1, Lcom/player/easy/BuildVars;->INSTANCE:Lcom/player/easy/BuildVars;

    invoke-virtual {v1}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getHuawei_enable()Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 39
    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getShow()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/player/easy/ui/folders/RemoteBanner;->getShow()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 41
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 42
    new-instance v0, Lcom/player/easy/ui/folders/AdItem;

    invoke-direct {v0}, Lcom/player/easy/ui/folders/AdItem;-><init>()V

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_5
    new-instance v0, Lcom/player/easy/ui/folders/AdItem;

    invoke-direct {v0}, Lcom/player/easy/ui/folders/AdItem;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/player/easy/ui/folders/FolderAdapter;->items:Ljava/util/List;

    .line 49
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;)V

    return-void
.end method
