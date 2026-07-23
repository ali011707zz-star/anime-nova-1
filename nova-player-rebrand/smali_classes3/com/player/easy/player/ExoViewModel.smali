.class public final Lcom/player/easy/player/ExoViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ExoViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/ExoViewModel$ViewModelFactory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\"\u001a\u0004\u0018\u00010#H\u0086@\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020&H\u0002J\u001a\u0010\'\u001a\u0002H(\"\u0006\u0008\u0000\u0010(\u0018\u0001*\u00020)H\u0086\u0008\u00a2\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020&J\u0018\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020.2\u0008\u0008\u0002\u0010/\u001a\u00020\u0003J\u000e\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u000202R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0017\u001a\u0004\u0008\u001f\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lcom/player/easy/player/ExoViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "adsEnabled",
        "",
        "<init>",
        "(Z)V",
        "downloadManger",
        "Lcom/player/easy/data/download/DownloadManager;",
        "allDownloads",
        "",
        "Lcom/tonyodev/fetch2/Download;",
        "_initAds",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/player/easy/data/AdType;",
        "initAds",
        "Landroidx/lifecycle/LiveData;",
        "getInitAds",
        "()Landroidx/lifecycle/LiveData;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "json$delegate",
        "Lkotlin/Lazy;",
        "prefs",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "getPrefs",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "prefs$delegate",
        "networkHelper",
        "Lcom/player/easy/network/NetworkHelper;",
        "getNetworkHelper",
        "()Lcom/player/easy/network/NetworkHelper;",
        "networkHelper$delegate",
        "fetchIpInformation",
        "Lcom/player/easy/data/IpInformation;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getIPCountry",
        "",
        "parseAs",
        "T",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)Ljava/lang/Object;",
        "getDownloads",
        "queueDownload",
        "request",
        "Lcom/tonyodev/fetch2/Request;",
        "autoStart",
        "isFileExistAlready",
        "title",
        "",
        "ViewModelFactory",
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
        "SMAP\nExoViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExoViewModel.kt\ncom/player/easy/player/ExoViewModel\n+ 2 Factory.kt\nuy/kohesive/injekt/api/FactoryKt\n+ 3 TypeInfo.kt\nuy/kohesive/injekt/api/TypeInfoKt\n+ 4 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 5 Json.kt\nkotlinx/serialization/json/Json\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n30#2:145\n27#3:146\n17#4:147\n17#4:148\n17#4:149\n222#5:150\n1#6:151\n*S KotlinDebug\n*F\n+ 1 ExoViewModel.kt\ncom/player/easy/player/ExoViewModel\n*L\n25#1:145\n25#1:146\n31#1:147\n33#1:148\n34#1:149\n112#1:150\n*E\n"
    }
.end annotation


# instance fields
.field private final _initAds:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private final allDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch2/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadManger:Lcom/player/easy/data/download/DownloadManager;

.field private final initAds:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation
.end field

.field private final json$delegate:Lkotlin/Lazy;

.field private final networkHelper$delegate:Lkotlin/Lazy;

.field private final prefs$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 25
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/player/easy/player/ExoViewModel$special$$inlined$get$1;

    invoke-direct {v1}, Lcom/player/easy/player/ExoViewModel$special$$inlined$get$1;-><init>()V

    .line 145
    invoke-virtual {v1}, Luy/kohesive/injekt/api/FullTypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Luy/kohesive/injekt/api/InjektFactory;->getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    .line 25
    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->downloadManger:Lcom/player/easy/data/download/DownloadManager;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->allDownloads:Ljava/util/List;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->_initAds:Landroidx/lifecycle/MutableLiveData;

    .line 29
    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->initAds:Landroidx/lifecycle/LiveData;

    .line 147
    sget-object v0, Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->json$delegate:Lkotlin/Lazy;

    .line 148
    sget-object v0, Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$2;->INSTANCE:Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->prefs$delegate:Lkotlin/Lazy;

    .line 149
    sget-object v0, Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$3;->INSTANCE:Lcom/player/easy/player/ExoViewModel$special$$inlined$injectLazy$3;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/player/easy/player/ExoViewModel;->networkHelper$delegate:Lkotlin/Lazy;

    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/player/easy/player/ExoViewModel;->getIPCountry()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getAllDownloads$p(Lcom/player/easy/player/ExoViewModel;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/player/ExoViewModel;->allDownloads:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getDownloadManger$p(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/download/DownloadManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/player/ExoViewModel;->downloadManger:Lcom/player/easy/data/download/DownloadManager;

    return-object p0
.end method

.method public static final synthetic access$getNetworkHelper(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/network/NetworkHelper;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/player/easy/player/ExoViewModel;->getNetworkHelper()Lcom/player/easy/network/NetworkHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPrefs(Lcom/player/easy/player/ExoViewModel;)Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/player/easy/player/ExoViewModel;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_initAds$p(Lcom/player/easy/player/ExoViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/player/easy/player/ExoViewModel;->_initAds:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final getIPCountry()V
    .locals 6

    .line 57
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/player/easy/player/ExoViewModel$getIPCountry$1;-><init>(Lcom/player/easy/player/ExoViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getNetworkHelper()Lcom/player/easy/network/NetworkHelper;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->networkHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/network/NetworkHelper;

    return-object v0
.end method

.method private final getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method public static synthetic queueDownload$default(Lcom/player/easy/player/ExoViewModel;Lcom/tonyodev/fetch2/Request;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/player/ExoViewModel;->queueDownload(Lcom/tonyodev/fetch2/Request;Z)V

    return-void
.end method


# virtual methods
.method public final fetchIpInformation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/player/easy/data/IpInformation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/player/easy/player/ExoViewModel$fetchIpInformation$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/player/easy/player/ExoViewModel$fetchIpInformation$2;-><init>(Lcom/player/easy/player/ExoViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->withIOContext(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDownloads()V
    .locals 3

    .line 117
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/player/easy/player/ExoViewModel$getDownloads$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/player/easy/player/ExoViewModel$getDownloads$1;-><init>(Lcom/player/easy/player/ExoViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchIO(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getInitAds()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->initAds:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->json$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final isFileExistAlready(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->allDownloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tonyodev/fetch2/Download;

    invoke-static {v2}, Lcom/player/easy/util/download/DownloadExtensionsKt;->getTitle(Lcom/tonyodev/fetch2/Download;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/tonyodev/fetch2/Download;

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic parseAs(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .line 110
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/player/easy/player/ExoViewModel;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const-string v3, "T"

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v3, "kotlinx.serialization.serializer.withModule"

    invoke-static {v3}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public final queueDownload(Lcom/tonyodev/fetch2/Request;Z)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/player/easy/player/ExoViewModel;->downloadManger:Lcom/player/easy/data/download/DownloadManager;

    invoke-virtual {v0, p1, p2}, Lcom/player/easy/data/download/DownloadManager;->queueDownload(Lcom/tonyodev/fetch2/Request;Z)V

    return-void
.end method
