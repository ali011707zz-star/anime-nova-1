.class public final Lcom/google/android/gms/internal/ads/zzbff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzbx;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/ads/internal/client/zzek;

.field private final zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbtp;

.field private final zzg:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzek;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzf:Lcom/google/android/gms/internal/ads/zzbtp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzd:Lcom/google/android/gms/ads/internal/client/zzek;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbff;->zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzg:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzb:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzf:Lcom/google/android/gms/internal/ads/zzbtp;

    .line 4
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/google/android/gms/ads/internal/client/zzaz;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbff;->zza:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzd:Lcom/google/android/gms/ads/internal/client/zzek;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzp(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zza:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbes;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbff;->zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 6
    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzbes;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzJ(Lcom/google/android/gms/internal/ads/zzbfa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zza:Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzg:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 7
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzek;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zze(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v1, "#007 Could not call remote method."

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
