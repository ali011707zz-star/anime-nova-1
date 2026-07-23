.class public Lcom/player/easy/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcoil/ImageLoaderFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/App$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000 #2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0008\u0010\u001a\u001a\u00020\u0015H\u0002J\u0008\u0010\u001b\u001a\u00020\u0015H\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u000e\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lcom/player/easy/App;",
        "Landroidx/multidex/MultiDexApplication;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Lcoil/ImageLoaderFactory;",
        "<init>",
        "()V",
        "newImageLoader",
        "Lcoil/ImageLoader;",
        "simpleCache",
        "Landroidx/media3/datasource/cache/SimpleCache;",
        "getSimpleCache",
        "()Landroidx/media3/datasource/cache/SimpleCache;",
        "simpleCache$delegate",
        "Lkotlin/Lazy;",
        "exoDatabaseProvider",
        "Landroidx/media3/database/StandaloneDatabaseProvider;",
        "getExoDatabaseProvider",
        "()Landroidx/media3/database/StandaloneDatabaseProvider;",
        "setExoDatabaseProvider",
        "(Landroidx/media3/database/StandaloneDatabaseProvider;)V",
        "onCreate",
        "",
        "onAppBackgrounded",
        "attachBaseContext",
        "base",
        "Landroid/content/Context;",
        "initExoDataBase",
        "setupNotification",
        "isHuaweiBuild",
        "",
        "onCreateGoogleServiceProvider",
        "Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;",
        "initializeEuaUkConsentForm",
        "activity",
        "Landroid/app/Activity;",
        "Companion",
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
        "SMAP\nApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 App.kt\ncom/player/easy/App\n+ 2 ImageLoader.kt\ncoil/ImageLoader$Builder\n+ 3 ComponentRegistry.kt\ncoil/ComponentRegistry$Builder\n*L\n1#1,116:1\n211#2:117\n63#3:118\n*S KotlinDebug\n*F\n+ 1 App.kt\ncom/player/easy/App\n*L\n55#1:117\n57#1:118\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/App$Companion;

.field private static applicationLoaderInstance:Lcom/player/easy/App;

.field private static googleServiceProvider:Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;


# instance fields
.field public exoDatabaseProvider:Landroidx/media3/database/StandaloneDatabaseProvider;

.field private final simpleCache$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$_Nzurv4TlceuIyZqtUL9Xu-z4GE(Lcom/player/easy/App;)Landroidx/media3/datasource/cache/SimpleCache;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/App;->simpleCache_delegate$lambda$0(Lcom/player/easy/App;)Landroidx/media3/datasource/cache/SimpleCache;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/App$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/App;->Companion:Lcom/player/easy/App$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 62
    new-instance v0, Lcom/player/easy/App$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/player/easy/App$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/App;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/App;->simpleCache$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApplicationLoaderInstance$cp()Lcom/player/easy/App;
    .locals 1

    .line 31
    sget-object v0, Lcom/player/easy/App;->applicationLoaderInstance:Lcom/player/easy/App;

    return-object v0
.end method

.method public static final synthetic access$getGoogleServiceProvider$cp()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
    .locals 1

    .line 31
    sget-object v0, Lcom/player/easy/App;->googleServiceProvider:Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    return-object v0
.end method

.method public static final synthetic access$setApplicationLoaderInstance$cp(Lcom/player/easy/App;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/player/easy/App;->applicationLoaderInstance:Lcom/player/easy/App;

    return-void
.end method

.method public static final synthetic access$setGoogleServiceProvider$cp(Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/player/easy/App;->googleServiceProvider:Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    return-void
.end method

.method public static final getApplicationLoaderInstance()Lcom/player/easy/App;
    .locals 1

    .line 0
    sget-object v0, Lcom/player/easy/App;->Companion:Lcom/player/easy/App$Companion;

    invoke-virtual {v0}, Lcom/player/easy/App$Companion;->getApplicationLoaderInstance()Lcom/player/easy/App;

    move-result-object v0

    return-object v0
.end method

.method private final initExoDataBase()V
    .locals 1

    .line 99
    new-instance v0, Landroidx/media3/database/StandaloneDatabaseProvider;

    invoke-direct {v0, p0}, Landroidx/media3/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/player/easy/App;->setExoDatabaseProvider(Landroidx/media3/database/StandaloneDatabaseProvider;)V

    return-void
.end method

.method public static final setApplicationLoaderInstance(Lcom/player/easy/App;)V
    .locals 1

    .line 0
    sget-object v0, Lcom/player/easy/App;->Companion:Lcom/player/easy/App$Companion;

    invoke-virtual {v0, p0}, Lcom/player/easy/App$Companion;->setApplicationLoaderInstance(Lcom/player/easy/App;)V

    return-void
.end method

.method private final setupNotification()V
    .locals 1

    .line 103
    sget-object v0, Lcom/player/easy/data/notification/Notifications;->INSTANCE:Lcom/player/easy/data/notification/Notifications;

    invoke-virtual {v0, p0}, Lcom/player/easy/data/notification/Notifications;->createChannels(Landroid/content/Context;)V

    return-void
.end method

.method private static final simpleCache_delegate$lambda$0(Lcom/player/easy/App;)Landroidx/media3/datasource/cache/SimpleCache;
    .locals 4

    .line 64
    new-instance v0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v1, 0x12c00000

    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "media"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    new-instance v2, Landroidx/media3/datasource/cache/SimpleCache;

    invoke-virtual {p0}, Lcom/player/easy/App;->getExoDatabaseProvider()Landroidx/media3/database/StandaloneDatabaseProvider;

    move-result-object p0

    invoke-direct {v2, v1, v0, p0}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;)V

    return-object v2
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final getExoDatabaseProvider()Landroidx/media3/database/StandaloneDatabaseProvider;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/player/easy/App;->exoDatabaseProvider:Landroidx/media3/database/StandaloneDatabaseProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "exoDatabaseProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSimpleCache()Landroidx/media3/datasource/cache/SimpleCache;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/player/easy/App;->simpleCache$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/SimpleCache;

    return-object v0
.end method

.method public final initializeEuaUkConsentForm(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/player/easy/App;->Companion:Lcom/player/easy/App$Companion;

    invoke-virtual {v0}, Lcom/player/easy/App$Companion;->getGoogleServiceProvider()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;->initializeConsentAndAdsIfNeeded(Landroid/app/Activity;)V

    return-void
.end method

.method public isHuaweiBuild()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public newImageLoader()Lcoil/ImageLoader;
    .locals 4

    .line 53
    new-instance v0, Lcoil/ImageLoader$Builder;

    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->crossfade(Z)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 117
    new-instance v1, Lcoil/ComponentRegistry$Builder;

    invoke-direct {v1}, Lcoil/ComponentRegistry$Builder;-><init>()V

    .line 56
    new-instance v2, Lcoil/decode/VideoFrameDecoder;

    invoke-direct {v2, p0}, Lcoil/decode/VideoFrameDecoder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/decode/Decoder;)Lcoil/ComponentRegistry$Builder;

    .line 57
    new-instance v2, Lcom/player/easy/data/coil/VideoCoverFetcher;

    invoke-direct {v2, p0}, Lcom/player/easy/data/coil/VideoCoverFetcher;-><init>(Landroid/content/Context;)V

    .line 118
    const-class v3, Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {v1, v2, v3}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    .line 117
    invoke-virtual {v1}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoil/ImageLoader$Builder;->componentRegistry(Lcoil/ComponentRegistry;)Lcoil/ImageLoader$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public final onAppBackgrounded()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    sget-object v0, Lcom/player/easy/LogCycle;->INSTANCE:Lcom/player/easy/LogCycle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/player/easy/LogCycle;->setShouldRefreshFiles(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 72
    sput-object p0, Lcom/player/easy/App;->applicationLoaderInstance:Lcom/player/easy/App;

    .line 73
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 78
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    new-instance v1, Lcom/player/easy/di/AppModule;

    invoke-direct {v1, p0}, Lcom/player/easy/di/AppModule;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Luy/kohesive/injekt/api/InjektScope;->importModule(Luy/kohesive/injekt/api/InjektModule;)V

    .line 79
    invoke-static {p0}, Lcom/player/easy/di/AppModuleKt;->initExpensiveComponents(Landroid/app/Application;)V

    .line 81
    invoke-direct {p0}, Lcom/player/easy/App;->initExoDataBase()V

    .line 82
    invoke-direct {p0}, Lcom/player/easy/App;->setupNotification()V

    .line 84
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateGoogleServiceProvider()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;
    .locals 1

    .line 109
    sget-object v0, Lcom/player/easy/GoogleServiceController;->Companion:Lcom/player/easy/GoogleServiceController$Companion;

    invoke-virtual {v0}, Lcom/player/easy/GoogleServiceController$Companion;->default()Lcom/player/easy/GoogleServiceController$IGoogleServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public final setExoDatabaseProvider(Landroidx/media3/database/StandaloneDatabaseProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/player/easy/App;->exoDatabaseProvider:Landroidx/media3/database/StandaloneDatabaseProvider;

    return-void
.end method
