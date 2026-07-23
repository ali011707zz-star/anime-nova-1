.class public final Lcom/google/android/gms/internal/ads/zzeyy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzb:Landroid/content/pm/PackageInfo;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjk;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zzb:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbkh;->zzi:I

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbkh;->zzj:Z

    const-string v2, "sccg_tap"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sccg_dir"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "native_version"

    if-eqz v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    .line 3
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "native_templates"

    .line 5
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzi:Ljava/util/ArrayList;

    const-string v4, "native_custom_templates"

    .line 6
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzj:Lcom/google/android/gms/internal/ads/zzbkh;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zza:I

    const-string v7, "any"

    const-string v8, "landscape"

    const-string v9, "portrait"

    const-string v10, "unknown"

    if-le v6, v2, :cond_6

    const-string v6, "enable_native_media_orientation"

    .line 7
    invoke-virtual {p1, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzh:I

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_4

    if-eq v6, v2, :cond_3

    const/4 v11, 0x4

    if-eq v6, v11, :cond_2

    move-object v6, v10

    goto :goto_0

    .line 13
    :cond_2
    const-string v6, "square"

    goto :goto_0

    :cond_3
    move-object v6, v9

    goto :goto_0

    :cond_4
    move-object v6, v8

    goto :goto_0

    :cond_5
    move-object v6, v7

    .line 7
    :goto_0
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "native_media_orientation"

    .line 8
    invoke-virtual {p1, v11, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzc:I

    if-eqz v6, :cond_9

    if-eq v6, v5, :cond_8

    if-eq v6, v4, :cond_7

    move-object v7, v10

    goto :goto_1

    :cond_7
    move-object v7, v8

    goto :goto_1

    :cond_8
    move-object v7, v9

    :cond_9
    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "native_image_orientation"

    .line 9
    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzd:Z

    const-string v7, "native_multiple_images"

    .line 10
    invoke-virtual {p1, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzg:Z

    const-string v7, "use_custom_mute"

    .line 11
    invoke-virtual {p1, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeyy;->zzc(Landroid/os/Bundle;)V

    :cond_b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zzb:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_c

    goto :goto_2

    .line 13
    :cond_c
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 12
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()I

    move-result v7

    if-le v3, v7, :cond_d

    .line 15
    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzt()V

    .line 16
    invoke-interface {v6, v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzf(I)V

    .line 17
    :cond_d
    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzs()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 19
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "native_advanced_settings"

    .line 21
    invoke-virtual {p1, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzl:I

    if-le v3, v5, :cond_10

    const-string v6, "max_num_ads"

    .line 22
    invoke-virtual {p1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/internal/ads/zzbqs;

    if-eqz v0, :cond_15

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbqs;->zzc:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbqs;->zza:I

    const-string v6, "p"

    const-string v7, "l"

    if-lt v3, v4, :cond_12

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbqs;->zzd:I

    if-eq v0, v4, :cond_11

    if-eq v0, v2, :cond_13

    :cond_11
    :goto_3
    move-object v6, v7

    goto :goto_4

    .line 36
    :cond_12
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbqs;->zzb:I

    if-eq v0, v5, :cond_11

    if-eq v0, v4, :cond_13

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Instream ad video aspect ratio "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is wrong."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_13
    :goto_4
    const-string v0, "ia_var"

    .line 25
    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 24
    :cond_14
    const-string v0, "ad_tag"

    .line 26
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_5
    const-string v0, "instr"

    .line 27
    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    :cond_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzno:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v1, :cond_17

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzf:Lcom/google/android/gms/ads/internal/client/zzga;

    if-eqz v0, :cond_16

    new-instance v2, Landroid/os/Bundle;

    .line 30
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "startMuted"

    iget-boolean v4, v0, Lcom/google/android/gms/ads/internal/client/zzga;->zza:Z

    .line 31
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "clickToExpandRequested"

    iget-boolean v4, v0, Lcom/google/android/gms/ads/internal/client/zzga;->zzc:Z

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "customControlsRequested"

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzga;->zzb:Z

    .line 33
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "video"

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zzb:Z

    const-string v2, "disable_image_loading"

    .line 35
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbkh;->zze:I

    const-string v1, "preferred_ad_choices_position"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    :goto_6
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyy;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzh:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Landroid/os/Bundle;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeyy;->zzc(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
