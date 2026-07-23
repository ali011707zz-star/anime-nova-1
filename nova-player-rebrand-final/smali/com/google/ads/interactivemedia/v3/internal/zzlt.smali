.class public final Lcom/google/ads/interactivemedia/v3/internal/zzlt;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field volatile zza:Z

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Landroid/os/ConditionVariable;

.field private volatile zzd:Z

.field private zze:Landroid/content/SharedPreferences;

.field private zzf:Landroid/os/Bundle;

.field private zzg:Landroid/content/Context;

.field private zzh:Lorg/json/JSONObject;

.field private zzi:Z

.field private zzj:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzf:Landroid/os/Bundle;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzh:Lorg/json/JSONObject;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzj:Z

    return-void
.end method

.method private final zze(Landroid/content/SharedPreferences;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzlq;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlq;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzpt;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzh:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "flag_configuration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    .line 2
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.gms"

    .line 3
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzf:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception v1

    goto/16 :goto_5

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzlo;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlo;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzlp;

    .line 10
    invoke-direct {v4, p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzlt;Landroid/content/SharedPreferences;)V

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzme;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzmc;)V

    :cond_7
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    const-wide/16 v4, 0x0

    if-nez v3, :cond_8

    .line 11
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzly;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 12
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    .line 13
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzlg;->zzb(Landroid/content/Context;)I

    move-result v6

    int-to-long v6, v6

    .line 14
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-ltz v3, :cond_8

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzj:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_8
    :try_start_4
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    if-nez v3, :cond_9

    .line 15
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzly;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 16
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    .line 17
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzlg;->zza(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    .line 18
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_9

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzj:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_9
    :try_start_6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    .line 19
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    .line 32
    :cond_a
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 20
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "admob"

    .line 21
    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzlr;

    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlr;-><init>(Landroid/content/SharedPreferences;)V

    .line 22
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzlw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzpt;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 23
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "local_flags_enabled"

    .line 24
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_b

    .line 19
    :goto_3
    :try_start_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_1
    :cond_b
    if-nez v1, :cond_c

    :try_start_9
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 26
    :cond_c
    :try_start_a
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzlo;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlo;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    if-nez v1, :cond_d

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 27
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzlf;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzg:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlf;->zza(Landroid/content/Context;)V

    :cond_d
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 29
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_e

    .line 30
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    .line 31
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze(Landroid/content/SharedPreferences;)V

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 32
    monitor-exit v0

    :goto_4
    return-void

    :goto_5
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 33
    throw v1

    .line 32
    :goto_6
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method final zzb()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzi:Z

    return v0
.end method

.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    .line 2
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzj:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzd:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzj:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzk()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzf:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zza(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzk()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzh:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzh:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzb(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzls;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzls;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzlt;Lcom/google/ads/interactivemedia/v3/internal/zzlm;)V

    .line 9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzpt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 4
    :cond_8
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zze()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method final synthetic zzd(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zze:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlm;->zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
