.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjf;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzh:Landroid/app/Activity;

.field private final zzi:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    .line 1
    const-string v3, "6iuDHA2XEqaGCIdpenyLvoYWzHjKpoW5EjYN40bz5Cs="

    const/16 v6, 0x3e

    const-string v2, "YJMz4lZ/SFOXN6kW19UKnvAqcLtndNv4f6er9d24/5MuXcrsMTIC+9Jfbhpe2HMW"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzjf;->zzi:Landroid/view/View;

    iput-object p8, v0, Lcom/google/ads/interactivemedia/v3/internal/zzjf;->zzh:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjf;->zzi:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjf;->zzh:Landroid/app/Activity;

    const/4 v5, 0x3

    .line 3
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const/4 v4, 0x2

    aput-object v1, v5, v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 4
    monitor-enter v3

    .line 5
    :try_start_0
    aget-object v5, v1, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzP(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 6
    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzQ(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    if-eqz v2, :cond_1

    .line 7
    aget-object v0, v1, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzR(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
