.class public final Lcom/google/android/gms/internal/consent_sdk/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:Ljava/util/List;

.field public zze:Ljava/util/List;

.field public zzf:Ljava/lang/String;

.field public zzg:I

.field public zzh:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 2
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    return-void
.end method

.method public static zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcn;
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcn;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 33
    :sswitch_0
    const-string v2, "consent_form_payload"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_2

    :sswitch_1
    const-string v2, "request_info_keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_2

    :sswitch_2
    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_2

    :sswitch_3
    const-string v2, "privacy_options_required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_2

    :sswitch_4
    const-string v2, "client_side_pingback_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_2

    :sswitch_5
    const-string v2, "consent_form_base_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    goto :goto_2

    :sswitch_6
    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_2

    :sswitch_7
    const-string v2, "consent_signal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v7

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzf:Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x70970855

    if-eq v2, v3, :cond_3

    const v3, 0x17371b9f

    if-eq v2, v3, :cond_2

    const v3, 0x19d1382a

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v7, v8

    goto :goto_3

    :cond_2
    const-string v2, "REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v7, v11

    goto :goto_3

    :cond_3
    const-string v2, "NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v7, v10

    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    if-eq v7, v11, :cond_6

    if-ne v7, v10, :cond_5

    goto :goto_4

    .line 37
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v9, v10

    goto :goto_4

    :cond_7
    move v9, v11

    .line 8
    :goto_4
    iput v9, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    goto/16 :goto_0

    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 11
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzcm;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 13
    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 14
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7d8028f6

    if-eq v3, v4, :cond_9

    const v4, 0x5e663ba3

    if-eq v3, v4, :cond_8

    goto :goto_7

    .line 18
    :cond_8
    const-string v3, "action_type"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v8

    goto :goto_8

    :cond_9
    const-string v3, "args_json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v11

    goto :goto_8

    :cond_a
    :goto_7
    move v2, v7

    :goto_8
    if-eqz v2, :cond_c

    if-eq v2, v11, :cond_b

    .line 19
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 16
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zza:Ljava/lang/String;

    goto :goto_6

    .line 17
    :cond_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x3d3be2d

    if-eq v3, v4, :cond_f

    const v4, 0x4f05fbf

    if-eq v3, v4, :cond_e

    const v4, 0x6ea5670e

    if-eq v3, v4, :cond_d

    goto :goto_9

    :cond_d
    const-string v3, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v8

    goto :goto_a

    :cond_e
    const-string v3, "WRITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v11

    goto :goto_a

    :cond_f
    const-string v3, "CLEAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v10

    goto :goto_a

    :cond_10
    :goto_9
    move v3, v7

    :goto_a
    if-eqz v3, :cond_13

    if-eq v3, v11, :cond_12

    if-ne v3, v10, :cond_11

    move v2, v9

    goto :goto_b

    .line 35
    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    move v2, v10

    goto :goto_b

    :cond_13
    move v2, v11

    .line 18
    :goto_b
    iput v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzb:I

    goto/16 :goto_6

    .line 20
    :cond_14
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 25
    :goto_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 27
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 28
    :cond_16
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 29
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    goto/16 :goto_0

    .line 30
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzb:Ljava/lang/String;

    goto/16 :goto_0

    .line 31
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza:Ljava/lang/String;

    goto/16 :goto_0

    .line 32
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_d

    :sswitch_8
    const-string v2, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v5

    goto :goto_d

    :sswitch_9
    const-string v2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v11

    goto :goto_d

    :sswitch_a
    const-string v2, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v9

    goto :goto_d

    :sswitch_b
    const-string v2, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v3

    goto :goto_d

    :sswitch_c
    const-string v2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v10

    goto :goto_d

    :sswitch_d
    const-string v2, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v8

    goto :goto_d

    :sswitch_e
    const-string v2, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v4

    goto :goto_d

    :sswitch_f
    const-string v2, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v7, v6

    :cond_17
    :goto_d
    packed-switch v7, :pswitch_data_1

    .line 5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    const/16 v3, 0x8

    goto :goto_e

    :pswitch_9
    move v3, v4

    goto :goto_e

    :pswitch_a
    move v3, v5

    goto :goto_e

    :pswitch_b
    move v3, v6

    goto :goto_e

    :pswitch_c
    move v3, v9

    goto :goto_e

    :pswitch_d
    move v3, v10

    goto :goto_e

    :pswitch_e
    move v3, v11

    .line 33
    :goto_e
    :pswitch_f
    iput v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    goto/16 :goto_0

    .line 38
    :cond_18
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x774ac593 -> :sswitch_7
        -0x738f0f30 -> :sswitch_6
        -0x6e5c3749 -> :sswitch_5
        -0x67601003 -> :sswitch_4
        -0x4ef2d809 -> :sswitch_3
        -0x453fb703 -> :sswitch_2
        -0x3ad17acb -> :sswitch_1
        -0x2f244ae8 -> :sswitch_0
    .end sparse-switch

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

    :sswitch_data_1
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_f
        -0x755d1a4a -> :sswitch_e
        -0x4b527788 -> :sswitch_d
        -0x38e1da9b -> :sswitch_c
        -0x36c1e70c -> :sswitch_b
        0x19984e10 -> :sswitch_a
        0x1be36b13 -> :sswitch_9
        0x66d8a81d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
