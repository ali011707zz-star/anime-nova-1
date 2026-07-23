.class final Lcom/google/ads/interactivemedia/v3/internal/zzik;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Ljava/lang/ref/WeakReference;

.field private zzc:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzc:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzb:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzic;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzic;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzii;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzii;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzif;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzif;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzih;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzih;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzid;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzid;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzig;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzig;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzik;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V

    return-void
.end method

.method protected final zza(Lcom/google/ads/interactivemedia/v3/internal/zzij;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzij;->zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzc:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zza:Landroid/app/Application;

    .line 3
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzik;->zzc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
