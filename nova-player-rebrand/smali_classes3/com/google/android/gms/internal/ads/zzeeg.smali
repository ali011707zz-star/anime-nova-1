.class public final Lcom/google/android/gms/internal/ads/zzeeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzcma;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfoo;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdej;

.field private final zzm:Ljava/lang/Object;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/util/List;

.field private zzp:Landroid/os/Bundle;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzcac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzcac;Lcom/google/android/gms/internal/ads/zzehb;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzdej;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljava/lang/Object;

    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzm:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzf:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzi:Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzB()Lcom/google/android/gms/internal/ads/zzfka;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzq:Lcom/google/android/gms/internal/ads/zzcac;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzk:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzl:Lcom/google/android/gms/internal/ads/zzdej;

    return-void
.end method

.method private final zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-string v1, ""

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenv;

    const/16 v2, 0xf

    const-string v3, "Invalid ad string."

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Landroid/content/Context;

    const/16 v3, 0xb

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfoe$-CC;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfoe;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zza()Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v6

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcma;->zzx()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v5

    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbsq;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v2

    const-string v4, "google.afma.response.normalize"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbsw;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    .line 7
    invoke-virtual {v2, v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzbsz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;

    move-result-object v2

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzia:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "1"

    const-string v6, "sst"

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "fetch_url"

    .line 11
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzn:Ljava/lang/String;

    new-instance v9, Lorg/json/JSONObject;

    const-string v10, "settings"

    .line 12
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "nofill_urls"

    .line 13
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 14
    invoke-static {v7, v4}, Lcom/google/android/gms/ads/internal/util/zzbp;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzo:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v8, p1

    .line 15
    :catch_1
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v7, "Invalid ad response."

    .line 16
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzn:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzo:Ljava/util/List;

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    const-string v8, "2"

    .line 18
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzic:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzib:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrr;->zzb(Ljava/util/regex/Pattern;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzgrr;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenv;

    const-string v4, "Invalid fetch URL."

    .line 25
    invoke-direct {v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto/16 :goto_1

    .line 26
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 28
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    move-object v11, v7

    new-instance v10, Lcom/google/android/gms/internal/ads/zzegy;

    new-instance v13, Ljava/util/HashMap;

    .line 29
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    const/16 v16, 0x0

    const v12, 0xea60

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeed;

    invoke-direct {v4, v0, v10}, Lcom/google/android/gms/internal/ads/zzeed;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzegy;)V

    .line 32
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzid:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    invoke-static {v1, v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeee;

    invoke-direct {v4, v0, v9}, Lcom/google/android/gms/internal/ads/zzeee;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Ljava/util/List;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzf:Ljava/util/concurrent/Executor;

    const-class v6, Ljava/lang/Exception;

    .line 37
    invoke-static {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzg;

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 39
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v8, p1

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 41
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeef;

    move-object/from16 v5, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzeef;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzf:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeeb;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzeeb;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzbsp;)V

    .line 43
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeec;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;)V

    .line 44
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzi:Lcom/google/android/gms/internal/ads/zzfoo;

    .line 45
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfon;->zzd(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeea;

    .line 46
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzeea;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;)V

    .line 47
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 46
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzdxh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzif:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private final zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ad_types"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "unknown"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    .line 4
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const-string v1, "Failed to update the ad types for rendering. "

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final zzj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcM:Lcom/google/android/gms/internal/ads/zzbgv;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzt:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzp:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzo:Lcom/google/android/gms/internal/ads/zzdxh;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzhW:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "&request_id="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v1, v1, 0xc

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 28
    :cond_1
    const-string v1, ""

    .line 13
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzm:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcma;->zzt()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 16
    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdxt;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_9

    const-string v2, "Failed to decode the adResponse. "

    .line 19
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_9

    .line 20
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "extras"

    .line 21
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v11, "query_info_type"

    const-string v12, ""

    .line 22
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhe;->zzhY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v11

    .line 24
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhe;->zzhZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v11

    .line 26
    check-cast v11, Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 37
    :cond_4
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhe;->zzhX:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v11

    .line 28
    check-cast v11, Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 29
    :goto_1
    invoke-static {v10}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_5

    goto/16 :goto_6

    .line 46
    :cond_5
    :try_start_2
    const-string v10, "&"

    .line 30
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v4, :cond_6

    .line 31
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v8

    .line 32
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    const/16 v10, 0xb

    .line 33
    :try_start_3
    invoke-static {v4, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    const-string v11, "Failed to get key from QueryJSONMap"

    .line 35
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_8

    :goto_3
    move-object v11, v8

    goto :goto_4

    .line 36
    :cond_8
    :try_start_4
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "arek"

    .line 37
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v12

    .line 38
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v11

    const-string v13, "CryptoUtils.getKeyFromQueryJsonMap"

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :goto_4
    invoke-static {v4, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzfka;->zzb([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdxt;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 41
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    const-string v6, "PreloadedLoader.decryptAdResponseIfNecessary"

    .line 43
    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    :catch_2
    :cond_9
    :goto_6
    const-string v2, "Ad grouping: Has render_id, but not base64 encoded: "

    const-string v4, "Ad grouping: Has render_id, but invalid format: "

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 45
    :cond_a
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v10, "render_id"

    const-string v11, ""

    .line 46
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 50
    :catch_3
    const-string v6, ""

    .line 47
    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v11, Ljava/lang/String;

    .line 48
    invoke-static {v6, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v10, v11

    goto :goto_8

    :catch_4
    move-exception v11

    .line 49
    :try_start_a
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    const-string v12, "PreloadedLoader.decodeRenderId"

    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    const/16 v2, 0x3a

    .line 48
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgqq;->zzc(C)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrr;->zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzgrr;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 54
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const/4 v4, 0x1

    .line 55
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_9

    .line 56
    :cond_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_c
    move v2, v9

    :goto_9
    if-eqz v8, :cond_d

    .line 55
    new-instance v4, Landroid/util/Pair;

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 80
    :cond_d
    new-instance v4, Landroid/util/Pair;

    const-string v2, ""

    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    :goto_a
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 60
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    if-lez v4, :cond_f

    .line 62
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    const-string v1, "The ad has already been shown."

    const/16 v2, 0xa

    .line 63
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 64
    :cond_e
    invoke-virtual {v5, v1, v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zze(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 65
    :cond_f
    invoke-virtual {v5, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzc(Ljava/lang/String;)V

    .line 66
    :cond_10
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 67
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_c

    .line 80
    :cond_11
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzeeg;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 66
    :goto_b
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 67
    :cond_12
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_15

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzhO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_d

    .line 79
    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeeg;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzcma;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcma;->zzt()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzc(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v2

    const-string v3, "request_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_d
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ridmm"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    .line 75
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbsp;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcM:Lcom/google/android/gms/internal/ads/zzbgv;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxh;->zzp:Lcom/google/android/gms/internal/ads/zzdxh;

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

    .line 7
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbsp;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfiz;-><init>(Lcom/google/android/gms/internal/ads/zzfjk;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzp:Landroid/os/Bundle;

    .line 3
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzfjb;->zza(Ljava/io/Reader;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfjb;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfjc;-><init>(Lcom/google/android/gms/internal/ads/zzfiz;Lcom/google/android/gms/internal/ads/zzfjb;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzegy;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxh;->zzI:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeeg;->zzh(Lcom/google/android/gms/internal/ads/zzdxh;)V

    const-string v0, "Received HTTP error code from ad server:"

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x1

    .line 2
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzie:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzq:Lcom/google/android/gms/internal/ads/zzcac;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeha;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcac;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzeha;->zzb(Lcom/google/android/gms/internal/ads/zzegy;)Lcom/google/android/gms/internal/ads/zzegz;

    move-result-object v2

    .line 6
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzegz;->zza:I

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzif:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzj:Lcom/google/android/gms/internal/ads/zzdxt;

    const-string v6, "fr"

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_1
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdxh;->zzJ:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzh(Lcom/google/android/gms/internal/ads/zzdxh;)V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzenv;

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Fetch failed."

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct {v0, v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final synthetic zze(Ljava/util/List;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    const-string v0, "PreloadedLoader.getTypeTwoAdResponseString"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzenv;

    .line 4
    invoke-direct {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzenv;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzenv;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenv;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p2, "Fetch failed."

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(ILjava/lang/String;)V

    move-object p2, v0

    .line 7
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p1, :cond_8

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    .line 9
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0.6.0.0"

    if-nez v3, :cond_6

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "timeout"

    const-string v4, "0.2.0.0"

    goto :goto_3

    .line 21
    :cond_5
    const-string v1, "Received HTTP error code from ad server:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x3a

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgqq;->zzc(C)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrr;->zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgrr;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    :cond_6
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@gw_adnetstatus@"

    .line 18
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@error_code@"

    .line 19
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzk:Lcom/google/android/gms/internal/ads/zzfqk;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfqk;->zza(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 22
    :cond_8
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzdej;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzl:Lcom/google/android/gms/internal/ads/zzdej;

    return-object v0
.end method
