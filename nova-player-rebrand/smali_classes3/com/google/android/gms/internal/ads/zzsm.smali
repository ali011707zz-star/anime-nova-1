.class public final Lcom/google/android/gms/internal/ads/zzsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzpz;
    .locals 7

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcj;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "offloadVariableRateSupported"

    .line 4
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "offloadVariableRateSupported=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    .line 5
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Ljava/lang/Boolean;

    goto :goto_1

    .line 6
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Ljava/lang/Boolean;

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2
    :goto_2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    .line 8
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzC(I)I

    move-result v6

    if-ge v0, v6, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzB(I)I

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    :try_start_0
    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 12
    invoke-virtual {v6, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_7

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_5

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzpy;-><init>()V

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    move v4, v5

    .line 20
    :cond_6
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 21
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 22
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzpy;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpy;->zzd()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object p1

    return-object p1

    .line 24
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api29$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpy;-><init>()V

    .line 27
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 28
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzpy;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpy;->zzd()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object p1

    return-object p1

    .line 16
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    .line 30
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    .line 10
    :cond_a
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    .line 1
    :cond_b
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1
.end method
