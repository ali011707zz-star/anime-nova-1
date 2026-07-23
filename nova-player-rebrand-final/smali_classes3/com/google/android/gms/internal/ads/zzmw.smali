.class public final Lcom/google/android/gms/internal/ads/zzmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlm;


# instance fields
.field private zza:Z

.field private zzb:J

.field private zzc:J

.field private zzd:Lcom/google/android/gms/internal/ads/zzav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzd:Lcom/google/android/gms/internal/ads/zzav;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzc:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmw;->zzg()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzmw;->zzc(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    :cond_0
    return-void
.end method

.method public final zzc(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzb:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzc:J

    :cond_0
    return-void
.end method

.method public final zzg()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzb:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzc:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzd:Lcom/google/android/gms/internal/ads/zzav;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzav;->zza(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public synthetic zzh()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzlm$-CC;->$default$zzh(Lcom/google/android/gms/internal/ads/zzlm;)Z

    move-result v0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zza:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmw;->zzg()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzmw;->zzc(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzd:Lcom/google/android/gms/internal/ads/zzav;

    return-void
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzav;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmw;->zzd:Lcom/google/android/gms/internal/ads/zzav;

    return-object v0
.end method
