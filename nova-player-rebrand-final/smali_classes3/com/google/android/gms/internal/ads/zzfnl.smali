.class public final Lcom/google/android/gms/internal/ads/zzfnl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnm;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;[B)V
    .locals 0

    .line 0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    const/4 p4, 0x0

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 7

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnk;-><init>(Lcom/google/android/gms/internal/ads/zzfmu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnm;->zze()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzd(Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    move-object v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    move-object v4, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzc:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v6, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zze:Ljava/util/List;

    invoke-static {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public final zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnh;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzd(Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfmu;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfni;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfni;-><init>(Lcom/google/android/gms/internal/ads/zzfmu;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zze()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v4, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    move-object v5, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzc:Ljava/lang/String;

    move-object v6, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v7, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zze:Ljava/util/List;

    invoke-static {v7, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public final zzh(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v4, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    move-object v5, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzc:Ljava/lang/String;

    move-object v6, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v7, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zze:Ljava/util/List;

    invoke-static {v7, p1, p2, p3, v6}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnm;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfnb;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzc:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnb;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zzg()Lcom/google/android/gms/internal/ads/zzfnn;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzfnn;->zza(Lcom/google/android/gms/internal/ads/zzfnb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfnj;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfnj;-><init>(Lcom/google/android/gms/internal/ads/zzfnl;Lcom/google/android/gms/internal/ads/zzfnb;)V

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfng;

    .line 6
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfng;-><init>(Lcom/google/android/gms/internal/ads/zzfnl;Lcom/google/android/gms/internal/ads/zzfnb;)V

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnl;->zza:Lcom/google/android/gms/internal/ads/zzfnm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfnl;->zzi()Lcom/google/android/gms/internal/ads/zzfnb;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfnm;->zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfnl;

    move-result-object p1

    return-object p1
.end method
