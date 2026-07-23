.class final Lcom/google/ads/interactivemedia/v3/internal/zzaee;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzaee;


# instance fields
.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaen;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzadp;

    .line 2
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadp;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaen;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;
    .locals 3

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaen;

    .line 3
    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaen;->zza(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2
.end method
