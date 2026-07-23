.class final Lcom/google/android/gms/internal/ads/zzyk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwi;
.implements Lcom/google/android/gms/internal/ads/zzwh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzwi;

.field private final zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzwh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwi;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzwi;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzc()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzd()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J
    .locals 11

    .line 1
    array-length v0, p3

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzyc;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyj;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzyj;->zza()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v8

    .line 2
    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    sub-long v6, p5, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwi;->zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J

    move-result-wide p1

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 4
    aget-object v1, v4, v0

    if-nez v1, :cond_2

    .line 5
    aput-object v8, p3, v0

    goto :goto_2

    .line 6
    :cond_2
    aget-object v2, p3, v0

    if-eqz v2, :cond_3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzyj;->zza()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v2

    if-eq v2, v1, :cond_4

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v2, v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Lcom/google/android/gms/internal/ads/zzyc;J)V

    .line 7
    aput-object v2, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr p1, v9

    return-wide p1
.end method

.method public final zzf(JZ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzh()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzi()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzi()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzj(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzj(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zzmt;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzk(JLcom/google/android/gms/internal/ads/zzmt;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final zzl()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzl()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzll;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzll;->zza:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzb:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzll;->zza()Lcom/google/android/gms/internal/ads/zzlk;

    move-result-object p1

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzlk;->zza(J)Lcom/google/android/gms/internal/ads/zzlk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlk;->zzd()Lcom/google/android/gms/internal/ads/zzll;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzm(Lcom/google/android/gms/internal/ads/zzll;)Z

    move-result p1

    return p1
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzn()Z

    move-result v0

    return v0
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwh;->zzp(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzye;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwi;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzc:Lcom/google/android/gms/internal/ads/zzwh;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzs(Lcom/google/android/gms/internal/ads/zzye;)V

    return-void
.end method
