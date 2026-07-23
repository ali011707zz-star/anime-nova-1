.class final Lcom/google/android/gms/internal/ads/zzale;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public zza:Lcom/google/android/gms/internal/ads/zzaki;

.field public zzb:J

.field public zzc:J

.field public zzd:I

.field public zze:I

.field public zzf:[J

.field public zzg:[I

.field public zzh:[I

.field public zzi:[J

.field public zzj:[Z

.field public zzk:Z

.field public zzl:[Z

.field public zzm:Lcom/google/android/gms/internal/ads/zzald;

.field public final zzn:Lcom/google/android/gms/internal/ads/zzer;

.field public zzo:Z

.field public zzp:J

.field public zzq:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzf:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzg:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzh:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzi:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzj:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzn:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzer;->zza(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzk:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzo:Z

    return-void
.end method

.method public final zzb(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzl:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
