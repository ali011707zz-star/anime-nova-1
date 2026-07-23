.class public final Lcom/google/android/gms/internal/ads/zzbyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field private static zze:Lcom/google/android/gms/internal/ads/zzcdd;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/AdFormat;

.field private final zzc:Lcom/google/android/gms/ads/internal/client/zzek;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzek;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Lcom/google/android/gms/ads/internal/client/zzek;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcdd;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbyj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Lcom/google/android/gms/internal/ads/zzcdd;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzj(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzcdd;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Lcom/google/android/gms/internal/ads/zzcdd;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Lcom/google/android/gms/internal/ads/zzcdd;

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Landroid/content/Context;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbyj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcdd;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Lcom/google/android/gms/ads/internal/client/zzek;

    if-nez v5, :cond_1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzn;

    .line 5
    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzn;-><init>()V

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzn;->zzi(J)Lcom/google/android/gms/ads/internal/client/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzn;->zza()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzp(J)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 8
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzek;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    goto :goto_0

    .line 6
    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcdh;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Lcom/google/android/gms/internal/ads/zzbyj;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzcdd;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcdh;Lcom/google/android/gms/internal/ads/zzcda;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    const-string v0, "Internal Error."

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
