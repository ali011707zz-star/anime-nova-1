.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzbl$zza;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;->zzy()Lcom/google/android/gms/internal/ads/zzbgj$zzbl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzbl$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;->zzb()Z

    move-result v0

    return v0
.end method

.method public zzc(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzbl$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;->zzu(Z)V

    return-object p0
.end method

.method public zzg(I)Lcom/google/android/gms/internal/ads/zzbgj$zzbl$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzbl;->zzw(I)V

    return-object p0
.end method
