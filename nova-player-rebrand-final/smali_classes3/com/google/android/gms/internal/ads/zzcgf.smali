.class public final Lcom/google/android/gms/internal/ads/zzcgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Z


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbhq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbht;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/zzbf;

.field private final zzh:[J

.field private final zzi:[Ljava/lang/String;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzcfk;

.field private zzp:Z

.field private zzq:Z

.field private zzr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzh()Ljava/util/Random;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzog:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>()V

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2
    const-string v1, "min_1"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 3
    const-string v1, "1_5"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 4
    const-string v1, "5_10"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 5
    const-string v1, "10_20"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    .line 6
    const-string v1, "20_30"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 7
    const-string v1, "30_max"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbe;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/ads/internal/util/zzbe;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbe;->zzb()Lcom/google/android/gms/ads/internal/util/zzbf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:Lcom/google/android/gms/ads/internal/util/zzbf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzm:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzr:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Lcom/google/android/gms/internal/ads/zzbht;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:Lcom/google/android/gms/internal/ads/zzbhq;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzak:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:[Ljava/lang/String;

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    return-void

    :cond_0
    const-string p2, ","

    .line 11
    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length p2, p1

    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:[Ljava/lang/String;

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    move p2, v0

    .line 13
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    .line 14
    aget-object p4, p1, p2

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    aput-wide p4, p3, p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 15
    sget p4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p4, "Unable to parse frame hash target time number."

    .line 16
    invoke-static {p4, p3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    .line 17
    aput-wide v1, p3, p2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 3

    .line 1
    const-string v0, "vpc2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Lcom/google/android/gms/internal/ads/zzbht;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Z

    const-string v0, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zza()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzo:Lcom/google/android/gms/internal/ads/zzcfk;

    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzk:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Lcom/google/android/gms/internal/ads/zzbht;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:Lcom/google/android/gms/internal/ads/zzbhq;

    const-string v2, "vfr2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzk:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzp:Z

    if-nez v0, :cond_3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "native-player-metrics"

    .line 2
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:Ljava/lang/String;

    const-string v1, "request"

    .line 3
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzo:Lcom/google/android/gms/internal/ads/zzcfk;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player"

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:Lcom/google/android/gms/ads/internal/util/zzbf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbf;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/ads/internal/util/zzbd;->zza:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/google/android/gms/ads/internal/util/zzbd;->zze:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "fps_c_"

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/gms/ads/internal/util/zzbd;->zzd:D

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fps_p_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:[Ljava/lang/String;

    .line 10
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 11
    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "fh_"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/util/zzs;->zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzp:Z

    :cond_3
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzl:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzm:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzm:Z

    if-nez v1, :cond_0

    const-string v1, "VideoMetricsMixin first frame"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Lcom/google/android/gms/internal/ads/zzbht;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:Lcom/google/android/gms/internal/ads/zzbhq;

    const-string v4, "vff2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzm:Z

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->nanoTime()J

    move-result-wide v3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzn:Z

    const-wide/16 v5, 0x1

    const-wide/16 v7, -0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzq:Z

    if-eqz v1, :cond_2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzr:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    long-to-double v9, v9

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzr:J

    sub-long v11, v3, v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:Lcom/google/android/gms/ads/internal/util/zzbf;

    long-to-double v11, v11

    div-double/2addr v9, v11

    .line 6
    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/ads/internal/util/zzbf;->zza(D)V

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzn:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzq:Z

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzr:J

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzal:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzh()I

    move-result v1

    int-to-long v9, v1

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_8

    .line 10
    aget-object v13, v12, v11

    if-eqz v13, :cond_4

    :cond_3
    move-object/from16 v13, p1

    const/16 v18, 0x0

    goto :goto_4

    :cond_4
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:[J

    .line 11
    aget-wide v14, v13, v11

    sub-long v14, v9, v14

    .line 12
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v13, v3, v13

    if-lez v13, :cond_3

    const/16 v3, 0x8

    move-object/from16 v13, p1

    .line 13
    invoke-virtual {v13, v3, v3}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x3f

    move-wide/from16 v16, v9

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v3, :cond_7

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v1, v3, :cond_6

    .line 14
    invoke-virtual {v4, v1, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    .line 15
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->red(I)I

    move-result v21

    add-int v20, v20, v21

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->green(I)I

    move-result v19

    add-int v3, v20, v19

    const/16 v5, 0x80

    if-le v3, v5, :cond_5

    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    :goto_3
    long-to-int v3, v13

    shl-long/2addr v5, v3

    or-long v16, v16, v5

    add-long/2addr v13, v7

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x8

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x8

    const-wide/16 v5, 0x1

    goto :goto_1

    :cond_7
    const/16 v18, 0x0

    .line 16
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v18

    const-string v1, "%016X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    aput-object v1, v12, v11

    return-void

    :goto_4
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v5, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final zze()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzn:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzk:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Lcom/google/android/gms/internal/ads/zzbht;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:Lcom/google/android/gms/internal/ads/zzbhq;

    const-string v3, "vfp2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbhl;->zza(Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/internal/ads/zzbhq;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzl:Z

    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzn:Z

    return-void
.end method
