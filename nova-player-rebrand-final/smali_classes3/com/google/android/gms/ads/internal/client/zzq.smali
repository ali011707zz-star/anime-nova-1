.class public final Lcom/google/android/gms/ads/internal/client/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzek;)Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 31

    move-object/from16 v0, p2

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzc()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    :goto_0
    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    move-object v6, v3

    goto :goto_0

    .line 3
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzh(Landroid/content/Context;)Z

    move-result v7

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzd(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzf()Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzv([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_2

    :cond_1
    move-object/from16 v18, v3

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzm()Z

    move-result v19

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzex;->zzb()Lcom/google/android/gms/ads/internal/client/zzex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzp()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzj()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v5

    .line 11
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    .line 13
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzb()Ljava/util/List;

    move-result-object v23

    .line 15
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzi()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzk()Landroid/os/Bundle;

    move-result-object v15

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzl()Ljava/util/Set;

    move-result-object v3

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzg()Ljava/lang/String;

    move-result-object v17

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzo()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzn()Ljava/lang/String;

    move-result-object v25

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzq()J

    move-result-wide v27

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzek;->zzr()J

    move-result-wide v29

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    .line 19
    invoke-direct/range {v0 .. v30}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfx;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJJ)V

    return-object v0
.end method
