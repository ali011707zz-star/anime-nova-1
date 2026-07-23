.class final Lcom/google/android/gms/internal/ads/zzfgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdam;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfgd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfkz;Lcom/google/android/gms/internal/ads/zzdam;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzflj;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zzb()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    .line 2
    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfkz;->zzd(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzd:Lcom/google/android/gms/internal/ads/zzfgd;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgd;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfgf;->zze()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzfgd;-><init>(Lcom/google/android/gms/internal/ads/zzbzu;Lcom/google/android/gms/internal/ads/zzflj;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzd:Lcom/google/android/gms/internal/ads/zzfgd;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzdam;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfkz;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdam;->zza()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfkz;->zze()Lcom/google/android/gms/internal/ads/zzflg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxj;->zze(Lcom/google/android/gms/internal/ads/zzflg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgc;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzc:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgb;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgb;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;)V

    const-class v3, Lcom/google/android/gms/internal/ads/zzeff;

    .line 8
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzc:Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfge;->zza:Lcom/google/android/gms/internal/ads/zzfge;

    .line 9
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzflj;
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfgf;->zze()Lcom/google/android/gms/internal/ads/zzflj;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzfgd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzd:Lcom/google/android/gms/internal/ads/zzfgd;

    return-object v0
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzfgd;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgf;->zzd:Lcom/google/android/gms/internal/ads/zzfgd;

    return-void
.end method
