.class public final Lcom/google/android/gms/internal/ads/zzffl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgj;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffl;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdam;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffl;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgk;->zzb:Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgi;->zza(Lcom/google/android/gms/internal/ads/zzfgh;)Lcom/google/android/gms/internal/ads/zzdal;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgn;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfgn;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdal;->zzj(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzdal;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdal;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdam;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffl;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfli;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfli;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffk;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzffk;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzfli;Lcom/google/android/gms/internal/ads/zzcxj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffl;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzfli;)V

    .line 8
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffl;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    return-object v0
.end method
