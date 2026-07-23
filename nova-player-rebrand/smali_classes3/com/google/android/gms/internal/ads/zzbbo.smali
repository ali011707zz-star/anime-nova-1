.class public final Lcom/google/android/gms/internal/ads/zzbbo;
.super Lcom/google/android/gms/internal/ads/zzbby;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zzh:Ljava/util/List;

.field private final zzi:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;IILandroid/content/Context;)V
    .locals 7

    .line 1
    const-string v3, "NAFu5DHVi3o3yaFx1OCpv/KBsMCIhscKWxn1MzThPRk="

    const/16 v6, 0x1f

    const-string v2, "t0O1yTkaf8U85RYVI/Iw764S7xVo2UnzoC6xqdKHezEduB25T+k9NlupfapwCNk2"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzbak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;II)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzbbo;->zzi:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzq(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzr(J)Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzi:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbak;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbak;->zzb()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbby;->zze:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzq(J)Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbo;->zzh:Ljava/util/List;

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzr(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
