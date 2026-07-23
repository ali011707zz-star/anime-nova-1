.class public final Lcom/google/android/gms/internal/ads/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:[B

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzh;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzi;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzi;->zze:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzh;->zzd:[B

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzh;->zze:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzi;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    return-object p0
.end method

.method public final zzd([B)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zzd:[B

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zze:I

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzh;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzi;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzh;->zzd:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzh;->zze:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzi;-><init>(III[BII[B)V

    return-object v0
.end method
