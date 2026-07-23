.class public final Lcom/google/android/gms/internal/ads/zziw;
.super Lcom/google/android/gms/internal/ads/zzau;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zzc:I

.field public final zzd:Ljava/lang/String;

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zzv;

.field public final zzg:I

.field public final zzh:Lcom/google/android/gms/internal/ads/zzwk;

.field final zzi:Z


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zziw;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;Z)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;Z)V
    .locals 13

    move/from16 v8, p8

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 5
    const-string v0, "Unexpected runtime error"

    move-object/from16 v5, p5

    move/from16 v6, p6

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    if-eqz v8, :cond_5

    if-eq v8, v0, :cond_4

    const/4 v0, 0x2

    if-eq v8, v0, :cond_3

    const/4 v0, 0x3

    if-eq v8, v0, :cond_2

    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    const-string v0, "YES"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3
    :cond_2
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_0

    :cond_3
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_0

    :cond_4
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_0

    :cond_5
    const-string v0, "NO"

    :goto_0
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format_supported="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 4
    const-string v0, "Source error"

    :goto_1
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ": null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v1, v0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move v4, p1

    move-object v2, p2

    move/from16 v3, p4

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v12, p10

    .line 7
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;JZ)V
    .locals 8

    move/from16 v0, p12

    .line 8
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v6, p10

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzau;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz v0, :cond_1

    if-ne p4, p3, :cond_0

    move p4, p3

    move v2, p4

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_0

    :cond_1
    move v2, p3

    .line 9
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    .line 10
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput p4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zziw;->zzd:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zziw;->zze:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zziw;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    move/from16 p1, p8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:I

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziw;->zzh:Lcom/google/android/gms/internal/ads/zzwk;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zziw;->zzi:Z

    return-void
.end method

.method public static zza(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zziw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zziw;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;ZI)Lcom/google/android/gms/internal/ads/zziw;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    if-nez p3, :cond_0

    const/4 p4, 0x4

    :cond_0
    move v8, p4

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v4, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zziw;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;Z)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zziw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zziw;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method final zzd(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zziw;
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzau;->zzb:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zziw;->zzi:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzau;->zza:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zziw;->zzc:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zziw;->zzd:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zziw;->zze:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zziw;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zziw;->zzg:I

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzv;ILcom/google/android/gms/internal/ads/zzwk;JZ)V

    return-object v0
.end method
