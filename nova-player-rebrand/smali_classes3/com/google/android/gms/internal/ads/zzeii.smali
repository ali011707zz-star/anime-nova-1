.class public final Lcom/google/android/gms/internal/ads/zzeii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbgd;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzehn;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeii;->zza:Lcom/google/android/gms/internal/ads/zzbgd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzc:Lcom/google/android/gms/internal/ads/zzehn;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzc:Lcom/google/android/gms/internal/ads/zzehn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeih;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeih;-><init>(Lcom/google/android/gms/internal/ads/zzeii;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzehn;->zza(Lcom/google/android/gms/internal/ads/zzfmu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Error in offline signals database startup: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzb(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    move-object/from16 v1, p0

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Landroid/content/Context;

    const-string v2, "OfflineUpload.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "serialized_proto_data"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2
    const-string v3, "offline_signal_contents"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzk([B)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    move-result-object v0

    .line 6
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v4, "Unable to deserialize proto from offline signals database:"

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzB()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    const/4 v0, 0x0

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzeic;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzo(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    .line 17
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    const/4 v4, 0x1

    .line 18
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzeic;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzs(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    const/4 v5, 0x3

    .line 20
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzeic;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 21
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzQ(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzw(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    const/4 v5, 0x2

    .line 23
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzeic;->zzd(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v6

    .line 24
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;->zzM(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    .line 26
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    move v9, v0

    move-wide v12, v7

    :goto_1
    if-ge v9, v6, :cond_3

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 27
    check-cast v14, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    .line 28
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzf()Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    if-ne v15, v0, :cond_2

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzb()J

    move-result-wide v15

    cmp-long v0, v15, v12

    if-lez v0, :cond_2

    .line 29
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzb()J

    move-result-wide v12

    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    cmp-long v0, v12, v7

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/ContentValues;

    .line 30
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "value"

    .line 31
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "statistic_name = \'last_successful_request_time\'"

    const-string v7, "offline_signal_statistics"

    .line 32
    invoke-virtual {v2, v7, v0, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeii;->zza:Lcom/google/android/gms/internal/ads/zzbgd;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzbgj$zzaf;)V

    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Lcom/google/android/gms/internal/ads/zzbgc;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzar;->zzs()Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;

    move-result-object v6

    iget v7, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    .line 35
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;->zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;

    iget v7, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 36
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    if-eq v4, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 37
    :goto_2
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;->zzk(I)Lcom/google/android/gms/internal/ads/zzbgj$zzar$zza;

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbgj$zzar;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeig;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzeig;-><init>(Lcom/google/android/gms/internal/ads/zzbgj$zzar;)V

    .line 39
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Lcom/google/android/gms/internal/ads/zzbgc;)V

    const/16 v3, 0x2714

    .line 40
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbgd;->zzc(I)V

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeic;->zzb(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_3
    return-object v10
.end method
