.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcdh;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcda;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zze:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcdh;Lcom/google/android/gms/internal/ads/zzcda;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzb:Lcom/google/android/gms/internal/ads/zzcdh;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zze:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zziL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "Internal error. "

    const-string v3, "SignalGeneratorImpl.generateSignals"

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzb:Lcom/google/android/gms/internal/ads/zzcdh;

    .line 8
    invoke-static {v1, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzy(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcdh;)Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v1

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 10
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 p1, 0x0

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string v1, "Unknown format is no longer supported."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcda;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, ""

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 10

    .line 1
    const-string v0, "QueryInfo generation has been disabled."

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zze:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzN()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzb:Lcom/google/android/gms/internal/ads/zzcdh;

    .line 2
    invoke-static {v1, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzy(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcdh;)Lcom/google/android/gms/internal/ads/zzfoo;

    move-result-object v1

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zziF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "Internal error for request JSON: "

    const/4 v5, 0x0

    if-nez v2, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcda;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 9
    :cond_0
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    :cond_1
    const-string v0, "SignalGeneratorImpl.generateSignals.onSuccess"

    const-string v2, ""

    if-nez p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    .line 12
    invoke-interface {p1, v4, v4, v4}, Lcom/google/android/gms/internal/ads/zzcda;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 13
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    :cond_3
    :try_start_2
    iget-object v6, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 17
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_4

    .line 18
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzb:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_2
    :try_start_3
    const-string v4, "request_id"

    .line 25
    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p1, "The request ID is empty in request JSON."

    .line 27
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-eqz p1, :cond_5

    const-string v3, "Internal error: request ID is empty in request JSON."

    .line 29
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzcda;->zzb(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    const-string v3, "Request ID empty"

    .line 30
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    :cond_6
    :try_start_4
    iget-object v4, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzf:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zze:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzF()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzH()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 31
    invoke-virtual {v4, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzI()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzE()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzG()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzK()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzz()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzJ()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzL(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzK()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v4, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-eqz v6, :cond_b

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 37
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 39
    invoke-interface {v6, v7, p1, v4}, Lcom/google/android/gms/internal/ads/zzcda;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 15
    :cond_a
    iget-object v7, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzb:Ljava/lang/String;

    .line 38
    invoke-interface {v6, v7, p1, v4}, Lcom/google/android/gms/internal/ads/zzcda;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 40
    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    .line 46
    :goto_4
    :try_start_5
    const-string v3, "Failed to create JSON object from the request string."

    .line 19
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzc:Lcom/google/android/gms/internal/ads/zzcda;

    if-eqz v3, :cond_c

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzcda;->zzb(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 22
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v4

    .line 24
    invoke-virtual {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    return-void

    .line 8
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 41
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    .line 42
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 43
    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    :cond_d
    return-void

    .line 14
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbix;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoo;->zzh()V

    .line 46
    :cond_e
    throw p1
.end method
