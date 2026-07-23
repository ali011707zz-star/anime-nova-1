.class public final Lcom/google/android/gms/internal/ads/zzacz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabv;

.field private final zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/internal/ads/zzacv;

.field private zzd:Z

.field private zze:Landroid/view/Surface;

.field private zzf:F

.field private zzg:F

.field private zzh:F

.field private zzi:F

.field private zzj:I

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    return-void
.end method

.method private final zzj()V
    .locals 4

    .line 0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzm:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzq:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:J

    return-void
.end method

.method private final zzk()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzc()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzg()F

    move-result v2

    goto :goto_0

    .line 5
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:F

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzc()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zze()J

    move-result-wide v0

    const-wide v4, 0x12a05f200L

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    const v3, 0x3dcccccd    # 0.1f

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:F

    sub-float v0, v2, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    if-nez v5, :cond_6

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 4
    :cond_6
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:F

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final zzl(Z)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:F

    mul-float/2addr v1, v0

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    :cond_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zza(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final zzm()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zza(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(Z)V

    return-void
.end method

.method public final zzb()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzj()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:Landroid/content/Context;

    const-string v1, "display"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_1

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzacy;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzacy;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    .line 7
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzacw;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzacw;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VideoFrameReleaseHelper"

    const-string v3, "Vsync sampling disabled due to platform error"

    .line 5
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacv;->zza()V

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(Z)V

    return-void
.end method

.method public final zzc(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzm()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zze:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(Z)V

    return-void
.end method

.method public final zzd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzj()V

    return-void
.end method

.method public final zze(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(Z)V

    return-void
.end method

.method public final zzf(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabv;->zza()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzk()V

    return-void
.end method

.method public final zzg(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzn:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzq:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzo:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzr:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzp:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzs:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzm:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabv;->zzb(J)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzk()V

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzb()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzm()V

    return-void
.end method

.method public final zzi(JJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 1
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzq:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabv;->zzc()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabv;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzm:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzq:J

    sub-long/2addr v5, v7

    mul-long/2addr v3, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:F

    :goto_0
    long-to-float v3, v3

    div-float/2addr v3, v5

    float-to-long v3, v3

    goto :goto_1

    .line 7
    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzs:J

    sub-long v3, v1, v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:F

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    goto :goto_0

    .line 2
    :goto_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzr:J

    add-long/2addr v5, v3

    sub-long v3, p1, v5

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v7, 0x1312d00

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzj()V

    :cond_1
    move-wide/from16 v5, p1

    :cond_2
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzm:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzn:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzo:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzp:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    if-nez v1, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzacv;->zzc:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    .line 5
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzacv;->zzd:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v1, v7

    if-eqz v9, :cond_a

    cmp-long v7, v3, v7

    if-eqz v7, :cond_a

    sub-long v7, v5, v1

    .line 6
    div-long/2addr v7, v3

    mul-long/2addr v7, v3

    add-long/2addr v1, v7

    cmp-long v7, v5, v1

    if-gtz v7, :cond_4

    sub-long v7, v1, v3

    goto :goto_2

    :cond_4
    add-long v7, v1, v3

    move-wide/from16 v16, v7

    move-wide v7, v1

    move-wide/from16 v1, v16

    :goto_2
    const-wide/16 v9, 0x2

    div-long v9, v3, v9

    sub-long v11, v1, v5

    sub-long/2addr v5, v7

    sub-long v13, v11, v5

    .line 7
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v9, v13, v9

    if-gez v9, :cond_8

    const-wide/16 v9, 0x4

    div-long v9, v3, v9

    cmp-long v13, v13, v9

    if-gez v13, :cond_7

    const-wide/16 p1, 0x0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:J

    cmp-long v13, v14, p1

    if-eqz v13, :cond_5

    :goto_3
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:J

    goto :goto_5

    :cond_5
    cmp-long v13, v11, v5

    if-gez v13, :cond_6

    neg-long v9, v9

    :cond_6
    :goto_4
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:J

    move-wide v14, v9

    goto :goto_5

    :cond_7
    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_8
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:J

    goto :goto_3

    :goto_5
    add-long/2addr v11, v14

    cmp-long v5, v11, v5

    if-gez v5, :cond_9

    goto :goto_6

    :cond_9
    move-wide v1, v7

    :goto_6
    const-wide/16 v5, 0x50

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    return-wide v1

    :cond_a
    :goto_7
    return-wide v5
.end method
