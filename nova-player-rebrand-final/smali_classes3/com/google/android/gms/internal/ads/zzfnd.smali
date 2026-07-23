.class public final Lcom/google/android/gms/internal/ads/zzfnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnm;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/util/List;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 8

    .line 1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzc:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnc;->zza:Lcom/google/android/gms/internal/ads/zzfnc;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzn;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    move-object v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zze()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v3

    .line 3
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzgzn;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;[B)V

    return-object v0
.end method
