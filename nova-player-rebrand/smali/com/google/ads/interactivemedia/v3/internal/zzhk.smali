.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzhk;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzhj;


# static fields
.field protected static volatile zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;


# instance fields
.field protected zzb:Landroid/view/MotionEvent;

.field protected final zzc:Ljava/util/LinkedList;

.field protected zzd:J

.field protected zze:J

.field protected zzf:J

.field protected zzg:J

.field protected zzh:J

.field protected zzi:J

.field protected zzj:J

.field protected zzk:D

.field protected zzl:F

.field protected zzm:F

.field protected zzn:F

.field protected zzo:F

.field protected zzp:Z

.field protected zzq:Landroid/util/DisplayMetrics;

.field protected zzr:Lcom/google/ads/interactivemedia/v3/internal/zzin;

.field private zzs:D

.field private zzt:D

.field private zzu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzc:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzd:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zze:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzf:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzg:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzh:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzi:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzu:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp:Z

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zza()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzq:Landroid/util/DisplayMetrics;

    .line 4
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzu:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzin;

    .line 6
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzin;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private final zzo()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzh:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzd:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zze:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzf:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzg:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzi:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzj:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    return-void
.end method

.method private final zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v7

    .line 2
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 4
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    const-string v10, "be"

    move-object v11, v9

    move-object/from16 v16, v10

    goto :goto_1

    :cond_1
    move-object v11, v8

    move-object/from16 v16, v11

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_2

    .line 7
    :try_start_0
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iput-boolean v9, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzu:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x3ea

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    move v3, v12

    goto :goto_5

    :cond_2
    if-ne v2, v10, :cond_3

    .line 5
    :try_start_2
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzc(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    move-result-object v0

    const/16 v3, 0x3f0

    :goto_2
    move-object v8, v0

    move v0, v3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v1, v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzt;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    move-result-object v0

    const/16 v3, 0x3e8

    goto :goto_2

    :goto_3
    if-eqz v7, :cond_4

    if-eqz v11, :cond_4

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sub-long v14, v3, v5

    const/4 v13, -0x1

    const/16 v17, 0x0

    move v3, v12

    move v12, v0

    .line 9
    :try_start_3
    invoke-virtual/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move v3, v12

    :goto_4
    move-object/from16 v17, v0

    goto :goto_5

    :cond_4
    move v3, v12

    goto :goto_8

    :goto_5
    if-eqz v7, :cond_7

    if-eqz v11, :cond_7

    if-ne v2, v3, :cond_5

    const/16 v0, 0x3eb

    :goto_6
    move v12, v0

    goto :goto_7

    :cond_5
    if-ne v2, v10, :cond_6

    const/16 v0, 0x3f1

    goto :goto_6

    :cond_6
    const/16 v0, 0x3e9

    move v12, v0

    move v2, v9

    .line 10
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v5

    move-wide v14, v13

    const/4 v13, -0x1

    .line 11
    invoke-virtual/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 12
    :cond_7
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v8, :cond_b

    .line 13
    :try_start_4
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzba;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaB()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_b

    .line 15
    :cond_8
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzba;

    .line 16
    sget-boolean v6, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zza:Z

    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object v0

    move-object/from16 v6, p2

    .line 18
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_e

    if-eqz v11, :cond_e

    if-ne v2, v3, :cond_9

    const/16 v6, 0x3ee

    :goto_9
    move v12, v6

    goto :goto_a

    :cond_9
    if-ne v2, v10, :cond_a

    const/16 v6, 0x3f2

    goto :goto_9

    :cond_a
    const/16 v6, 0x3ec

    goto :goto_9

    .line 19
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v14, v8, v4

    const/4 v13, -0x1

    const/16 v17, 0x0

    .line 20
    invoke-virtual/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x5

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :goto_c
    const/4 v0, 0x7

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_e

    if-eqz v11, :cond_e

    if-ne v2, v3, :cond_c

    const/16 v2, 0x3ef

    :goto_d
    move v12, v2

    goto :goto_e

    :cond_c
    if-ne v2, v10, :cond_d

    const/16 v2, 0x3f3

    goto :goto_d

    :cond_d
    const/16 v2, 0x3ed

    goto :goto_d

    .line 22
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v4

    const/4 v13, -0x1

    .line 23
    invoke-virtual/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_e
    :goto_f
    return-object v0
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzt;)Lcom/google/ads/interactivemedia/v3/internal/zzad;
.end method

.method protected abstract zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/ads/interactivemedia/v3/internal/zzad;
.end method

.method protected abstract zzc(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/ads/interactivemedia/v3/internal/zzad;
.end method

.method protected abstract zzd(Landroid/view/MotionEvent;)Lcom/google/ads/interactivemedia/v3/internal/zzix;
.end method

.method public final zze()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized zzg(Landroid/view/MotionEvent;)V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzu:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzs:D

    sub-double v7, v3, v7

    iget-wide v9, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzt:D

    sub-double v9, v5, v9

    iget-wide v11, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzk:D

    mul-double/2addr v7, v7

    mul-double/2addr v9, v9

    add-double/2addr v7, v9

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v11, v7

    iput-wide v11, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzk:D

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzs:D

    iput-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzt:D

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzk:D

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzs:D

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzt:D

    .line 8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzg:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzg:J

    goto/16 :goto_2

    .line 8
    :cond_4
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zze:J

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    add-int/2addr v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zze:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzd(Landroid/view/MotionEvent;)Lcom/google/ads/interactivemedia/v3/internal/zzix;

    move-result-object p1

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zzd:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zzg:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzi:J

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zzg:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzi:J

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzq:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zze:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zzh:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzj:J

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzix;->zzh:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzj:J
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 13
    :cond_6
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzc:Ljava/util/LinkedList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x6

    if-le p1, v1, :cond_7

    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzf:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzf:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance p1, Ljava/lang/Throwable;

    .line 17
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzn([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzh:J
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 18
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzl:F

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzm:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzn:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzo:F

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzd:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzd:J

    .line 12
    :catch_0
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzh(III)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzo()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzq:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_2

    move/from16 v2, p3

    int-to-long v4, v2

    move/from16 v2, p1

    int-to-float v2, v2

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v2, v0

    move/from16 v2, p2

    int-to-float v2, v2

    mul-float v8, v2, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzb:Landroid/view/MotionEvent;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzj(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzk(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzhk;->zzp(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzm(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzn([Ljava/lang/StackTraceElement;)J
.end method
