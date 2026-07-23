.class public final Lcom/google/android/gms/internal/ads/zzpm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzna;
.implements Lcom/google/android/gms/internal/ads/zzpn;


# instance fields
.field private zzA:Z

.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpo;

.field private final zzd:Landroid/media/metrics/PlaybackSession;

.field private final zze:J

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zzh:Ljava/util/HashMap;

.field private final zzi:Ljava/util/HashMap;

.field private zzj:Ljava/lang/String;

.field private zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzau;

.field private zzp:Lcom/google/android/gms/internal/ads/zzpl;

.field private zzq:Lcom/google/android/gms/internal/ads/zzpl;

.field private zzr:Lcom/google/android/gms/internal/ads/zzpl;

.field private zzs:Lcom/google/android/gms/internal/ads/zzv;

.field private zzt:Lcom/google/android/gms/internal/ads/zzv;

.field private zzu:Lcom/google/android/gms/internal/ads/zzv;

.field private zzv:Z

.field private zzw:Z

.field private zzx:I

.field private zzy:I

.field private zzz:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdh;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzf:Lcom/google/android/gms/internal/ads/zzbe;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzg:Lcom/google/android/gms/internal/ads/zzbd;

    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzi:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzh:Ljava/util/HashMap;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zze:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzn:I

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpf;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzpf;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;-><init>(Lcom/google/android/gms/internal/ads/zzgru;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    .line 10
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzpo;->zza(Lcom/google/android/gms/internal/ads/zzpn;)V

    return-void
.end method

.method private final zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline48;->m(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zze:J

    sub-long/2addr p2, v0

    .line 2
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_b

    .line 3
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_0

    move p5, p3

    goto :goto_0

    :cond_0
    move p5, v0

    .line 4
    :goto_0
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzn:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 5
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_1
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz p5, :cond_2

    .line 6
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 7
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline11;->m(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_4

    .line 8
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline12;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-eq p5, v1, :cond_5

    .line 9
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-eq p5, v1, :cond_6

    .line 10
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-eq p5, v1, :cond_7

    .line 11
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-eq p5, v1, :cond_8

    .line 12
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    if-eqz p5, :cond_a

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const-string v2, "-"

    .line 14
    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    .line 15
    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_9

    aget-object p5, p5, p3

    goto :goto_1

    :cond_9
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 16
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 17
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_a

    .line 18
    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    iget p2, p4, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_c

    .line 19
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    .line 20
    :cond_b
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 19
    :cond_c
    :goto_2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/TrackChangeEvent;)V

    .line 22
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzg:Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzf:Lcom/google/android/gms/internal/ads/zzbe;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, v1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzd:Lcom/google/android/gms/internal/ads/zzak;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    .line 6
    :goto_0
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline22;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzm:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzk:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzi:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzb()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v4

    .line 8
    invoke-static {v0, v4, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline23;->m(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzb()Z

    move-result p1

    if-eq v3, p1, :cond_6

    move v1, v3

    .line 9
    :cond_6
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline24;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private final zzC()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzz:I

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline36;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzx:I

    .line 2
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline37;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzy:I

    .line 3
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline38;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzh:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzj:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline39;->m(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzi:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzj:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline40;->m(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 9
    :goto_2
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline41;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline42;->m(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzpj;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/PlaybackMetrics;)V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzj:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzz:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzx:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzy:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    return-void
.end method

.method private static zzD(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzE(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzpm;
    .locals 2

    .line 1
    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline34;->m(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpm;

    .line 2
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline35;->m(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzpm;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzpl;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpl;->zzc:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzx(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method

.method private final zzy(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method

.method private final zzz(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline47;->m(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpm;->zzC()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzj:Ljava/lang/String;

    .line 2
    invoke-static {}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline50;->m()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "AndroidXMedia3"

    .line 3
    invoke-static {p2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline27;->m(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "1.9.0-beta01"

    .line 4
    invoke-static {p2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline28;->m(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpm;->zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzj:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpm;->zzC()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzh:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzi:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzde(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;I)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzv:Z

    move p4, p1

    :cond_0
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzl:I

    return-void
.end method

.method public final zzdf(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzwg;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpl;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v4, 0x0

    .line 3
    invoke-interface {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzpo;->zzb(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, v4, p1}, Lcom/google/android/gms/internal/ads/zzpl;-><init>(Lcom/google/android/gms/internal/ads/zzv;ILjava/lang/String;)V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzwg;->zza:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzr:Lcom/google/android/gms/internal/ads/zzpl;

    return-void

    .line 4
    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzq:Lcom/google/android/gms/internal/ads/zzpl;

    return-void

    .line 3
    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    return-void
.end method

.method public final zzdg(Lcom/google/android/gms/internal/ads/zzmy;IJJ)V
    .locals 6

    .line 1
    iget-object p5, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-eqz p5, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    .line 2
    invoke-interface {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zzpo;->zzb(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzi:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzh:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez p6, :cond_0

    move-wide v4, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 6
    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    int-to-long p2, p2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final zzdh(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzin;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzx:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzin;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzx:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzy:I

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzin;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzy:I

    return-void
.end method

.method public final zzdi(Lcom/google/android/gms/internal/ads/zzbb;Lcom/google/android/gms/internal/ads/zzmz;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzc()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzmz;->zzc()I

    move-result v4

    const/16 v5, 0xb

    if-ge v3, v4, :cond_3

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzmz;->zzd(I)I

    move-result v4

    .line 4
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzmz;->zza(I)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object v6

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    .line 5
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzpo;->zzd(Lcom/google/android/gms/internal/ads/zzmy;)V

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzl:I

    .line 6
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzpo;->zze(Lcom/google/android/gms/internal/ads/zzmy;I)V

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    .line 7
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzpo;->zzc(Lcom/google/android/gms/internal/ads/zzmy;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zza(I)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    .line 11
    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/zzpm;->zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)V

    :cond_4
    const/4 v6, 0x2

    .line 12
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_c

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzp()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbn;->zza()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v7

    .line 14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    move v13, v2

    :goto_2
    if-ge v13, v12, :cond_7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 15
    check-cast v14, Lcom/google/android/gms/internal/ads/zzbm;

    move v15, v2

    .line 16
    :goto_3
    iget v5, v14, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    add-int/lit8 v16, v13, 0x1

    if-ge v15, v5, :cond_6

    .line 17
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzbm;->zzc(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzbm;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    move/from16 v13, v16

    const/16 v5, 0xb

    goto :goto_2

    :cond_7
    move-object v5, v10

    :goto_4
    if-eqz v5, :cond_c

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 19
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline25;->m(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v7

    move v12, v2

    :goto_5
    iget v13, v5, Lcom/google/android/gms/internal/ads/zzq;->zzb:I

    if-ge v12, v13, :cond_b

    .line 20
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzp;->zza:Ljava/util/UUID;

    .line 21
    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zzd:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v5, v9

    goto :goto_6

    .line 55
    :cond_8
    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zze:Ljava/util/UUID;

    .line 22
    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move v5, v6

    goto :goto_6

    :cond_9
    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zzc:Ljava/util/UUID;

    .line 23
    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v5, 0x6

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    move v5, v11

    .line 19
    :goto_6
    invoke-static {v7, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline26;->m(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_c
    const/16 v5, 0x3f3

    .line 24
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzz:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzz:I

    :cond_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    const/16 v16, 0x9

    if-nez v5, :cond_e

    goto/16 :goto_d

    .line 85
    :cond_e
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zza:Landroid/content/Context;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzau;->zza:I

    const/16 v12, 0x3e9

    if-ne v8, v12, :cond_10

    const/16 v7, 0x14

    :cond_f
    :goto_7
    move v8, v2

    goto/16 :goto_c

    .line 25
    :cond_10
    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/internal/ads/zziw;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zziw;->zzc:I

    if-ne v13, v11, :cond_11

    move v13, v11

    goto :goto_8

    :cond_11
    move v13, v2

    :goto_8
    iget v12, v12, Lcom/google/android/gms/internal/ads/zziw;->zzg:I

    .line 26
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .line 98
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of v15, v14, Ljava/io/IOException;

    const/16 v17, 0x17

    if-eqz v15, :cond_25

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhs;

    if-eqz v12, :cond_12

    .line 28
    check-cast v14, Lcom/google/android/gms/internal/ads/zzhs;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    move v8, v7

    const/4 v7, 0x5

    goto/16 :goto_c

    :cond_12
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhr;

    if-nez v12, :cond_13

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzat;

    if-eqz v12, :cond_14

    :cond_13
    move v8, v2

    const/16 v7, 0xb

    goto/16 :goto_c

    :cond_14
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhq;

    if-nez v12, :cond_20

    instance-of v13, v14, Lcom/google/android/gms/internal/ads/zzia;

    if-eqz v13, :cond_15

    goto/16 :goto_b

    :cond_15
    const/16 v7, 0x3ea

    if-ne v8, v7, :cond_16

    const/16 v7, 0x15

    goto :goto_7

    .line 33
    :cond_16
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zztg;

    if-eqz v7, :cond_1d

    .line 34
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    instance-of v8, v7, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v8, :cond_17

    .line 36
    check-cast v7, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v7}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzQ(Ljava/lang/String;)I

    move-result v7

    .line 38
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpm;->zzD(I)I

    move-result v8

    :goto_9
    move/from16 v18, v8

    move v8, v7

    move/from16 v7, v18

    goto/16 :goto_c

    .line 39
    :cond_17
    instance-of v8, v7, Landroid/media/MediaDrmResetException;

    if-eqz v8, :cond_18

    const/16 v7, 0x1b

    goto :goto_7

    .line 40
    :cond_18
    instance-of v8, v7, Landroid/media/NotProvisionedException;

    if-eqz v8, :cond_19

    const/16 v7, 0x18

    goto :goto_7

    .line 41
    :cond_19
    instance-of v8, v7, Landroid/media/DeniedByServerException;

    if-eqz v8, :cond_1a

    const/16 v7, 0x1d

    goto :goto_7

    :cond_1a
    instance-of v8, v7, Lcom/google/android/gms/internal/ads/zztq;

    if-eqz v8, :cond_1b

    :goto_a
    move v8, v2

    move/from16 v7, v17

    goto/16 :goto_c

    :cond_1b
    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v7, :cond_1c

    const/16 v7, 0x1c

    goto/16 :goto_7

    :cond_1c
    const/16 v7, 0x1e

    goto/16 :goto_7

    :cond_1d
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zzhn;

    if-eqz v7, :cond_1f

    .line 43
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_1f

    .line 44
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 45
    instance-of v8, v7, Landroid/system/ErrnoException;

    const/16 v12, 0x1f

    if-eqz v8, :cond_1e

    check-cast v7, Landroid/system/ErrnoException;

    iget v7, v7, Landroid/system/ErrnoException;->errno:I

    sget v8, Landroid/system/OsConstants;->EACCES:I

    if-ne v7, v8, :cond_1e

    const/16 v7, 0x20

    goto/16 :goto_7

    :cond_1e
    move v8, v2

    move v7, v12

    goto/16 :goto_c

    :cond_1f
    move v8, v2

    move/from16 v7, v16

    goto/16 :goto_c

    .line 29
    :cond_20
    :goto_b
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzep;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzep;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzep;->zzc()I

    move-result v7

    if-ne v7, v11, :cond_21

    move v8, v2

    move v7, v9

    goto/16 :goto_c

    .line 30
    :cond_21
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 31
    instance-of v8, v7, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_22

    move v8, v2

    const/4 v7, 0x6

    goto/16 :goto_c

    .line 32
    :cond_22
    instance-of v7, v7, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_23

    move v8, v2

    const/4 v7, 0x7

    goto/16 :goto_c

    :cond_23
    if-eqz v12, :cond_24

    .line 33
    check-cast v14, Lcom/google/android/gms/internal/ads/zzhq;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzhq;->zzb:I

    if-ne v7, v11, :cond_24

    move v8, v2

    const/4 v7, 0x4

    goto/16 :goto_c

    :cond_24
    move v8, v2

    const/16 v7, 0x8

    goto/16 :goto_c

    :cond_25
    if-eqz v13, :cond_26

    const/16 v7, 0x23

    if-eqz v12, :cond_f

    if-ne v12, v11, :cond_26

    goto/16 :goto_7

    :cond_26
    if-eqz v13, :cond_27

    if-ne v12, v9, :cond_27

    const/16 v7, 0xf

    goto/16 :goto_7

    :cond_27
    if-eqz v13, :cond_28

    if-ne v12, v6, :cond_28

    goto/16 :goto_a

    .line 45
    :cond_28
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zzuq;

    if-eqz v7, :cond_29

    .line 47
    check-cast v14, Lcom/google/android/gms/internal/ads/zzuq;

    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzuq;->zzd:Ljava/lang/String;

    .line 48
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzQ(Ljava/lang/String;)I

    move-result v7

    move v8, v7

    const/16 v7, 0xd

    goto :goto_c

    :cond_29
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zzum;

    const/16 v8, 0xe

    if-eqz v7, :cond_2a

    .line 49
    check-cast v14, Lcom/google/android/gms/internal/ads/zzum;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzum;->zza:I

    goto/16 :goto_9

    .line 50
    :cond_2a
    instance-of v7, v14, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_2b

    move v7, v8

    goto/16 :goto_7

    :cond_2b
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zzrf;

    if-eqz v7, :cond_2c

    .line 51
    check-cast v14, Lcom/google/android/gms/internal/ads/zzrf;

    const/16 v7, 0x11

    goto/16 :goto_7

    :cond_2c
    instance-of v7, v14, Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v7, :cond_2d

    .line 52
    check-cast v14, Lcom/google/android/gms/internal/ads/zzri;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzri;->zza:I

    const/16 v8, 0x12

    goto/16 :goto_9

    .line 53
    :cond_2d
    instance-of v7, v14, Landroid/media/MediaCodec$CryptoException;

    if-eqz v7, :cond_2e

    .line 54
    check-cast v14, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v14}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v7

    .line 55
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpm;->zzD(I)I

    move-result v8

    goto/16 :goto_9

    :cond_2e
    const/16 v7, 0x16

    goto/16 :goto_7

    .line 56
    :goto_c
    invoke-static {}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline51;->m()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzpm;->zze:J

    sub-long v13, v3, v13

    .line 57
    invoke-static {v12, v13, v14}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline29;->m(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    .line 58
    invoke-static {v12, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline30;->m(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v7

    .line 59
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline31;->m(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v7

    .line 60
    invoke-static {v7, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline32;->m(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    .line 61
    invoke-static {v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline33;->m(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {v8, v0, v5}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 62
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    .line 63
    :goto_d
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzp()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v7

    .line 66
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v8

    .line 67
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v5

    if-nez v7, :cond_2f

    if-nez v8, :cond_2f

    if-eqz v5, :cond_32

    move v5, v11

    :cond_2f
    if-nez v7, :cond_30

    .line 68
    invoke-direct {v0, v3, v4, v10, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzx(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_30
    if-nez v8, :cond_31

    .line 69
    invoke-direct {v0, v3, v4, v10, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzy(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_31
    if-nez v5, :cond_32

    .line 70
    invoke-direct {v0, v3, v4, v10, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzz(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_32
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    .line 71
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzw(Lcom/google/android/gms/internal/ads/zzpl;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_33

    .line 72
    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzx(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_33
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzq:Lcom/google/android/gms/internal/ads/zzpl;

    .line 73
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzw(Lcom/google/android/gms/internal/ads/zzpl;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzq:Lcom/google/android/gms/internal/ads/zzpl;

    .line 74
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzy(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzq:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_34
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzr:Lcom/google/android/gms/internal/ads/zzpl;

    .line 75
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzpm;->zzw(Lcom/google/android/gms/internal/ads/zzpl;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzr:Lcom/google/android/gms/internal/ads/zzpl;

    .line 76
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzz(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzr:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_35
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zza:Landroid/content/Context;

    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzep;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzep;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzep;->zzc()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v12, v11

    goto :goto_e

    :pswitch_1
    const/4 v12, 0x7

    goto :goto_e

    :pswitch_2
    const/16 v12, 0x8

    goto :goto_e

    :pswitch_3
    move v12, v9

    goto :goto_e

    :pswitch_4
    const/4 v12, 0x6

    goto :goto_e

    :pswitch_5
    const/4 v12, 0x5

    goto :goto_e

    :pswitch_6
    const/4 v12, 0x4

    goto :goto_e

    :pswitch_7
    move v12, v6

    goto :goto_e

    :pswitch_8
    move/from16 v12, v16

    goto :goto_e

    :pswitch_9
    move v12, v2

    :goto_e
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzn:I

    if-eq v12, v5, :cond_36

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzn:I

    .line 78
    invoke-static {}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline49;->m()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    .line 79
    invoke-static {v5, v12}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline18;->m(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zze:J

    sub-long v7, v3, v7

    .line 80
    invoke-static {v5, v7, v8}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline19;->m(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    .line 81
    invoke-static {v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline20;->m(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzpg;

    invoke-direct {v8, v0, v5}, Lcom/google/android/gms/internal/ads/zzpg;-><init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/NetworkEvent;)V

    .line 82
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    :cond_36
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v5

    if-eq v5, v6, :cond_37

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzv:Z

    :cond_37
    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzmv;

    .line 84
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzmv;->zzI()Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v5

    const/16 v7, 0xa

    if-nez v5, :cond_38

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzw:Z

    goto :goto_f

    .line 85
    :cond_38
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_39

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzw:Z

    .line 86
    :cond_39
    :goto_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v2

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzv:Z

    if-eqz v5, :cond_3a

    const/4 v5, 0x5

    goto :goto_10

    .line 97
    :cond_3a
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzw:Z

    if-eqz v5, :cond_3b

    const/16 v5, 0xd

    goto :goto_10

    :cond_3b
    const/4 v5, 0x4

    if-ne v2, v5, :cond_3c

    const/16 v5, 0xb

    goto :goto_10

    :cond_3c
    const/16 v8, 0xc

    if-ne v2, v6, :cond_41

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    if-eqz v2, :cond_3d

    if-eq v2, v6, :cond_3d

    if-ne v2, v8, :cond_3e

    :cond_3d
    move v5, v6

    goto :goto_10

    .line 87
    :cond_3e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v5, 0x7

    goto :goto_10

    .line 88
    :cond_3f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v2

    if-eqz v2, :cond_40

    move v5, v7

    goto :goto_10

    :cond_40
    const/4 v5, 0x6

    goto :goto_10

    :cond_41
    if-ne v2, v9, :cond_44

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_10

    .line 90
    :cond_42
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v2

    if-eqz v2, :cond_43

    move/from16 v5, v16

    goto :goto_10

    :cond_43
    move v5, v9

    goto :goto_10

    :cond_44
    if-ne v2, v11, :cond_45

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    if-eqz v2, :cond_45

    move v5, v8

    goto :goto_10

    :cond_45
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    .line 86
    :goto_10
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    if-eq v2, v5, :cond_46

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzA:Z

    .line 91
    invoke-static {}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline52;->m()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzm:I

    .line 92
    invoke-static {v2, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline43;->m(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzpm;->zze:J

    sub-long/2addr v3, v5

    .line 93
    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline44;->m(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    .line 94
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline45;->m(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzb:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzph;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Lcom/google/android/gms/internal/ads/zzpm;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 95
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_46
    const/16 v2, 0x404

    .line 96
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zzb(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpm;->zzc:Lcom/google/android/gms/internal/ads/zzpo;

    .line 97
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmz;->zza(I)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzpo;->zzg(Lcom/google/android/gms/internal/ads/zzmy;)V

    :cond_47
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zze(Lcom/google/android/gms/internal/ads/zzmy;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzna$-CC;->$default$zze(Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzmy;I)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzau;)V
    .locals 0

    .line 0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzk(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzna$-CC;->$default$zzk(Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V

    return-void
.end method

.method public synthetic zzl(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzna$-CC;->$default$zzl(Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V

    return-void
.end method

.method public synthetic zzm(Lcom/google/android/gms/internal/ads/zzmy;IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzna$-CC;->$default$zzm(Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzmy;IJ)V

    return-void
.end method

.method public synthetic zzo(Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/Object;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzna$-CC;->$default$zzo(Lcom/google/android/gms/internal/ads/zzna;Lcom/google/android/gms/internal/ads/zzmy;Ljava/lang/Object;J)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzpl;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzb:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzc:I

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpl;->zzc:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpl;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzpl;-><init>(Lcom/google/android/gms/internal/ads/zzv;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzp:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_0
    return-void
.end method

.method final synthetic zzr(Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline16;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method

.method final synthetic zzs(Landroid/media/metrics/NetworkEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method

.method final synthetic zzt(Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method final synthetic zzu(Landroid/media/metrics/TrackChangeEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline46;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method final synthetic zzv(Landroid/media/metrics/PlaybackMetrics;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$$ExternalSyntheticApiModelOutline21;->m(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method
