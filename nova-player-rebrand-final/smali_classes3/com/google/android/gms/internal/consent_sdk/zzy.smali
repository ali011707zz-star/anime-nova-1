.class final Lcom/google/android/gms/internal/consent_sdk/zzy;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

.field private zzd:I

.field private zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zzcn;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    sget-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/consent_sdk/zzab;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

    iget v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzh(Z)V

    add-int/lit8 v2, v1, -0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    const-string v7, "Invalid response from server."

    const/4 v8, 0x2

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 14
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Publisher misconfiguration: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1
    :pswitch_1
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid response from server: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v1

    :pswitch_2
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    goto :goto_1

    .line 6
    :pswitch_3
    iput v8, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    goto :goto_1

    :pswitch_4
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    .line 4
    :goto_1
    iget v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_a

    if-eq v2, v4, :cond_2

    if-ne v2, v8, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    goto :goto_2

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 13
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    sget-object v1, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v2, v6

    goto :goto_3

    .line 12
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    iget-object v7, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzb:Ljava/lang/String;

    invoke-direct {v2, v7, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    iget-object v7, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzf:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzk(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    move-result-object v1

    new-instance v7, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 9
    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzj(Ljava/util/Set;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    .line 11
    iget v7, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzb:I

    add-int/lit8 v9, v7, -0x1

    if-eqz v7, :cond_8

    if-eqz v9, :cond_7

    if-eq v9, v4, :cond_6

    if-ne v9, v8, :cond_5

    .line 12
    const-string v7, "clear"

    goto :goto_5

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    invoke-direct {v0, v6, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    const-string v7, "write"

    goto :goto_5

    :cond_7
    move-object v7, v6

    :goto_5
    if-eqz v7, :cond_4

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zze;

    move-result-object v9

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzao;

    move-result-object v10

    new-array v11, v4, [Lcom/google/android/gms/internal/consent_sdk/zzd;

    aput-object v10, v11, v3

    invoke-virtual {v9, v7, v1, v11}, Lcom/google/android/gms/internal/consent_sdk/zze;->zzb(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzd;)V

    goto :goto_4

    .line 11
    :cond_8
    throw v6

    .line 12
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzab;

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/google/android/gms/internal/consent_sdk/zzab;-><init>(ILcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zzaa;)V

    return-object v0

    .line 5
    :cond_a
    throw v6

    .line 2
    :cond_b
    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
