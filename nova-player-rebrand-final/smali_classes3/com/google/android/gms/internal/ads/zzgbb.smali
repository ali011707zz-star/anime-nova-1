.class public final Lcom/google/android/gms/internal/ads/zzgbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/internal/ads/zzgbb;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzgaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbb;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgbf;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbm;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbm;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbm;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgbm;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzgbm;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgbm;->zzd(Lcom/google/android/gms/internal/ads/zzgbf;)Lcom/google/android/gms/internal/ads/zzgbm;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgbc;->zza()Lcom/google/android/gms/internal/ads/zzgbd;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgbl;->zzI:Lcom/google/android/gms/internal/ads/zzikp;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgaz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgbf;)Lcom/google/android/gms/internal/ads/zzgbb;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbb;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgbb;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgbb;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgbf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgbb;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzb:Lcom/google/android/gms/internal/ads/zzgbb;

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgaz;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaz;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzgaz;->zzc(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgaz;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaz;->zze(Ljava/util/List;)V

    return-void
.end method

.method public final zzg(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaz;->zzf(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbb;->zzc:Lcom/google/android/gms/internal/ads/zzgaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgaz;->zzj()I

    move-result v0

    return v0
.end method
