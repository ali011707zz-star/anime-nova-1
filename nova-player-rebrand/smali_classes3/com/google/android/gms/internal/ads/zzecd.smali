.class public final Lcom/google/android/gms/internal/ads/zzecd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/AdRequest;

.field private zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

.field private zzc:Lcom/google/android/gms/ads/VideoOptions;

.field private zzd:Lcom/google/android/gms/ads/AdSize;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzd:Lcom/google/android/gms/ads/AdSize;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzf:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzg:Z

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_origin"

    const-string v2, "inspector_ooct"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zza:Lcom/google/android/gms/ads/AdRequest;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zza:Lcom/google/android/gms/ads/AdRequest;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzd:Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzc:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzg:Z

    return v0
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zza:Lcom/google/android/gms/ads/AdRequest;

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzd:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzb:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzc:Lcom/google/android/gms/ads/VideoOptions;

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzecd;->zzg:Z

    return-void
.end method
