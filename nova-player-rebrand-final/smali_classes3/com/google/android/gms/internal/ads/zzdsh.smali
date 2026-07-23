.class public final Lcom/google/android/gms/internal/ads/zzdsh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzduv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdtq;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzduv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzc:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzf:Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzg:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzh:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzd:Lcom/google/android/gms/internal/ads/zzdtq;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzi:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzj:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:Lcom/google/android/gms/ads/internal/client/zzga;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzh()Lcom/google/android/gms/internal/ads/zzckr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzh()Lcom/google/android/gms/internal/ads/zzckr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzckr;->zzc(Lcom/google/android/gms/ads/internal/client/zzga;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcem;->zzb()V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzj(Lcom/google/android/gms/internal/ads/zzcjl;)V

    const-string v0, "/video"

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzl:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzm:Lcom/google/android/gms/internal/ads/zzboh;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchs;-><init>()V

    const-string v1, "/precache"

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzp:Lcom/google/android/gms/internal/ads/zzboh;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzn:Lcom/google/android/gms/internal/ads/zzboh;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzg:Lcom/google/android/gms/internal/ads/zzboh;

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzbog;->zzb(Lcom/google/android/gms/internal/ads/zzdjm;Lcom/google/android/gms/internal/ads/zzcrv;)Lcom/google/android/gms/internal/ads/zzboh;

    move-result-object v1

    .line 8
    const-string v2, "/click"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/internal/ads/zzbqs;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzclj;->zzT(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbou;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzpf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v2, v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbou;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbwr;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzdae;)V

    const-string v0, "/open"

    .line 12
    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzclj;->zzT(Z)V

    .line 14
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzaw:Ljava/util/Map;

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbon;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbon;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "/logScionEvent"

    .line 19
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 20
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzclj;->zzi(Lcom/google/android/gms/ads/internal/zzb;)V

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzclj;->zzj(Lcom/google/android/gms/internal/ads/zzcce;)V

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zziP:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzj:Lcom/google/android/gms/internal/ads/zzdzc;

    if-eqz p2, :cond_5

    new-instance p3, Lcom/google/android/gms/internal/ads/zzbop;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbop;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    const-string p2, "/onDeviceStorageEvent"

    .line 26
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    :cond_5
    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 2

    .line 1
    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzh:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzclj;->zzR(Z)V

    const-string v0, "/getNativeAdViewSignals"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzs:Lcom/google/android/gms/internal/ads/zzboh;

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string v0, "/getNativeClickMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbog;->zzt:Lcom/google/android/gms/internal/ads/zzboh;

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzab(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzi:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzae:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsc;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;-><init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzb:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsg;-><init>(Lcom/google/android/gms/internal/ads/zzdsh;Lorg/json/JSONObject;)V

    .line 9
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzi:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzag:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsb;

    move-object v2, p0

    move-object v8, p1

    move-object v9, p2

    move-object v4, p3

    move-object v5, p4

    move-object v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzdsb;-><init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzb:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/internal/ads/zzbqs;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcem;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcem;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzclv;->zze()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaf(Lcom/google/android/gms/internal/ads/zzclv;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzclv;->zzd()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v0

    .line 3
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaf(Lcom/google/android/gms/internal/ads/zzclv;)V

    .line 4
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdsf;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdsf;-><init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V

    .line 5
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzclj;->zzG(Lcom/google/android/gms/internal/ads/zzclh;)V

    const-string v0, "google.afma.nativeAds.renderVideo"

    .line 6
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbrp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method final synthetic zzd(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzc:Lcom/google/android/gms/internal/ads/zzduv;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcem;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcem;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/internal/ads/zzbqs;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 3
    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzdsh;->zzi(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzclv;->zze()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v3

    .line 4
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaf(Lcom/google/android/gms/internal/ads/zzclv;)V

    goto/16 :goto_2

    :cond_0
    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 16
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzd:Lcom/google/android/gms/internal/ads/zzdtq;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdtq;->zza()Lcom/google/android/gms/internal/ads/zzdtn;

    move-result-object v8

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v7

    .line 7
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzpf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zze:Landroid/content/Context;

    new-instance v9, Lcom/google/android/gms/ads/internal/zzb;

    .line 9
    invoke-direct {v9, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzbzb;)V

    move-object v15, v9

    goto :goto_0

    :cond_1
    move-object v15, v3

    .line 10
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v6, 0x1

    if-eq v6, v3, :cond_2

    move-object/from16 v17, v4

    goto :goto_1

    :cond_2
    move-object/from16 v17, v5

    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzh:Lcom/google/android/gms/internal/ads/zzeiu;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzg:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzf:Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdsh;->zzj:Lcom/google/android/gms/internal/ads/zzdzc;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v9

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    move-object/from16 v22, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 12
    invoke-interface/range {v7 .. v29}, Lcom/google/android/gms/internal/ads/zzclj;->zzab(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbmx;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbmz;Lcom/google/android/gms/ads/internal/overlay/zzad;ZLcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbwy;Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzdjm;Lcom/google/android/gms/internal/ads/zzbpb;Lcom/google/android/gms/internal/ads/zzbov;Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdae;Lcom/google/android/gms/internal/ads/zzczz;)V

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdsh;->zzj(Lcom/google/android/gms/internal/ads/zzcjl;)V

    .line 14
    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdse;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdse;-><init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V

    .line 15
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzclj;->zzG(Lcom/google/android/gms/internal/ads/zzclh;)V

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    .line 16
    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzcjl;->zzau(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method final synthetic zze(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zzc:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p3, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzduv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object p3

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcem;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcem;

    move-result-object v0

    .line 4
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsh;->zzi(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;)V

    .line 5
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdsd;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsd;-><init>(Lcom/google/android/gms/internal/ads/zzcem;)V

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzclj;->zzH(Lcom/google/android/gms/internal/ads/zzcli;)V

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzeF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzcjl;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsh;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfjk;->zza:Lcom/google/android/gms/ads/internal/client/zzga;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzh()Lcom/google/android/gms/internal/ads/zzckr;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzh()Lcom/google/android/gms/internal/ads/zzckr;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzckr;->zzc(Lcom/google/android/gms/ads/internal/client/zzga;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcem;->zzb()V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    .line 4
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0xf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Html video Web View failed to load. Error code: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsh;->zzh(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    .line 4
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0xf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Native Video WebView failed to load. Error code: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsh;->zzh(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V

    return-void
.end method
