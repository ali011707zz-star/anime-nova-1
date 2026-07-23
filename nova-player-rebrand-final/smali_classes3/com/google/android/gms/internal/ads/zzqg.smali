.class public final Lcom/google/android/gms/internal/ads/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private zzd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzqg;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzqg;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Z

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzqg;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzc:Z

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzqg;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:I

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzqh;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzc:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Lcom/google/android/gms/internal/ads/zzqg;[B)V

    return-object v0
.end method

.method final synthetic zzf()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    return v0
.end method

.method final synthetic zzg()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Z

    return v0
.end method

.method final synthetic zzh()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzc:Z

    return v0
.end method

.method final synthetic zzi()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:I

    return v0
.end method
