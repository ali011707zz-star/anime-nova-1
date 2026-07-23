.class final Lcom/google/android/gms/internal/consent_sdk/zzw;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Landroid/os/Handler;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzbq;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field private final zzg:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzh:Lcom/google/android/gms/internal/consent_sdk/zze;

.field private final zzi:Lcom/google/android/gms/internal/consent_sdk/zzcr;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzad;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzn;Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Landroid/app/Application;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzn;

    iput-object p8, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzz;

    iput-object p9, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzh:Lcom/google/android/gms/internal/consent_sdk/zze;

    iput-object p10, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzw;Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/ump/ConsentRequestParameters;->getConsentDebugSettings()Lcom/google/android/ump/ConsentDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentDebugSettings;->isTestDevice()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Landroid/app/Application;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzct;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to set this as a debug device."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserMessagingPlatform"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;)Lcom/google/android/gms/internal/consent_sdk/zzcl;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzcl;)Lcom/google/android/gms/internal/consent_sdk/zzcn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzcn;)Lcom/google/android/gms/internal/consent_sdk/zzab;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iget v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzab;->zza:I

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzg(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzab;->zzb:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzi(Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iget-object v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzab;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzbs;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzg(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzh:Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/consent_sdk/zze;->zza()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzu;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/gms/internal/consent_sdk/zzab;)V

    .line 13
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "RequestConsentUpdate RuntimeException. "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzg(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 16
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Caught exception when trying to request consent info update: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzs;

    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/consent_sdk/zzs;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestConsentUpdate exception. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", cause: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzg(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzr;

    invoke-direct {p2, p4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzr;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/gms/internal/consent_sdk/zzab;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzt;-><init>(Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p2, Lcom/google/android/gms/internal/consent_sdk/zzab;->zzb:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 2
    sget-object p2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zze:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzc()V

    :cond_0
    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/consent_sdk/zzcl;)Lcom/google/android/gms/internal/consent_sdk/zzcn;
    .locals 8

    .line 1
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://fundingchoicesmessages.google.com/a/consent"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Landroid/app/Application;

    .line 3
    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 5
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x7530

    .line 6
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v3, "POST"

    .line 8
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 9
    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 10
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    new-instance v4, Landroid/util/JsonWriter;

    invoke-direct {v4, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 12
    :try_start_2
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zza:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, "admob_app_id"

    .line 13
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 14
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v6, "consent_syncing_id"

    .line 15
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 16
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_1
    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzch;

    if-eqz v5, :cond_7

    const-string v6, "device_info"

    .line 17
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 18
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzc:I

    if-eq v6, v2, :cond_4

    const-string v7, "os_type"

    .line 19
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_3

    if-eq v6, v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    const-string v2, "ANDROID"

    .line 20
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 107
    :cond_3
    const-string v2, "UNKNOWN"

    .line 21
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 19
    :cond_4
    :goto_1
    iget-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zza:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v6, "model"

    .line 22
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 23
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_5
    iget-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzb:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    const-string v5, "android_api_level"

    .line 24
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 25
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 26
    :cond_6
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v5, "language_code"

    .line 27
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 28
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    const-string v5, "tag_for_under_age_of_consent"

    .line 29
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:Ljava/util/Map;

    .line 31
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "stored_infos_map"

    .line 32
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 33
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 34
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 36
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_2

    .line 37
    :cond_a
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcj;

    if-eqz v2, :cond_15

    const-string v5, "screen_info"

    .line 38
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 39
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza:Ljava/lang/Integer;

    if-eqz v5, :cond_c

    const-string v6, "width"

    .line 40
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 41
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_c
    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzb:Ljava/lang/Integer;

    if-eqz v5, :cond_d

    const-string v6, "height"

    .line 42
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 43
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_d
    iget-object v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzc:Ljava/lang/Double;

    if-eqz v5, :cond_e

    const-string v6, "density"

    .line 44
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 45
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_e
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzd:Ljava/util/List;

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "screen_insets"

    .line 47
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 48
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzci;

    .line 50
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzci;->zza:Ljava/lang/Integer;

    if-eqz v6, :cond_f

    const-string v7, "top"

    .line 51
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 52
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_f
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzb:Ljava/lang/Integer;

    if-eqz v6, :cond_10

    const-string v7, "left"

    .line 53
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 54
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_10
    iget-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzc:Ljava/lang/Integer;

    if-eqz v6, :cond_11

    const-string v7, "right"

    .line 55
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 56
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    :cond_11
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzd:Ljava/lang/Integer;

    if-eqz v5, :cond_12

    const-string v6, "bottom"

    .line 57
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 58
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 59
    :cond_12
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_3

    .line 60
    :cond_13
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 61
    :cond_14
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_15
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "version"

    if-eqz v2, :cond_19

    :try_start_3
    const-string v6, "app_info"

    .line 62
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 63
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zza:Ljava/lang/String;

    if-eqz v6, :cond_16

    const-string v7, "package_name"

    .line 64
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 65
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_16
    iget-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzb:Ljava/lang/String;

    if-eqz v6, :cond_17

    const-string v7, "publisher_display_name"

    .line 66
    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 67
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_17
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzc:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 68
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 69
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 70
    :cond_18
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_19
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzck;

    if-eqz v2, :cond_1b

    const-string v6, "sdk_info"

    .line 71
    invoke-virtual {v4, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 72
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzck;->zza:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 73
    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 74
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 75
    :cond_1a
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1b
    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzj:Ljava/util/List;

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "debug_params"

    .line 77
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 78
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v2, "GEO_OVERRIDE_USFL"

    .line 81
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_1
    const-string v2, "PREVIEWING_DEBUG_MESSAGES"

    .line 82
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_2
    const-string v2, "GEO_OVERRIDE_NON_EEA"

    .line 83
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_3
    const-string v2, "GEO_OVERRIDE_OTHER"

    .line 84
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_4
    const-string v2, "GEO_OVERRIDE_REGULATED_US_STATE"

    .line 85
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_5
    const-string v2, "GEO_OVERRIDE_EEA"

    .line 86
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_6
    const-string v2, "ALWAYS_SHOW"

    .line 87
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    :pswitch_7
    const-string v2, "DEBUG_PARAM_UNKNOWN"

    .line 88
    invoke-virtual {v4, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_4

    .line 89
    :cond_1c
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 90
    :cond_1d
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v2, 0xc8

    const-string v3, "\\A"

    if-ne p1, v2, :cond_1f

    .line 95
    :try_start_6
    const-string p1, "x-ump-using-header"

    .line 96
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 97
    new-instance v0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcn;

    move-result-object p1

    new-instance v0, Ljava/util/Scanner;

    .line 99
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_c

    :catch_1
    move-exception p1

    goto/16 :goto_d

    :cond_1e
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 101
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 102
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 104
    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcn;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 105
    :try_start_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 107
    :try_start_a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v1

    .line 103
    :try_start_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 106
    :goto_6
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p1

    :try_start_e
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    .line 92
    :cond_1f
    new-instance v0, Ljava/util/Scanner;

    .line 93
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http error code - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catchall_5
    move-exception p1

    goto :goto_a

    .line 10
    :goto_8
    :try_start_f
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :goto_a
    :try_start_11
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    :try_start_12
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p1
    :try_end_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 109
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v1, 0x2

    .line 108
    const-string v2, "Error making request."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 20
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v1, 0x4

    .line 109
    const-string v2, "The server timed out."

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zzc(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/consent_sdk/zzv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
