.class public final Lcom/google/android/gms/internal/ads/zzalf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzalc;

.field public final zzb:I

.field public final zzc:[J

.field public final zzd:[I

.field public final zze:I

.field public final zzf:[J

.field public final zzg:[I

.field public final zzh:[I

.field public final zzi:J

.field public final zzj:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalc;[J[II[J[I[IZJI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 2
    array-length v0, p2

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 3
    array-length v0, p6

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:[J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:[I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzalf;->zze:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzg:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzh:[I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzj:Z

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzi:J

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:I

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 4
    aget p1, p6, v0

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    aput p1, p6, v0

    :cond_3
    return-void
.end method


# virtual methods
.method public final zza(J)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzh:[I

    .line 2
    array-length v2, v0

    const/4 v3, -0x1

    add-int/2addr v2, v3

    move v4, v3

    :goto_0
    if-gt v1, v2, :cond_2

    sub-int v5, v2, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 3
    aget v7, v0, v5

    aget-wide v7, v6, v7

    cmp-long v6, v7, p1

    if-gtz v6, :cond_1

    add-int/lit8 v1, v5, 0x1

    move v4, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    .line 4
    aget v2, v0, v4

    aget-wide v2, v1, v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_4

    :goto_1
    if-lez v4, :cond_4

    add-int/lit8 p1, v4, -0x1

    .line 5
    aget p2, v0, p1

    aget-wide v5, v1, p2

    cmp-long p2, v5, v2

    if-nez p2, :cond_4

    move v4, p1

    goto :goto_1

    .line 6
    :cond_4
    aget p1, v0, v4

    return p1
.end method

.method public final zzb(J)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzo([JJZZ)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzh:[I

    .line 2
    array-length v2, v0

    const/4 v3, -0x1

    add-int/2addr v2, v3

    move v4, v3

    :goto_0
    if-gt v1, v2, :cond_2

    sub-int v5, v2, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 3
    aget v7, v0, v5

    aget-wide v7, v6, v7

    cmp-long v6, v7, p1

    if-ltz v6, :cond_1

    add-int/lit8 v2, v5, -0x1

    move v4, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzf:[J

    .line 4
    aget v2, v0, v4

    aget-wide v5, v1, v2

    cmp-long p1, v5, p1

    if-nez p1, :cond_4

    .line 5
    :goto_1
    array-length p1, v0

    add-int/2addr p1, v3

    if-ge v4, p1, :cond_4

    add-int/lit8 p1, v4, 0x1

    aget p2, v0, p1

    aget-wide v7, v1, p2

    cmp-long p2, v7, v5

    if-nez p2, :cond_4

    move v4, p1

    goto :goto_1

    .line 6
    :cond_4
    aget p1, v0, v4

    return p1
.end method
