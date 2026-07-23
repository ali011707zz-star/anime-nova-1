.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkb;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzh:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 1
    const-string v3, "s+erUKEK0AKg0XrZCH85OEIt0v0u2CGPZAaj/S6Q0Yk="

    const/16 v6, 0x2d

    const-string v2, "ffEAQyBH71yR4B2obQT/Qgb3Fo0ajWwFYmmZt2nfIS2fjNh6ir76IWAmhSUkzxpD"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, v0, Lcom/google/ads/interactivemedia/v3/internal/zzkb;->zzh:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkb;->zzh:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzim;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzim;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzim;->zza:Ljava/lang/Long;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzC(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzim;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzim;->zzc:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v2, 0x2

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzab(I)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzab(I)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
