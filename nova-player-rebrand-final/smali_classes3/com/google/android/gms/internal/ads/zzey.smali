.class final Lcom/google/android/gms/internal/ads/zzey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfa;

.field private final zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzey;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzey;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzr()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v5

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbb;->zzy()I

    move-result v3

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbb;->zzz()I

    move-result v4

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbb;->zzu()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    if-eqz v2, :cond_1

    if-ne v3, v9, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzf()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v10, 0x0

    .line 8
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v10

    sub-long/2addr v5, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzf()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v1

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v10

    move v3, v9

    goto :goto_1

    :cond_1
    if-eq v3, v9, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzt()J

    move-result-wide v10

    goto :goto_1

    :cond_2
    move-wide v10, v7

    .line 8
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zza()Z

    move-result v1

    const/4 v9, 0x3

    if-eqz v1, :cond_6

    cmp-long v12, v10, v7

    if-eqz v12, :cond_6

    cmp-long v12, v5, v10

    if-gez v12, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzf:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzc:Ljava/lang/Object;

    .line 15
    invoke-static {v2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzd:I

    if-ne v3, v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zze:I

    if-ne v4, v1, :cond_5

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:J

    sub-long/2addr v5, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    int-to-long v2, v1

    cmp-long v2, v5, v2

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zze()Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfb;

    .line 18
    invoke-direct {v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(II)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zza(Lcom/google/android/gms/internal/ads/zzfb;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzf:Z

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzey;->zzc:Ljava/lang/Object;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzey;->zzd:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzey;->zze:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v1

    .line 16
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzdx;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    .line 17
    invoke-interface {v0, v9, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzi(II)Z

    return-void

    .line 9
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v2

    .line 10
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/ads/zzdx;->zzk(I)V

    if-eqz v1, :cond_7

    cmp-long v1, v10, v7

    if-eqz v1, :cond_7

    sub-long/2addr v10, v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzn()Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    long-to-float v2, v10

    div-float/2addr v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v0

    float-to-double v1, v2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 13
    invoke-interface {v0, v9, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzi(II)Z

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzey;->zzf:Z

    return-void
.end method
