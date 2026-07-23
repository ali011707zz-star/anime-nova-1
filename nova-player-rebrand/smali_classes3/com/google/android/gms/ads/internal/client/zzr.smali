.class public final Lcom/google/android/gms/ads/internal/client/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/internal/client/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:I

.field public final zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

.field public final zzh:Z

.field public final zzi:Z

.field public zzj:Z

.field public zzk:Z

.field public zzl:Z

.field public zzm:Z

.field public zzn:Z

.field public zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1
    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 12

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 4
    aget-object v1, p2, v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzd:Z

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/ads/zzc;->zzf(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/zzc;->zzg(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/zzc;->zzd(Lcom/google/android/gms/ads/AdSize;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    if-eqz v2, :cond_0

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    goto :goto_0

    .line 39
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/ads/zzc;->zzh(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/ads/zzc;->zze(Lcom/google/android/gms/ads/AdSize;)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 10
    :goto_0
    iget v4, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    const/4 v5, -0x2

    if-ne v3, v5, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v0

    .line 17
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz v4, :cond_8

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 21
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v8, 0x258

    if-ge v7, v8, :cond_7

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const-string v8, "window"

    .line 24
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_7

    .line 25
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 26
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 28
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_7

    if-ne v7, v10, :cond_7

    .line 33
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "dimen"

    const-string v10, "android"

    .line 36
    const-string v11, "navigation_bar_width"

    invoke-virtual {v8, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_6

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_3

    :cond_6
    move v8, v0

    :goto_3
    sub-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    goto :goto_5

    .line 32
    :cond_7
    :goto_4
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    .line 38
    :goto_5
    iget v8, v5, Landroid/util/DisplayMetrics;->density:F

    int-to-float v7, v7

    div-float/2addr v7, v8

    float-to-double v7, v7

    double-to-int v9, v7

    int-to-double v10, v9

    sub-double/2addr v7, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v7, v7, v10

    if-ltz v7, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 37
    :cond_8
    iget v9, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    invoke-static {v5, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzu(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    .line 40
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/client/zzr;->zze(Landroid/util/DisplayMetrics;)I

    move-result v7

    goto :goto_7

    .line 44
    :cond_a
    iget v7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 41
    :goto_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v5, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzu(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    const-string v5, "x"

    const-string v8, "_as"

    if-nez v4, :cond_f

    if-eqz v3, :cond_b

    goto :goto_a

    .line 47
    :cond_b
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_d

    .line 43
    const-string v1, "320x50_mb"

    :goto_8
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    goto :goto_b

    .line 44
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    goto :goto_b

    .line 47
    :cond_e
    :goto_9
    iget v1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 42
    :cond_f
    :goto_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 45
    :goto_b
    array-length v1, p2

    if-le v1, v6, :cond_10

    new-array v1, v1, [Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    move v1, v0

    .line 46
    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 47
    aget-object v4, p2, v1

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    :cond_11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzd:Z

    iput p5, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    iput-boolean p10, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    iput-boolean p11, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzk:Z

    iput-boolean p12, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzl:Z

    iput-boolean p13, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    iput-boolean p14, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    iput-boolean p15, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    return-void
.end method

.method public static zza(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzr;->zze(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static zzb()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "320x50_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "reward_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v1, "interstitial_mb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/zzr;ZZZZZZZZ)V

    return-object v0
.end method

.method private static zze(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_1

    const/16 p0, 0x32

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 3
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    .line 4
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzd:Z

    .line 5
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 6
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    .line 7
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzh:Z

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 10
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    .line 11
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xc

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzk:Z

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzl:Z

    .line 13
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xe

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    .line 14
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xf

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x10

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    .line 16
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
