.class final Lcom/google/android/gms/internal/ads/zzsk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zzA:Z

.field private zzB:J

.field private final zza:Lcom/google/android/gms/internal/ads/zzsj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdn;

.field private final zzc:[J

.field private final zzd:Landroid/media/AudioTrack;

.field private final zze:I

.field private final zzf:J

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzrl;

.field private zzi:F

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/reflect/Method;

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzdn;Landroid/media/AudioTrack;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/media/AudioTrack;

    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzm:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p2, 0xa

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzc:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzy:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzrl;

    .line 3
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzrl;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzsj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzh:Lcom/google/android/gms/internal/ads/zzrl;

    .line 4
    invoke-virtual {p3}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zze:I

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzg:Z

    if-eqz p2, :cond_0

    .line 6
    div-int/2addr p6, p5

    int-to-long p2, p6

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzf:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzq:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzr:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzA:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzB:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzo:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzn:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzj:J

    return-void
.end method

.method private final zzg(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    sub-long/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(JF)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide p1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zza()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzj:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsj;->zzb(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzh(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzt:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzl()J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zze:I

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzj()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzk:J

    add-long/2addr p1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzv(JF)J

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzn:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzx:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zze:I

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method private final zzi()V
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzk:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzt:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzs:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzz:J

    return-void
.end method

.method private final zzj()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzk()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zze:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzr(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzk()J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzl()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzx:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzq:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzq:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzr:J

    .line 7
    :cond_4
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzq:J

    .line 5
    :cond_5
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzp:J

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzB:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzr:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzl()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzw:J

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzv(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zze:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzs(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzw:J

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final zza()J
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/media/AudioTrack;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()J

    move-result-wide v9

    div-long v12, v9, v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzl:J

    sub-long v9, v12, v9

    const-wide/16 v14, 0x7530

    cmp-long v2, v9, v14

    if-ltz v2, :cond_2

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzj()J

    move-result-wide v9

    cmp-long v2, v9, v6

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzc:[J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzs:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 5
    invoke-static {v9, v10, v14}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(JF)J

    move-result-wide v9

    sub-long/2addr v9, v12

    aput-wide v9, v2, v11

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzs:I

    add-int/2addr v9, v5

    const/16 v10, 0xa

    rem-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzs:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzt:I

    if-ge v9, v10, :cond_1

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzt:I

    :cond_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzl:J

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzk:J

    const/4 v9, 0x0

    :goto_0
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzt:I

    if-ge v9, v10, :cond_2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzk:J

    .line 6
    aget-wide v16, v2, v9

    int-to-long v10, v10

    div-long v16, v16, v10

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzk:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzg:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzm:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzo:J

    sub-long v9, v12, v9

    const-wide/32 v14, 0x7a120

    cmp-long v9, v9, v14

    if-ltz v9, :cond_4

    const/4 v9, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v2, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v10, v2

    mul-long/2addr v10, v3

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzf:J

    sub-long/2addr v10, v14

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzn:J

    .line 8
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzn:J

    const-wide/32 v14, 0x4c4b40

    cmp-long v2, v10, v14

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsj;

    .line 9
    invoke-interface {v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzsj;->zza(J)V

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzn:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 21
    :catch_0
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzm:Ljava/lang/reflect/Method;

    .line 9
    :cond_3
    :goto_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzo:J

    :cond_4
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzh:Lcom/google/android/gms/internal/ads/zzrl;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 10
    invoke-direct {v0, v12, v13}, Lcom/google/android/gms/internal/ads/zzsk;->zzh(J)J

    move-result-wide v15

    .line 11
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzrl;->zza(JFJ)V

    .line 4
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()J

    move-result-wide v9

    div-long/2addr v9, v3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzh:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrl;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 13
    invoke-virtual {v2, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzrl;->zze(JF)J

    move-result-wide v11

    goto :goto_3

    .line 14
    :cond_6
    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzsk;->zzh(J)J

    move-result-wide v11

    .line 15
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v8, :cond_a

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzrl;->zzc()Z

    move-result v1

    if-nez v1, :cond_8

    .line 16
    :cond_7
    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzsk;->zzg(J)V

    :cond_8
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzz:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9

    sub-long v1, v9, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzy:J

    sub-long v3, v11, v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzi:F

    .line 17
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzv(JF)J

    move-result-wide v1

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzy:J

    add-long/2addr v13, v1

    sub-long v15, v13, v11

    cmp-long v3, v3, v6

    .line 18
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    if-eqz v3, :cond_9

    const-wide/32 v6, 0xf4240

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    const-wide/16 v3, 0xa

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    sub-long v3, v13, v1

    add-long/2addr v13, v1

    .line 19
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_9
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzz:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzsk;->zzy:J

    goto :goto_4

    :cond_a
    if-eq v1, v5, :cond_b

    :goto_4
    return-wide v11

    .line 20
    :cond_b
    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzsk;->zzg(J)V

    return-wide v11
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzh:Lcom/google/android/gms/internal/ads/zzrl;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzd()V

    return-void
.end method

.method public final zzc()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzv:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzk()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzw:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzx:J

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzi()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzh:Lcom/google/android/gms/internal/ads/zzrl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzd()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;->zzk()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzw:J

    return-void
.end method
