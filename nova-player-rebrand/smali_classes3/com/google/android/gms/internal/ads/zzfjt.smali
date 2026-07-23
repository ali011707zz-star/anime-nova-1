.class final synthetic Lcom/google/android/gms/internal/ads/zzfjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeiu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzeiu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjc;

    .line 1
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjc;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzai:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zza:Lcom/google/android/gms/internal/ads/zzfqk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v4, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzddu;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcks;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcks;->zzaC()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Common configuration cannot be null"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p2, "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler"

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzeiu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeiw;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zze(Lcom/google/android/gms/internal/ads/zzeiw;)V

    return-void
.end method
