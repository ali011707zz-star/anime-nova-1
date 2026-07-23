.class final Lcom/google/android/gms/internal/ads/zzfjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjl;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcrv;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfqk;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeiu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:Lcom/google/android/gms/internal/ads/zzcrv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzc:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzd:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzai:Z

    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzly:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:Lcom/google/android/gms/internal/ads/zzcrv;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcrv;->zzc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzc:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzh()Ljava/util/Random;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcrv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfqk;Ljava/util/Random;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzc:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v4, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzddu;)V

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaC()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Common configuration cannot be null"

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v0, "BufferingGmsgHandlers.getBufferingClickGmsgHandler"

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v2, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzs(Landroid/content/Context;)Z

    move-result p1

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzhh:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzS:Z

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzad:Lcom/google/android/gms/internal/ads/zzbxy;

    if-eqz v2, :cond_4

    move v8, v7

    :cond_4
    const/4 v2, 0x2

    if-nez p1, :cond_5

    if-nez v3, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move v7, v2

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    move-wide v1, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeiw;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjs;->zzd:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zze(Lcom/google/android/gms/internal/ads/zzeiw;)V

    return-void
.end method
