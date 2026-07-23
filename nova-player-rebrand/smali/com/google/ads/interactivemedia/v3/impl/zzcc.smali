.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzcc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

.field private final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzuj;Lcom/google/ads/interactivemedia/v3/internal/zzafx;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zza:Landroid/content/Context;

    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzd:J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzafw;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    move-result-object v5

    .line 5
    invoke-virtual {v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzafv;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzafv;

    .line 7
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzafw;

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzafx;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzafw;)Lcom/google/ads/interactivemedia/v3/internal/zzafx;

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    const-string v2, "WebView creation failed"

    .line 2
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zzb(Ljava/lang/Throwable;)Z

    return-void
.end method
