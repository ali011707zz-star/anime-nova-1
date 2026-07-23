.class final Lcom/google/android/gms/internal/ads/zzgme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgky;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgjd;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgjd;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmd;-><init>(Lcom/google/android/gms/internal/ads/zzgme;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bc6

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgmc;-><init>(Lcom/google/android/gms/internal/ads/zzgme;Lcom/google/android/gms/internal/ads/zzgdu;[B[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 p3, 0x3bd9

    .line 2
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdu;[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmb;-><init>(Lcom/google/android/gms/internal/ads/zzgme;Lcom/google/android/gms/internal/ads/zzgdu;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x3bc9

    .line 2
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public final zze()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgma;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgma;-><init>(Lcom/google/android/gms/internal/ads/zzgme;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgme;->zzc:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v2, 0x3bd2

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzc(I)Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdu;->zzg()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfwq;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjd;->zzb(I)Lcom/google/android/gms/internal/ads/zzfwq;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgdu;[B)Ljava/lang/Void;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Z

    return-object v1
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Ljava/lang/Void;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgme;->zza:Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Z

    const/4 p1, 0x0

    return-object p1
.end method
