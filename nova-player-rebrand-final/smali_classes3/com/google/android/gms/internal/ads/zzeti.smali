.class public final Lcom/google/android/gms/internal/ads/zzeti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcdu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzevl;Lcom/google/android/gms/internal/ads/zzfjk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeti;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeti;->zzd:Lcom/google/android/gms/internal/ads/zzcdu;

    return-void
.end method

.method private static final zzd(Landroid/view/WindowInsets;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final zze(IF)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static final zzf(Landroidx/core/graphics/Insets;F)Landroidx/core/graphics/Insets;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 2
    invoke-static {v0, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfax;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfax;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeth;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeth;-><init>(Lcom/google/android/gms/internal/ads/zzeti;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/4 v0, 0x7

    return v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfbg;)Lcom/google/android/gms/internal/ads/zzetj;
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 6
    iget-boolean v6, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move v7, v6

    move-object v6, v0

    goto :goto_1

    :cond_0
    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    const/4 v6, 0x0

    .line 29
    :goto_0
    array-length v11, v0

    if-ge v8, v11, :cond_5

    .line 2
    aget-object v11, v0, v8

    .line 3
    iget-boolean v12, v11, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    .line 4
    iget-object v6, v11, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    const/4 v9, 0x1

    :cond_1
    if-eqz v12, :cond_3

    if-nez v10, :cond_2

    const/4 v7, 0x1

    :cond_2
    const/4 v10, 0x1

    :cond_3
    if-eqz v9, :cond_4

    if-nez v10, :cond_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 6
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzbdz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbdz;->zzd()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 9
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbhe;->zzoV:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v11

    .line 9
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 11
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 12
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    const-string v9, "AdSizeParcelSignal.Source.readOrientationFromManifest"

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v11

    .line 14
    invoke-virtual {v11, v0, v9}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6
    const/4 v11, -0x1

    :goto_2
    if-eqz v8, :cond_7

    .line 15
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzd:Lcom/google/android/gms/internal/ads/zzcdu;

    .line 16
    iget v12, v8, Landroid/util/DisplayMetrics;->density:F

    .line 17
    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/ads/internal/util/zzg;->zzu()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_7
    move v8, v5

    move v13, v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 20
    :goto_3
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zzoS:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v15

    .line 20
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 p1, 0x0

    const/16 v0, 0x1c

    const/16 v4, 0x22

    const/16 v2, 0x1e

    const-string v5, "window"

    if-eqz v15, :cond_9

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v15, v4, :cond_9

    if-lt v15, v0, :cond_9

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 22
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_9

    if-lt v15, v2, :cond_8

    .line 23
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 25
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_4

    .line 114
    :cond_8
    new-instance v8, Landroid/graphics/Point;

    .line 26
    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 27
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 28
    iget v13, v8, Landroid/graphics/Point;->x:I

    .line 29
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 25
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    iget-object v15, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v15, :cond_12

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    array-length v2, v15

    const-string v10, "|"

    if-ge v4, v2, :cond_10

    .line 32
    aget-object v2, v15, v4

    move-object/from16 v18, v3

    .line 33
    iget-boolean v3, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v3, :cond_a

    const/16 v16, 0x1

    goto :goto_8

    .line 34
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 35
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_b
    iget v3, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_d

    cmpl-float v3, v12, p1

    if-eqz v3, :cond_c

    .line 37
    iget v3, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-int v3, v3

    goto :goto_6

    :cond_c
    move v3, v10

    .line 38
    :cond_d
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v3, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v10, -0x2

    if-ne v3, v10, :cond_f

    cmpl-float v3, v12, p1

    if-eqz v3, :cond_e

    .line 41
    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-int v3, v2

    goto :goto_7

    :cond_e
    move v3, v10

    .line 42
    :cond_f
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v18

    goto :goto_5

    :cond_10
    move-object/from16 v18, v3

    if-eqz v16, :cond_13

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    const-string v3, "320x50"

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    move-object/from16 v18, v3

    :cond_13
    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzetj;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x23

    if-lt v4, v10, :cond_1f

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbhe;->zzoM:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v14

    .line 47
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_16

    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zzoN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v14

    .line 47
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_16

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    :cond_14
    :goto_b
    move-object/from16 v20, v6

    :cond_15
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 128
    :cond_16
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbhe;->zzoQ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v14

    .line 49
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_17

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 50
    invoke-virtual {v14, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    if-nez v15, :cond_19

    :cond_17
    move-object/from16 v17, v0

    :cond_18
    move-object/from16 v19, v3

    goto :goto_d

    :cond_19
    move-object/from16 v17, v0

    const/16 v0, 0x1e

    if-lt v4, v0, :cond_18

    .line 51
    invoke-static {v15}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 53
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 54
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 55
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    if-eqz v14, :cond_18

    move-object/from16 v19, v3

    .line 56
    iget v3, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v15, v3, :cond_14

    if-le v0, v14, :cond_1a

    goto :goto_b

    .line 50
    :cond_1a
    :goto_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 58
    sget-object v3, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 59
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    if-eqz v14, :cond_1b

    .line 60
    invoke-static {v14}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v14

    .line 61
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v14

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 64
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    .line 65
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline6;->m()I

    move-result v3

    or-int/2addr v0, v3

    .line 66
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v3

    or-int/2addr v0, v3

    .line 67
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline2;->m()I

    move-result v3

    or-int/2addr v0, v3

    .line 68
    invoke-static {v14, v0}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v3

    :cond_1b
    move-object/from16 v20, v6

    goto/16 :goto_e

    .line 95
    :cond_1c
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbhe;->zzoN:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v10

    .line 71
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 72
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline6;->m()I

    move-result v3

    invoke-static {v14, v3}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v3

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbhe;->zzoO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v10

    .line 74
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 75
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1b

    .line 76
    invoke-static {v0}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v10, 0x0

    .line 77
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v14

    const/4 v10, 0x1

    .line 78
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v15

    move-object/from16 v20, v6

    const/4 v10, 0x3

    .line 79
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v6

    const/4 v10, 0x2

    .line 80
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v0

    if-lt v8, v13, :cond_1d

    .line 81
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 82
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 83
    iget v6, v3, Landroidx/core/graphics/Insets;->left:I

    iget v14, v3, Landroidx/core/graphics/Insets;->top:I

    .line 84
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v14, v3, Landroidx/core/graphics/Insets;->right:I

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    .line 85
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 83
    invoke-static {v6, v10, v14, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v3

    goto :goto_e

    .line 86
    :cond_1d
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 87
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    iget v10, v3, Landroidx/core/graphics/Insets;->left:I

    .line 89
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v3, Landroidx/core/graphics/Insets;->top:I

    iget v14, v3, Landroidx/core/graphics/Insets;->right:I

    .line 90
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    .line 88
    invoke-static {v6, v10, v0, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 69
    :goto_e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzoP:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 91
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-ge v8, v13, :cond_1e

    .line 93
    iget v0, v3, Landroidx/core/graphics/Insets;->left:I

    iget v6, v3, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 94
    iget v6, v3, Landroidx/core/graphics/Insets;->top:I

    iget v3, v3, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v6, v0, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 95
    :cond_1e
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zzf(Landroidx/core/graphics/Insets;F)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto/16 :goto_10

    :cond_1f
    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    const/16 v0, 0x22

    if-gt v4, v0, :cond_15

    const/16 v0, 0x1c

    if-lt v4, v0, :cond_15

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_c

    .line 98
    :cond_20
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    const/16 v3, 0x1e

    if-lt v4, v3, :cond_21

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 99
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_22

    .line 100
    invoke-static {v3}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 102
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v3

    .line 103
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline6;->m()I

    move-result v6

    or-int/2addr v3, v6

    .line 104
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v6

    or-int/2addr v3, v6

    .line 105
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline2;->m()I

    move-result v6

    or-int/2addr v3, v6

    .line 106
    invoke-static {v0, v3}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_f

    .line 108
    :cond_21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzbdz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdz;->zzd()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 109
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 110
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 111
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 112
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 113
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v6

    or-int/2addr v0, v6

    .line 114
    invoke-virtual {v3, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 115
    :cond_22
    :goto_f
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zzf(Landroidx/core/graphics/Insets;F)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 47
    :goto_10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzoR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 116
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0x1f

    if-ge v4, v3, :cond_24

    :cond_23
    :goto_11
    const/4 v14, 0x0

    goto :goto_12

    :cond_24
    cmpl-float v3, v12, p1

    if-nez v3, :cond_25

    goto :goto_11

    .line 129
    :cond_25
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeti;->zzc:Landroid/content/Context;

    .line 118
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_23

    .line 119
    invoke-static {v3}, Landroidx/window/layout/ActivityCompatHelperApi30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzeti$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v3

    const/4 v10, 0x0

    .line 121
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v4

    const/4 v10, 0x1

    .line 122
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v5

    const/4 v10, 0x3

    .line 123
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v6

    const/4 v10, 0x2

    .line 124
    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzeti;->zzd(Landroid/view/WindowInsets;I)I

    move-result v3

    new-instance v10, Lcom/google/android/gms/internal/ads/zzetg;

    .line 125
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zze(IF)I

    move-result v4

    .line 126
    invoke-static {v5, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zze(IF)I

    move-result v5

    .line 127
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zze(IF)I

    move-result v6

    .line 128
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/ads/zzeti;->zze(IF)I

    move-result v3

    invoke-direct {v10, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzetg;-><init>(IIII)V

    move-object v14, v10

    .line 117
    :goto_12
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfjk;->zzr:Z

    move v5, v7

    move-object v10, v9

    move v7, v12

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move v12, v2

    move v9, v8

    move v8, v13

    move-object/from16 v2, v19

    move-object v13, v0

    .line 129
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzetj;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;IZLandroidx/core/graphics/Insets;Lcom/google/android/gms/internal/ads/zzetg;)V

    return-object v2
.end method
