.class public final Lcom/google/android/gms/internal/ads/zzclv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field private final zzc:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzclv;->zza:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzclv;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object p0

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzh:Z

    if-eqz v0, :cond_2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzclv;

    invoke-direct {p0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object p0

    .line 4
    :cond_2
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object v1
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzclv;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object v0
.end method

.method public static zzc(II)Lcom/google/android/gms/internal/ads/zzclv;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzclv;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzclv;
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclv;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final zzf()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
