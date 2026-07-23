.class final Lcom/google/android/gms/internal/ads/zzgec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzika;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Lcom/google/android/gms/internal/ads/zzika;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zza:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzd:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgec;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    return-void
.end method

.method private final zze(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgdy;-><init>(Lcom/google/android/gms/internal/ads/zzgec;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdz;->zza:Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method


# virtual methods
.method final synthetic zza()Lcom/google/android/gms/internal/ads/zzgoe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgec;->zze:Lcom/google/android/gms/internal/ads/zzgoe;

    return-object v0
.end method

.method final zzb(IZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->zze(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgeb;->zza:Lcom/google/android/gms/internal/ads/zzgeb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3
    const-class v1, Ljava/lang/Throwable;

    invoke-static {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgdx;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzgdx;-><init>(Lcom/google/android/gms/internal/ads/zzgec;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1

    :cond_0
    return-object v0
.end method

.method final synthetic zzc(I)Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzc:Lcom/google/android/gms/internal/ads/zzika;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdv;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zzb:Lcom/google/android/gms/internal/ads/zzika;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdv;

    return-object p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zza:Lcom/google/android/gms/internal/ads/zzika;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzika;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdv;

    return-object p1
.end method

.method final synthetic zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgec;->zze(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
