.class final Lcom/google/android/gms/internal/ads/zzgis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgkg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgkx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgoe;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgcl;

.field private final zzf:Z

.field private final zzg:J

.field private final zzh:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgmu;Lcom/google/android/gms/internal/ads/zzgkg;Lcom/google/android/gms/internal/ads/zzgkx;Lcom/google/android/gms/internal/ads/zzgoe;Lcom/google/android/gms/internal/ads/zzgcl;ZJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgis;->zza:Lcom/google/android/gms/internal/ads/zzgmu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzb:Lcom/google/android/gms/internal/ads/zzgkg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgkx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzgcl;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzg:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzh:J

    return-void
.end method

.method private final zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzb:Lcom/google/android/gms/internal/ads/zzgkg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgkg;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgij;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgij;-><init>(Lcom/google/android/gms/internal/ads/zzgis;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgik;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgik;-><init>(Lcom/google/android/gms/internal/ads/zzgis;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgil;->zza:Lcom/google/android/gms/internal/ads/zzgil;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgim;->zza:Lcom/google/android/gms/internal/ads/zzgim;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 5
    const-class v3, Lcom/google/android/gms/internal/ads/zzgie;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgin;->zza:Lcom/google/android/gms/internal/ads/zzgin;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 6
    const-class v3, Lcom/google/android/gms/internal/ads/zzgif;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgio;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgio;-><init>(Lcom/google/android/gms/internal/ads/zzgis;I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/ads/zzgid;

    .line 7
    invoke-static {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v1, 0x3ea

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgoe;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method


# virtual methods
.method final zza(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzgcl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgiq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgiq;-><init>(Lcom/google/android/gms/internal/ads/zzgis;)V

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcl;->zza(Ljava/lang/Runnable;J)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgis;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgkx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgkx;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgih;->zza:Lcom/google/android/gms/internal/ads/zzgih;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2
    const-class v3, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgis;->zza:Lcom/google/android/gms/internal/ads/zzgmu;

    .line 3
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgig;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgig;-><init>(Lcom/google/android/gms/internal/ads/zzgmu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgii;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgii;-><init>(Lcom/google/android/gms/internal/ads/zzgis;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    const/16 v0, 0x3eb

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgir;->zzb:Lcom/google/android/gms/internal/ads/zzgir;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgis;->zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzgds;)Lcom/google/android/gms/internal/ads/zzgds;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    const/16 v2, 0x3ed

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgie;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgie;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgid;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgid;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzd:Lcom/google/android/gms/internal/ads/zzgoe;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoe;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgif;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgif;-><init>(I)V

    throw v0

    :cond_2
    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzgds;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgkx;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zza()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p1

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgkx;->zzd(Lcom/google/android/gms/internal/ads/zzgdu;[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzj()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzc:Lcom/google/android/gms/internal/ads/zzgkx;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zza()Lcom/google/android/gms/internal/ads/zzgdu;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgds;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p1

    .line 8
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgkx;->zzc(Lcom/google/android/gms/internal/ads/zzgdu;[B[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unreachable"

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method final synthetic zzf(ILcom/google/android/gms/internal/ads/zzgid;)Lcom/google/android/gms/internal/ads/zzgir;
    .locals 7

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzf:Z

    if-eqz p2, :cond_0

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzg:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgis;->zze:Lcom/google/android/gms/internal/ads/zzgcl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgip;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgip;-><init>(Lcom/google/android/gms/internal/ads/zzgis;I)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgis;->zzh:J

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v1, v3

    .line 2
    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgcl;->zza(Ljava/lang/Runnable;J)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgir;->zzf:Lcom/google/android/gms/internal/ads/zzgir;

    return-object p1
.end method

.method final synthetic zzg(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgis;->zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
