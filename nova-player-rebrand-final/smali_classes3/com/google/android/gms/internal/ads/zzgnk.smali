.class public final Lcom/google/android/gms/internal/ads/zzgnk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnb;
.implements Lcom/google/android/gms/internal/ads/zzgdd;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgoe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgbf;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzf:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgoe;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzgbf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzc:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzd:Lcom/google/android/gms/internal/ads/zzgbf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzd:Lcom/google/android/gms/internal/ads/zzgbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzc:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgnj;-><init>(Lcom/google/android/gms/internal/ads/zzgnk;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzo;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "gs"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zze()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgni;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgni;-><init>(Lcom/google/android/gms/internal/ads/zzgnk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzc:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzb:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x35

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzaxg;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgnk;->zza:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfvo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
