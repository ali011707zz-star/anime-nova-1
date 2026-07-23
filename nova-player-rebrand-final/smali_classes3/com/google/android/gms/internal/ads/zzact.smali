.class final Lcom/google/android/gms/internal/ads/zzact;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:D

.field private zzd:Landroid/util/Range;


# direct methods
.method public constructor <init>(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/Range;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:Landroid/util/Range;

    .line 2
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:D

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza(JJ)V
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    move v3, v4

    .line 2
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    sub-long v0, p3, v4

    sub-long v2, p1, v2

    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:Landroid/util/Range;

    .line 3
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:Landroid/util/Range;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:D

    const-wide v4, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:D

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:J

    return-void
.end method

.method public final zzb(J)J
    .locals 5

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:J

    long-to-double v2, v2

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:D

    long-to-double p1, p1

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    double-to-long p1, v2

    return-wide p1
.end method

.method public final zzc(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p1

    div-double/2addr v0, v2

    .line 2
    new-instance p1, Landroid/util/Range;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:Landroid/util/Range;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzact;->zzd()V

    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzd:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzc:D

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzb:J

    return-void
.end method
