.class public final Lcom/google/android/gms/internal/ads/zzabf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzaaz;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzaaz;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzabl;

.field private zzd:Lcom/google/android/gms/internal/ads/zzaba;

.field private zze:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(IJ[B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zza:Lcom/google/android/gms/internal/ads/zzaaz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(IJ[B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzb:Lcom/google/android/gms/internal/ads/zzaaz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzf(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaay;->zza:Lcom/google/android/gms/internal/ads/zzaay;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzabl$-CC;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdr;)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzc:Lcom/google/android/gms/internal/ads/zzabl;

    return-void
.end method

.method public static zza(ZJ)Lcom/google/android/gms/internal/ads/zzaaz;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(IJ[B)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zze:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zze:Ljava/io/IOException;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaax;I)J
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zze:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaba;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaba;-><init>(Lcom/google/android/gms/internal/ads/zzabf;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaax;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaba;->zzb(J)V

    return-wide v6
.end method

.method public final zze()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaba;->zzc(Z)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzabc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaba;->zzc(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzc:Lcom/google/android/gms/internal/ads/zzabl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzabd;-><init>(Lcom/google/android/gms/internal/ads/zzabc;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zza()V

    return-void
.end method

.method public final zzh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zze:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zza(I)V

    :cond_0
    return-void

    .line 1
    :cond_1
    throw v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzabl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzc:Lcom/google/android/gms/internal/ads/zzabl;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzaba;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    return-object v0
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzaba;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:Lcom/google/android/gms/internal/ads/zzaba;

    return-void
.end method

.method final synthetic zzl(Ljava/io/IOException;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabf;->zze:Ljava/io/IOException;

    return-void
.end method
