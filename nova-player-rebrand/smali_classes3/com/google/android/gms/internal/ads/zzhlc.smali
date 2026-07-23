.class public final Lcom/google/android/gms/internal/ads/zzhlc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhlg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhqf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhqf;Lcom/google/android/gms/internal/ads/zzhye;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhlc;->zzb:Lcom/google/android/gms/internal/ads/zzhqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhlc;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;-><init>(Lcom/google/android/gms/internal/ads/zzhqf;Lcom/google/android/gms/internal/ads/zzhye;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhln;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;-><init>(Lcom/google/android/gms/internal/ads/zzhqf;Lcom/google/android/gms/internal/ads/zzhye;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzhqf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlc;->zzb:Lcom/google/android/gms/internal/ads/zzhqf;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhlc;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method
