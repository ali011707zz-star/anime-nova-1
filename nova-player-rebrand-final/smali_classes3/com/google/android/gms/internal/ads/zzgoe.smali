.class public final Lcom/google/android/gms/internal/ads/zzgoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgao;Lcom/google/android/gms/internal/ads/zzgdh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgao;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgoc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zzb:Lcom/google/android/gms/internal/ads/zzgao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgoc;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgoc;-><init>(ILcom/google/android/gms/internal/ads/zzgao;Lcom/google/android/gms/internal/ads/zzgdh;)V

    return-object v2
.end method

.method public final zzb(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    add-int/lit8 v1, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(ILjava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoe;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoc;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgod;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgod;-><init>(Lcom/google/android/gms/internal/ads/zzgoe;Lcom/google/android/gms/internal/ads/zzgoc;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public final zzf(ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoc;->zza()V

    .line 3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoc;->zzc()V

    return-void

    :catchall_0
    move-exception p2

    .line 4
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgoc;->zzb(Ljava/lang/Throwable;)V

    .line 5
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgoc;->zzc()V

    .line 7
    throw p2
.end method
