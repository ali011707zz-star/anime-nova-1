.class public Lcom/google/ads/interactivemedia/v3/internal/zzadi;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field protected volatile zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

.field private volatile zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private volatile zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 2
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzap()Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_6
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzap()Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)Lcom/google/ads/interactivemedia/v3/internal/zzadx;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    .line 1
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaB()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaO()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzd(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzc:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    .line 2
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 3
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
