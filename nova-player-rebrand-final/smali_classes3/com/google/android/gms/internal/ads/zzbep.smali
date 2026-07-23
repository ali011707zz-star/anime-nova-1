.class public final Lcom/google/android/gms/internal/ads/zzbep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeq;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbef;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbef;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzd()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzc()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result p1

    sub-float/2addr v3, p1

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzd()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzc()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zza()F

    move-result p2

    sub-float/2addr v4, p2

    mul-float/2addr v0, v3

    mul-float/2addr p1, v4

    cmpl-float p2, v0, p1

    if-lez p2, :cond_4

    return v1

    :cond_4
    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
