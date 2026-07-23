.class final Lcom/google/android/gms/internal/ads/zzgtq;
.super Lcom/google/android/gms/internal/ads/zzgts;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgts;-><init>([B)V

    return-void
.end method

.method static final zzf(I)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 0

    .line 0
    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgts;->zzi()Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgts;->zzj()Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgts;->zzh()Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 0

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtq;->zzf(I)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(II)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtq;->zzf(I)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ZZ)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtq;->zzf(I)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgts;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtq;->zzf(I)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object p1

    return-object p1
.end method

.method public final zze()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
