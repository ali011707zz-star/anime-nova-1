.class public final Lcom/google/android/gms/internal/ads/zzuh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzun;

.field public final zzb:Landroid/media/MediaFormat;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzv;

.field public final zzd:Landroid/view/Surface;

.field public final zze:Landroid/media/MediaCrypto;

.field public final zzf:Lcom/google/android/gms/internal/ads/zzug;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzun;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzug;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzun;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zze:Landroid/media/MediaCrypto;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzf:Lcom/google/android/gms/internal/ads/zzug;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzun;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzuh;
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuh;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzuh;-><init>(Lcom/google/android/gms/internal/ads/zzun;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzug;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzun;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzuh;
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuh;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzuh;-><init>(Lcom/google/android/gms/internal/ads/zzun;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzug;)V

    return-object v0
.end method
