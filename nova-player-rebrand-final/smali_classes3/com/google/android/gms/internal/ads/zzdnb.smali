.class public final Lcom/google/android/gms/internal/ads/zzdnb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdop;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Lcom/google/android/gms/ads/internal/client/zzdf;

.field private final zzD:Lcom/google/android/gms/internal/ads/zzddu;

.field private final zzE:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final zzF:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzG:Lcom/google/android/gms/internal/ads/zzczz;

.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzc:Lorg/json/JSONObject;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdtk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdoh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdbx;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdbd;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdjk;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzk:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzcss;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzdpm;

.field private final zzo:Lcom/google/android/gms/common/util/Clock;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzdjg;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzdva;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzfoo;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzejf;

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Landroid/graphics/Point;

.field private zzz:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdor;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/internal/ads/zzdoh;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzdbx;Lcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzdjk;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcss;Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdjg;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdva;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzczz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzx:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzA:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzB:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzb:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzg:Lcom/google/android/gms/internal/ads/zzdbx;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzh:Lcom/google/android/gms/internal/ads/zzdbd;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzi:Lcom/google/android/gms/internal/ads/zzdjk;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzk:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzl:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzm:Lcom/google/android/gms/internal/ads/zzcss;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzn:Lcom/google/android/gms/internal/ads/zzdpm;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzo:Lcom/google/android/gms/common/util/Clock;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzp:Lcom/google/android/gms/internal/ads/zzdjg;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzq:Lcom/google/android/gms/internal/ads/zzfqk;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzs:Lcom/google/android/gms/internal/ads/zzfoo;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzt:Lcom/google/android/gms/internal/ads/zzejf;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzr:Lcom/google/android/gms/internal/ads/zzdva;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzE:Lcom/google/android/gms/internal/ads/zzdpi;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzD:Lcom/google/android/gms/internal/ads/zzddu;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzF:Lcom/google/android/gms/ads/internal/zzb;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzG:Lcom/google/android/gms/internal/ads/zzczz;

    return-void
.end method

.method private final zzG(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final zzH(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "3099"

    return-object p1

    :cond_3
    const-string p1, "2099"

    return-object p1

    :cond_4
    const-string p1, "1099"

    return-object p1
.end method

.method private final zzI()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final zzJ()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpf:Lcom/google/android/gms/internal/ads/zzbgv;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzF:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzb;->zza()V

    :cond_0
    return-void
.end method

.method private final zzK(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 3
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 4
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 5
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 6
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 7
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzes:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "view_signals"

    .line 10
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object p4, p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    :try_start_2
    const-string p1, "policy_validator_enabled"

    .line 11
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzj(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzph:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzG:Lcom/google/android/gms/internal/ads/zzczz;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_1

    const-string p2, "placement_id"

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide p3

    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :try_start_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzjU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p3, "/clickRecorded"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdmy;

    .line 20
    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzdmy;-><init>(Lcom/google/android/gms/internal/ads/zzdnb;[B)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 30
    :cond_2
    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p3, "/logScionEvent"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdmx;

    .line 21
    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzdmx;-><init>(Lcom/google/android/gms/internal/ads/zzdnb;[B)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p3, "/nativeImpression"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdmz;

    .line 22
    invoke-direct {p4, p0, p8, p2}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(Lcom/google/android/gms/internal/ads/zzdnb;Landroid/view/View;[B)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string p2, "/nativeImpressionFlowControl"

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdna;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzq:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzs:Lcom/google/android/gms/internal/ads/zzfoo;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 p8, 0x0

    move-object p4, p0

    .line 23
    :try_start_7
    invoke-direct/range {p3 .. p8}, Lcom/google/android/gms/internal/ads/zzdna;-><init>(Lcom/google/android/gms/internal/ads/zzdnb;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;[B)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtk;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zzu:Z

    if-nez p1, :cond_3

    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zzk:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zzl:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/ads/internal/util/zzax;

    move-result-object p6

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzC:Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 30
    invoke-virtual {p6, p2, p3, p1, p5}, Lcom/google/android/gms/ads/internal/util/zzax;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzdnb;->zzu:Z

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p4, p0

    goto :goto_2

    .line 26
    :goto_3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Unable to create impression JSON."

    .line 27
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final zzL(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzes:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazh;->zzb()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzazc;->zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Exception getting data."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final zzA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zzb()V

    return-void
.end method

.method final synthetic zzB(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzE:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfir;)V

    return-void
.end method

.method final synthetic zzC()Lcom/google/android/gms/internal/ads/zzdbx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzg:Lcom/google/android/gms/internal/ads/zzdbx;

    return-object v0
.end method

.method final synthetic zzD()Lcom/google/android/gms/internal/ads/zzdbd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzh:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object v0
.end method

.method final synthetic zzE()Lcom/google/android/gms/internal/ads/zzdjk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzi:Lcom/google/android/gms/internal/ads/zzdjk;

    return-object v0
.end method

.method final synthetic zzF()Lcom/google/android/gms/internal/ads/zzddu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzD:Lcom/google/android/gms/internal/ads/zzddu;

    return-object v0
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzv:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzp:Lcom/google/android/gms/internal/ads/zzdjg;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjg;->zza(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzv:Z

    .line 4
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzm:Lcom/google/android/gms/internal/ads/zzcss;

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcss;->zzo(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzk:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(I)Z

    move-result p1

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 14
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p5, 0x0

    .line 17
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    .line 2
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzp:Lcom/google/android/gms/internal/ads/zzdjg;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdjg;->zzb(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzv:Z

    return-void
.end method

.method public final zzc(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .locals 11

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    move-object/from16 v5, p6

    invoke-static {v3, p3, p4, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzbs;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2
    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, v4

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v7, v5

    .line 4
    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzH(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    .line 6
    invoke-static {v2, v3, v9, v10}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzf(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbhe;->zzez:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v10, v9, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v6

    move-object v6, v2

    move-object v2, v7

    move-object v7, v3

    move-object v3, v0

    move-object v0, p0

    move/from16 v9, p5

    .line 9
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzdnb;->zzi(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzdnb;->zzi(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 13

    if-nez p1, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Click data is null. No click is reported."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzl(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 9
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzdnb;->zzi(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v4, "allow_sdk_custom_click_gesture"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzmX:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-nez v5, :cond_3

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzx:Z

    if-nez v4, :cond_1

    .line 4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzI()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    .line 7
    invoke-static {v4, v0, v6, v2, v7}, Lcom/google/android/gms/ads/internal/util/zzbs;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v6

    .line 8
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    move v8, v5

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v9, v6

    .line 10
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v10, p1

    .line 11
    invoke-direct {v1, v10, v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzH(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    .line 12
    invoke-static {v10, v4, v0, v11}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzf(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v8, :cond_6

    :try_start_0
    const-string v8, "custom_click_gesture_signal"

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    .line 13
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    new-instance v14, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "y"

    const-string v1, "x"

    if-eqz v0, :cond_4

    .line 16
    :try_start_3
    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 18
    iget v0, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    iget v0, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "start_point"

    .line 20
    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "end_point"

    .line 21
    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration_ms"

    move/from16 v1, p7

    .line 22
    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    .line 29
    :goto_2
    :try_start_4
    const-string v1, "Error occurred while grabbing custom click gesture signals."

    .line 23
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 24
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_3
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_4
    move-object v8, v4

    move-object v4, v9

    goto :goto_5

    :catch_2
    move-exception v0

    .line 26
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Error occurred while adding CustomClickGestureSignals to adJson."

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "FirstPartyNativeAdCore.performCustomClickGesture"

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v7, v10

    move/from16 v10, p5

    .line 30
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzdnb;->zzi(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzx:Z

    return-void
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzI()Z

    move-result v0

    return v0
.end method

.method protected final zzi(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 5

    .line 1
    const-string v0, "tracking_urls_and_actions"

    const-string v1, "has_custom_click_handler"

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzJ()V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ad"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "asset_view_signal"

    .line 4
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 5
    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 6
    invoke-virtual {v2, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 7
    invoke-virtual {v2, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 8
    invoke-virtual {v2, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzb:Lcom/google/android/gms/internal/ads/zzdor;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzS()Ljava/lang/String;

    move-result-object p4

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzdor;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p7, 0x1

    if-eqz p4, :cond_0

    move p4, p7

    goto :goto_0

    :cond_0
    move p4, p5

    .line 10
    :goto_0
    invoke-virtual {v2, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p4, "provided_signals"

    .line 11
    invoke-virtual {v2, p4, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p4, Lorg/json/JSONObject;

    .line 12
    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p8, "asset_id"

    .line 13
    invoke-virtual {p4, p8, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "template"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzx()I

    move-result p8

    .line 14
    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p6, "view_aware_api_used"

    .line 15
    invoke-virtual {p4, p6, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "custom_mute_requested"

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzl:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p8, p8, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    if-eqz p8, :cond_1

    iget-boolean p8, p8, Lcom/google/android/gms/internal/ads/zzbkh;->zzg:Z

    if-eqz p8, :cond_1

    move p8, p7

    goto :goto_1

    :cond_1
    move p8, p5

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 16
    :goto_1
    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p6, "custom_mute_enabled"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzE()Ljava/util/List;

    move-result-object p8

    .line 17
    invoke-interface {p8}, Ljava/util/List;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzF()Lcom/google/android/gms/ads/internal/client/zzez;

    move-result-object p8

    if-eqz p8, :cond_2

    move p8, p7

    goto :goto_2

    :cond_2
    move p8, p5

    .line 18
    :goto_2
    invoke-virtual {p4, p6, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzn:Lcom/google/android/gms/internal/ads/zzdpm;

    .line 19
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdpm;->zzb()Lcom/google/android/gms/internal/ads/zzbmj;

    move-result-object p6

    if-eqz p6, :cond_3

    const-string p6, "custom_one_point_five_click_enabled"

    .line 20
    invoke-virtual {v4, p6, p5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p6

    if-eqz p6, :cond_3

    const-string p6, "custom_one_point_five_click_eligible"

    .line 21
    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p6, "timestamp"

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzo:Lcom/google/android/gms/common/util/Clock;

    .line 22
    invoke-interface {p8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p8

    invoke-virtual {p4, p6, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzx:Z

    if-eqz p6, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzI()Z

    move-result p6

    if-eqz p6, :cond_4

    const-string p6, "custom_click_gesture_eligible"

    .line 24
    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p6, "is_custom_click_gesture"

    .line 25
    invoke-virtual {p4, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdoh;->zzS()Ljava/lang/String;

    move-result-object p3

    .line 26
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzdor;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object p2

    if-eqz p2, :cond_6

    move p5, p7

    .line 27
    :cond_6
    invoke-virtual {p4, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "click_signals"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    .line 28
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    if-nez p5, :cond_7

    new-instance p5, Lorg/json/JSONObject;

    .line 29
    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_7
    :goto_3
    const-string p6, "click_string"

    .line 30
    invoke-virtual {p5, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    .line 31
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzazh;->zzb()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object p6

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    invoke-interface {p6, p8, p5, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zzg(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 54
    :goto_4
    :try_start_2
    const-string p5, "Exception obtaining click signals"

    .line 32
    sget p6, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 33
    invoke-static {p5, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p3

    .line 34
    :goto_5
    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "open_chrome_custom_tab"

    .line 35
    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzjY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "try_fallback_for_deep_link"

    .line 38
    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzjZ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    .line 41
    invoke-virtual {p4, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "click"

    .line 42
    invoke-virtual {v2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    .line 43
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzo:Lcom/google/android/gms/common/util/Clock;

    .line 44
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    const-string p2, "time_from_last_touch_down"

    iget-wide p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzA:J

    sub-long p6, p4, p6

    .line 45
    invoke-virtual {p1, p2, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "time_from_last_touch"

    iget-wide p6, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzB:J

    sub-long/2addr p4, p6

    .line 46
    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 47
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfir;->zzb()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    const-string p2, "gws_query_id"

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_a
    if-eqz p3, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzt:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdoh;)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 51
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 52
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 53
    :goto_6
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Unable to create click JSON."

    .line 54
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzh(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzo:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzB:J

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzr:Lcom/google/android/gms/internal/ads/zzdva;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdva;->zza(Landroid/view/InputEvent;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzA:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzz:Landroid/graphics/Point;

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzy:Landroid/graphics/Point;

    .line 6
    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzazh;->zzc(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzJ()V

    return-void
.end method

.method public final zzk(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazh;->zzb()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zze(III)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzJ()V

    return-void
.end method

.method public final zzl(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbs;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p2

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p4

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asset_view_signal"

    .line 6
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 7
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 8
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 9
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 10
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Unable to create native ad view signals JSON."

    .line 11
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzm(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdnb;->zzl(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzx:Z

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzI()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "custom_click_gesture_eligible"

    const/4 p4, 0x1

    .line 4
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string p3, "nas"

    .line 5
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p2

    .line 6
    :goto_1
    sget p3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p3, "Unable to create native click meta data JSON."

    .line 7
    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public final zzn()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdnb;->zzK(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzn:Lcom/google/android/gms/internal/ads/zzdpm;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpm;->zzc:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbmj;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzn:Lcom/google/android/gms/internal/ads/zzdpm;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(Lcom/google/android/gms/internal/ads/zzbmj;)V

    return-void
.end method

.method public final zzq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzn:Lcom/google/android/gms/internal/ads/zzdpm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzc()V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zzdj;)V
    .locals 4

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zze:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzF()Lcom/google/android/gms/ads/internal/client/zzez;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzw:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzq:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdoh;->zzF()Lcom/google/android/gms/ads/internal/client/zzez;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzez;->zzf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzs:Lcom/google/android/gms/internal/ads/zzfoo;

    .line 5
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzddu;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzt()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzw:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzq:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdj;->zzf()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzs:Lcom/google/android/gms/internal/ads/zzfoo;

    .line 2
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzddu;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "#007 Could not call remote method."

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/ads/internal/client/zzdf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzC:Lcom/google/android/gms/ads/internal/client/zzdf;

    return-void
.end method

.method public final zzt()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzC:Lcom/google/android/gms/ads/internal/client/zzdf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdf;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :goto_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzu()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzl:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmX:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbkh;->zzi:I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzv()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzu()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmX:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzl:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbkh;->zzj:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbs;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzL(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v9, p1

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzdnb;->zzK(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    return-void
.end method

.method public final zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zza:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1, p4}, Lcom/google/android/gms/ads/internal/util/zzbs;->zze(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p2

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p4

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzj:Lcom/google/android/gms/internal/ads/zzfir;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;)Z

    move-result v2

    .line 6
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ad"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "asset_view_signal"

    .line 8
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 9
    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 10
    invoke-virtual {v3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 11
    invoke-virtual {v3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzes:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzL(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "view_signals"

    .line 15
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "policy_validator_enabled"

    .line 16
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzj(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 18
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string p2, "google.afma.nativeAds.handleNativeAdSignalsLogging"

    .line 19
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "Error during performing handleNativeAdSignalsLogging"

    .line 20
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :goto_1
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Unable to create native ad signals logging JSON."

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzy()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzc:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnb;->zzd:Lcom/google/android/gms/internal/ads/zzdtk;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, ""

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzz(Landroid/os/Bundle;)Z
    .locals 11

    .line 1
    const-string v0, "impression_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdnb;->zzG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzl(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmT:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdnb;->zzL(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 8
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzdnb;->zzK(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/view/View;)Z

    move-result p1

    return p1
.end method
