.class public final Lcom/google/android/gms/internal/ads/zzdqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdop;
.implements Lcom/google/android/gms/internal/ads/zzdgh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbui;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdbx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzddy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdbd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdjk;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfjk;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzbue;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzbuf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbuf;Lcom/google/android/gms/internal/ads/zzbui;Lcom/google/android/gms/internal/ads/zzdbx;Lcom/google/android/gms/internal/ads/zzddy;Lcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzdjk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzk:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzc:Lcom/google/android/gms/internal/ads/zzddy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzd:Lcom/google/android/gms/internal/ads/zzdbd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zze:Lcom/google/android/gms/internal/ads/zzdjk;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzf:Landroid/content/Context;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzi:Lcom/google/android/gms/internal/ads/zzfjk;

    return-void
.end method

.method private static final zzB(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzi(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbui;->zzu()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzd:Lcom/google/android/gms/internal/ads/zzdbd;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbd;->onAdClicked()V

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zze:Lcom/google/android/gms/internal/ads/zzdjk;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjk;->zzdu()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbue;->zzq()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbue;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzd:Lcom/google/android/gms/internal/ads/zzdbd;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbd;->onAdClicked()V

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zze:Lcom/google/android/gms/internal/ads/zzdjk;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjk;->zzdu()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuf;->zzo()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzd:Lcom/google/android/gms/internal/ads/zzdbd;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbd;->onAdClicked()V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzmj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zze:Lcom/google/android/gms/internal/ads/zzdjk;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjk;->zzdu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 19
    :goto_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Failed to call handleClick"

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zzA()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbui;->zzC()V
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

    const-string v1, "Failed to call destroy"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzfir;->zzaj:Lorg/json/JSONObject;

    .line 2
    sget-object p5, Lcom/google/android/gms/internal/ads/zzbhe;->zzcd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p5

    .line 2
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_e

    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance p5, Ljava/util/HashMap;

    .line 4
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    move-object p5, p2

    :goto_0
    if-nez p3, :cond_2

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    .line 6
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v2, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p5

    .line 10
    :catch_1
    :cond_3
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 11
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    :cond_4
    :goto_3
    move v0, v5

    goto/16 :goto_5

    .line 14
    :cond_5
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzce:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 16
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "3010"

    .line 17
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 18
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbui;->zzq()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 28
    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_8

    .line 19
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbue;->zzw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_9

    .line 20
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :cond_9
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_a

    .line 21
    :try_start_6
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    :cond_a
    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_c
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzf:Landroid/content/Context;

    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    :catchall_0
    :cond_d
    if-ge v7, v6, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 27
    :try_start_9
    invoke-static {v8, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 28
    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v8, :cond_d

    goto/16 :goto_2

    .line 2
    :cond_e
    :goto_5
    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzl:Z

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdqj;->zzB(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 30
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdqj;->zzB(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz p4, :cond_f

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 32
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 33
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbui;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_6

    :cond_f
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz p4, :cond_10

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 35
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 36
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbue;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 37
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzbue;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_6

    :cond_10
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;

    if-eqz p4, :cond_11

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 39
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 40
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbuf;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 41
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    :cond_11
    :goto_6
    return-void

    .line 42
    :goto_7
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Failed to call trackView"

    .line 43
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbue;->zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 5
    :goto_0
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Failed to call untrackView"

    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzk:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzL:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqj;->zzi(Landroid/view/View;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdG()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbui;->zzt()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzaD:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbui;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 4
    :goto_1
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Failed to report impression from an adapter"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzdH()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzf(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzk:Z

    if-nez p1, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzL:Z

    if-nez p1, :cond_1

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqj;->zzi(Landroid/view/View;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzk:Z

    return-void
.end method

.method public final zzh()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzL:Z

    return v0
.end method

.method public final zzj(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzk(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzl(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzm(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzn()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzbmj;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzq()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zzdj;)V
    .locals 0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/ads/internal/client/zzdf;)V
    .locals 0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzu()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzv()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzw(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzj:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzC:Lorg/json/JSONObject;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/ads/internal/util/zzax;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzf:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p4, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzi:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, p3, p4, p1, v0}, Lcom/google/android/gms/ads/internal/util/zzax;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzj:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzl:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zza:Lcom/google/android/gms/internal/ads/zzbui;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzg:Lcom/google/android/gms/internal/ads/zzfir;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzaD:Z

    if-eqz p3, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzt()Z

    move-result p2

    if-nez p2, :cond_6

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzv()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzt()Z

    move-result p3

    if-eqz p3, :cond_3

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzc:Lcom/google/android/gms/internal/ads/zzddy;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddy;->zza()V

    return-void

    .line 5
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbui;->zzv()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzm:Lcom/google/android/gms/internal/ads/zzbue;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbue;->zzp()Z

    move-result p2

    if-nez p2, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbue;->zzm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzn:Lcom/google/android/gms/internal/ads/zzbuf;

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzn()Z

    move-result p2

    if-nez p2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuf;->zzk()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqj;->zzb:Lcom/google/android/gms/internal/ads/zzdbx;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbx;->zza()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    .line 17
    :goto_2
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Failed to call recordImpression"

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzx(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzy()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzz(Landroid/os/Bundle;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method
