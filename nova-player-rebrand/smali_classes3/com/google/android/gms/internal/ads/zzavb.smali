.class public final Lcom/google/android/gms/internal/ads/zzavb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzatw;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzaux;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzauu;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzaup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatw;Lcom/google/android/gms/internal/ads/zzaux;Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 9

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    not-int v8, v1

    and-int/2addr v2, v8

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    add-int/2addr v2, v1

    sub-int/2addr v2, v6

    add-int/2addr v7, v2

    const v1, 0x1b1493c2

    rem-int/2addr v0, v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavb;->zza:Lcom/google/android/gms/internal/ads/zzatw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzb:Lcom/google/android/gms/internal/ads/zzaux;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzd:Lcom/google/android/gms/internal/ads/zzaup;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzauu;

    xor-int p2, v7, v0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzc:Lcom/google/android/gms/internal/ads/zzauu;

    return-void

    :array_0
    .array-data 4
        0x14802f5d
        0x11f00713
        0x1082153a
        0x41781205
        0x520c34a4
        0x5c1eaca7
        0x102809e2
        0x331c4250
        0x1b1493c2
    .end array-data
.end method


# virtual methods
.method public final zza()Lj$/util/Optional;
    .locals 9

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzc:Lcom/google/android/gms/internal/ads/zzauu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauu;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaur;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaur;->zza:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaur;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaur;->zzc:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzb:Lcom/google/android/gms/internal/ads/zzaux;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    int-to-long v7, v7

    cmp-long v7, v7, v3

    if-gez v7, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzG:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzd:Lcom/google/android/gms/internal/ads/zzaup;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(J)V

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaux;->zzb:I

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzc()Lcom/google/android/gms/internal/ads/zzavg;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaut; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzauv; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzaun; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzauo; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaut;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzaut; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzauv; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzaun; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzauo; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CEiv6BFfPnitUE+D"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzG:Lcom/google/android/gms/internal/ads/zzatq;

    :goto_2
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    :catch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzw:Lcom/google/android/gms/internal/ads/zzatq;

    goto :goto_2
.end method
