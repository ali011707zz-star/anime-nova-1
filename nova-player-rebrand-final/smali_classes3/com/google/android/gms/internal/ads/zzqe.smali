.class public final Lcom/google/android/gms/internal/ads/zzqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzd;

.field private zzc:Landroid/media/AudioDeviceInfo;

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzv;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzd:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzqe;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    return-object p0
.end method

.method public final zzb(Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzqe;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzc:Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzqe;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzd:I

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzqe;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zze:I

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzqe;
    .locals 0

    .line 0
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzf:I

    return-object p0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zza:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    return-object v0
.end method

.method final synthetic zzh()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzc:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method final synthetic zzi()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzd:I

    return v0
.end method

.method final synthetic zzj()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zze:I

    return v0
.end method

.method final synthetic zzk()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqe;->zzf:I

    return v0
.end method
