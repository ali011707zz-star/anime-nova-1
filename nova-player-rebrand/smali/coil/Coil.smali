.class public final Lcoil/Coil;
.super Ljava/lang/Object;
.source "Coil.kt"


# static fields
.field public static final INSTANCE:Lcoil/Coil;

.field private static imageLoader:Lcoil/ImageLoader;

.field private static imageLoaderFactory:Lcoil/ImageLoaderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/Coil;

    invoke-direct {v0}, Lcoil/Coil;-><init>()V

    sput-object v0, Lcoil/Coil;->INSTANCE:Lcoil/Coil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;

    if-nez v0, :cond_0

    sget-object v0, Lcoil/Coil;->INSTANCE:Lcoil/Coil;

    invoke-direct {v0, p0}, Lcoil/Coil;->newImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final declared-synchronized newImageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    sget-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;

    if-nez v0, :cond_4

    .line 77
    sget-object v0, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcoil/ImageLoaderFactory;->newImageLoader()Lcoil/ImageLoader;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Lcoil/ImageLoaderFactory;

    if-eqz v2, :cond_1

    check-cast v0, Lcoil/ImageLoaderFactory;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcoil/ImageLoaderFactory;->newImageLoader()Lcoil/ImageLoader;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    .line 79
    sget-object v0, Lcoil/ImageLoader;->Companion:Lcoil/ImageLoader$Companion;

    invoke-virtual {v0, p1}, Lcoil/ImageLoader$Companion;->create(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v0

    .line 80
    :cond_3
    sput-object v1, Lcoil/Coil;->imageLoaderFactory:Lcoil/ImageLoaderFactory;

    .line 81
    sput-object v0, Lcoil/Coil;->imageLoader:Lcoil/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-object v0

    .line 74
    :cond_4
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
