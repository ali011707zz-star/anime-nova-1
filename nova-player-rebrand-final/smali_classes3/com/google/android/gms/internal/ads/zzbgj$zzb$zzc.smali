.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb;->zzC()Lcom/google/android/gms/internal/ads/zzbgj$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzb;->zzx(Lcom/google/android/gms/internal/ads/zzbgj$zzb$zza;)V

    return-object p0
.end method
