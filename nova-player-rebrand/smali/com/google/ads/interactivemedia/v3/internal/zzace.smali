.class public final Lcom/google/ads/interactivemedia/v3/internal/zzace;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzace;

.field private static volatile zzd:Lcom/google/ads/interactivemedia/v3/internal/zzace;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;-><init>(Z)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    return-object v0
.end method

.method public static zzb()Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_1
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacm;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzadx;I)Lcom/google/ads/interactivemedia/v3/internal/zzacr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzacd;

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacd;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zze:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacr;

    return-object p1
.end method
