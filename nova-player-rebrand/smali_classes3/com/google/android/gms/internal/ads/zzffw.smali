.class public final Lcom/google/android/gms/internal/ads/zzffw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkz;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkz;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfft;-><init>(Lcom/google/android/gms/internal/ads/zzffw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffw;->zzc:Lcom/google/android/gms/internal/ads/zzgzl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffw;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffw;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfgf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffw;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffw;->zzb:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfgf;-><init>(Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzdam;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgf;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzffu;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzffu;-><init>(Lcom/google/android/gms/internal/ads/zzffw;Lcom/google/android/gms/internal/ads/zzdam;)V

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzffs;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzffs;-><init>(Lcom/google/android/gms/internal/ads/zzffw;)V

    const-class p3, Ljava/lang/Exception;

    .line 5
    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzfgd;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffw;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfgd;->zzb:Lcom/google/android/gms/internal/ads/zzflj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgd;->zza:Lcom/google/android/gms/internal/ads/zzbzu;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkz;->zza(Lcom/google/android/gms/internal/ads/zzflj;)Lcom/google/android/gms/internal/ads/zzfli;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzf(Lcom/google/android/gms/internal/ads/zzbzu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffw;->zzc:Lcom/google/android/gms/internal/ads/zzgzl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffw;->zzb:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzffv;

    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzffv;-><init>(Lcom/google/android/gms/internal/ads/zzflj;Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzfli;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffw;->zza(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
