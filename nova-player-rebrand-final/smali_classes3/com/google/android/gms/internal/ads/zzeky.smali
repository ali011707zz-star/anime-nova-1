.class public final Lcom/google/android/gms/internal/ads/zzeky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzctl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzctl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeky;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeky;->zzb:Lcom/google/android/gms/internal/ads/zzctl;

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
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeky;->zza:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 6
    new-instance v6, Lcom/google/android/gms/internal/ads/zzekx;

    const/4 p1, 0x0

    .line 4
    invoke-direct {v6, p3, p1}, Lcom/google/android/gms/internal/ads/zzekx;-><init>(Lcom/google/android/gms/internal/ads/zzekj;[B)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbtz;

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbvs;->zzs(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbvd;Lcom/google/android/gms/internal/ads/zzbtz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 4
    const-string p2, "Remote exception loading an app open RTB ad"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjr;

    .line 6
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeme;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbvs;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzbvs;Lcom/google/android/gms/ads/AdFormat;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwv;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzekj;->zza:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkr;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdkr;-><init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzcjl;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzctj;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzaa:I

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzctj;-><init>(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeky;->zzb:Lcom/google/android/gms/internal/ads/zzctl;

    .line 3
    invoke-virtual {p2, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzctl;->zzf(Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdkr;Lcom/google/android/gms/internal/ads/zzctj;)Lcom/google/android/gms/internal/ads/zzcti;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()Lcom/google/android/gms/internal/ads/zzdbx;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeme;->zzc(Lcom/google/android/gms/internal/ads/zzdbx;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzekj;->zzc:Lcom/google/android/gms/internal/ads/zzdcp;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzg()Lcom/google/android/gms/internal/ads/zzepe;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc(Lcom/google/android/gms/internal/ads/zzbtz;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcti;->zzh()Lcom/google/android/gms/internal/ads/zzctr;

    move-result-object p1

    return-object p1
.end method
