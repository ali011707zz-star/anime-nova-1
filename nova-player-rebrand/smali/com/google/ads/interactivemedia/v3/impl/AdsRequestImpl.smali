.class public final Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/zzbh;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;,
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;,
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

.field private zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

.field private zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

.field private zzg:Ljava/lang/Float;

.field private zzh:Ljava/util/List;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/Float;

.field private zzl:Ljava/lang/Float;

.field private zzn:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

.field private zzo:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

.field private transient zzp:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;->zza:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzo:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    return-void
.end method


# virtual methods
.method public final getAdTagUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsResponse()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredLinearOrientation()Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzo:Lcom/google/ads/interactivemedia/v3/api/VideoOrientation;

    return-object v0
.end method

.method public final getSecureSignals()Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzp:Ljava/lang/Object;

    return-object v0
.end method

.method public final setAdTagUrl(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    return-void
.end method

.method public final setAdsResponse(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzb:Ljava/lang/String;

    return-void
.end method

.method public final setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method

.method public final setContinuousPlayback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->ON:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->OFF:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    return-void
.end method

.method public final setUserRequestContext(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzp:Ljava/lang/Object;

    return-void
.end method

.method public final setVastLoadTimeout(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzk:Ljava/lang/Float;

    return-void
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzen;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzek;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzek;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-object v0
.end method

.method public final zzd()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    return-object v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    return-object v0
.end method

.method public final zzf()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    return-object v0
.end method

.method public final zzg()Ljava/lang/Float;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzg:Ljava/lang/Float;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzh:Ljava/util/List;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/Float;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzk:Ljava/lang/Float;

    return-object v0
.end method

.method public final zzk()Ljava/lang/Float;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzl:Ljava/lang/Float;

    return-object v0
.end method
