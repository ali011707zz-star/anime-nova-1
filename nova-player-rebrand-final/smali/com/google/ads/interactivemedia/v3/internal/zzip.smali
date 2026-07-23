.class final Lcom/google/ads/interactivemedia/v3/internal/zzip;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzop;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zznh;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zznt;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzio;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzje;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zziw;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zznh;Lcom/google/ads/interactivemedia/v3/internal/zznt;Lcom/google/ads/interactivemedia/v3/internal/zzjc;Lcom/google/ads/interactivemedia/v3/internal/zzio;Lcom/google/ads/interactivemedia/v3/internal/zzhy;Lcom/google/ads/interactivemedia/v3/internal/zzje;Lcom/google/ads/interactivemedia/v3/internal/zziw;Lcom/google/ads/interactivemedia/v3/internal/zzin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznh;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzje;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzin;

    return-void
.end method

.method private final zze()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zza:Lcom/google/ads/interactivemedia/v3/internal/zznh;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zznt;

    .line 2
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzba;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zza()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzc()Z

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "gv"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v3, "int"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzb()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "attts"

    .line 8
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v1

    const-string v3, "att"

    .line 10
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzbn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzbn;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attkid"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzio;->zza()Z

    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    .line 14
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zze()J

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzd()J

    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzf()J

    move-result-wide v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzg()J

    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzi()J

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tchv"

    .line 20
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzh()J

    move-result-wide v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tphv"

    .line 22
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzj()J

    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzk()J

    move-result-wide v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhy;->zzc()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "nt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzje;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzje;->zzc()J

    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "vs"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzje;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method final zza(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zzb()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zze()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzin;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zze()Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "vst"

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzin;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final zzd()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zze()Ljava/util/Map;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "lts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
