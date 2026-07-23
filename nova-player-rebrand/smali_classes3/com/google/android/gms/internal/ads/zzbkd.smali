.class public final Lcom/google/android/gms/internal/ads/zzbkd;
.super Lcom/google/android/gms/internal/ads/zzbkr;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Landroid/graphics/drawable/Drawable;

.field private final zzb:Landroid/net/Uri;

.field private final zzc:D

.field private final zzd:I

.field private final zze:I

.field private final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DIILjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zza:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzb:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzc:D

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzd:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zze:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zza:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzc:D

    return-wide v0
.end method

.method public final zze()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzd:I

    return v0
.end method

.method public final zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zze:I

    return v0
.end method

.method public final zzg()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkd;->zzf:Ljava/util/Map;

    return-object v0
.end method
