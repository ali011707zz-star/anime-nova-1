.class public final Lcom/google/android/gms/internal/ads/zzcyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;
.implements Lcom/google/android/gms/internal/ads/zzdjy;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbzn;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private zzg:Z

.field private zzh:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfor;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzh:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzd:Lcom/google/android/gms/internal/ads/zzfor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzf:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbje;->zzo:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    .line 11
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbje;->zzp:Lcom/google/android/gms/internal/ads/zzbio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbje;->zzn:Lcom/google/android/gms/internal/ads/zzbio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :catch_0
    :cond_3
    move v3, v1

    goto :goto_1

    .line 5
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzi()Lcom/google/android/gms/internal/ads/zzcdp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "local_flag_write"

    .line 7
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "client"

    .line 8
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "service"

    .line 9
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzd:Lcom/google/android/gms/internal/ads/zzfor;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzbsq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v0

    goto :goto_2

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzd:Lcom/google/android/gms/internal/ads/zzfor;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/internal/ads/zzbsq;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzbsq;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfor;)Lcom/google/android/gms/internal/ads/zzbsz;

    move-result-object v0

    :goto_2
    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbsw;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    .line 14
    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzbsz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbss;Lcom/google/android/gms/internal/ads/zzbsr;)Lcom/google/android/gms/internal/ads/zzbsp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzf:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbzq;

    .line 15
    invoke-direct {v5, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbsp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/Executor;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zza:Lcom/google/android/gms/internal/ads/zzbzn;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzg:Z

    .line 1
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzg:Z

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zza:Lcom/google/android/gms/internal/ads/zzbzn;

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzn;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzh:Z

    if-nez v1, :cond_9

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbiw;->zzi:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcyp;-><init>(Lcom/google/android/gms/internal/ads/zzcyq;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzf:Ljava/util/concurrent/Executor;

    .line 18
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_9
    const-string v1, "persistFlagsClient"

    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcyq;->zzc()V

    return-void
.end method

.method public final zzdO(Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcyq;->zzc()V

    return-void
.end method

.method public final zzdP(Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcyq;->zzc()V

    return-void
.end method

.method final synthetic zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgp;->zze(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyq;->zzh:Z

    return-void
.end method
