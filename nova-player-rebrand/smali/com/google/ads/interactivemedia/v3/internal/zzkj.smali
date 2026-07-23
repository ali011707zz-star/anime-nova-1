.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

.field protected final zzb:Ljava/lang/String;

.field protected final zzc:Ljava/lang/String;

.field protected final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

.field protected zze:Ljava/lang/reflect/Method;

.field protected final zzf:I

.field protected final zzg:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzf:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzg:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza()V

    .line 4
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzf:I

    const/high16 v2, -0x80000000

    if-eq v6, v2, :cond_1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzg:I

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long v7, v2, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    invoke-virtual/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract zza()V
.end method
