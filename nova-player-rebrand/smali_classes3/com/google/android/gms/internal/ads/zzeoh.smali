.class public final Lcom/google/android/gms/internal/ads/zzeoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdue;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzb:Lcom/google/android/gms/internal/ads/zzdue;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbvs;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzZ:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbvs;->zzo(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzp:Lcom/google/android/gms/internal/ads/zzfiy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfiy;->zza:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeog;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzeog;-><init>(Lcom/google/android/gms/internal/ads/zzeoh;Lcom/google/android/gms/internal/ads/zzekj;[B)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbtz;

    move-object v3, p2

    .line 6
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbvs;->zzp(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbtz;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeog;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzeog;-><init>(Lcom/google/android/gms/internal/ads/zzeoh;Lcom/google/android/gms/internal/ads/zzekj;[B)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbtz;

    move-object v3, p2

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbvs;->zzl(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvp;Lcom/google/android/gms/internal/ads/zzbtz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeme;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvs;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzbvs;Lcom/google/android/gms/ads/AdFormat;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzekj;->zza:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdub;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdub;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zzb:Lcom/google/android/gms/internal/ads/zzdue;

    .line 2
    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzdue;->zzf(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdub;)Lcom/google/android/gms/internal/ads/zzdua;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzeme;->zzc(Lcom/google/android/gms/internal/ads/zzdbx;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    .line 4
    check-cast p2, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdua;->zzn()Lcom/google/android/gms/internal/ads/zzepd;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc(Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdua;->zzh()Lcom/google/android/gms/internal/ads/zzdtz;

    move-result-object p1

    return-object p1
.end method
