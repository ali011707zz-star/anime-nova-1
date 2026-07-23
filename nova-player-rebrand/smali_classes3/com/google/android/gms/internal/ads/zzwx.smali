.class final Lcom/google/android/gms/internal/ads/zzwx;
.super Lcom/google/android/gms/internal/ads/zzaae;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaac;Lcom/google/android/gms/internal/ads/zzbg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaae;-><init>(Lcom/google/android/gms/internal/ads/zzaac;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzaae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzwx;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaae;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbg;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzbg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    return-object v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaae;->zzd()Lcom/google/android/gms/internal/ads/zzaac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaah;->zzf(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzv;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaae;->zzd()Lcom/google/android/gms/internal/ads/zzaac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaac;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwx;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    return-object v0
.end method
