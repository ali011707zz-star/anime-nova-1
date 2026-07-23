.class public final Lcoil/util/ImageLoaderOptions;
.super Ljava/lang/Object;
.source "ImageLoaderOptions.kt"


# instance fields
.field private final addLastModifiedToFileCacheKey:Z

.field private final launchInterceptorChainOnMainThread:Z

.field private final networkObserverEnabled:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    .line 13
    iput-boolean p2, p0, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    .line 14
    iput-boolean p3, p0, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcoil/util/ImageLoaderOptions;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil/util/ImageLoaderOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil/util/ImageLoaderOptions;

    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    iget-boolean v3, p1, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    iget-boolean v3, p1, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    iget-boolean p1, p1, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddLastModifiedToFileCacheKey()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    return v0
.end method

.method public final getLaunchInterceptorChainOnMainThread()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    return v0
.end method

.method public final getNetworkObserverEnabled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageLoaderOptions(addLastModifiedToFileCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->addLastModifiedToFileCacheKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", launchInterceptorChainOnMainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->launchInterceptorChainOnMainThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkObserverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/util/ImageLoaderOptions;->networkObserverEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
